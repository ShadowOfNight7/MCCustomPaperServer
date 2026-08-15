package com.example.scopedcrossbow;

import io.papermc.paper.event.player.PlayerArmSwingEvent;
import org.bukkit.Material;
import org.bukkit.NamespacedKey;
import org.bukkit.Sound;
import org.bukkit.command.Command;
import org.bukkit.command.CommandSender;
import org.bukkit.entity.Arrow;
import org.bukkit.entity.SpectralArrow;
import org.bukkit.inventory.meta.PotionMeta;
import org.bukkit.entity.Player;
import org.bukkit.event.EventHandler;
import org.bukkit.event.EventPriority;
import org.bukkit.event.Listener;
import org.bukkit.event.block.Action;
import org.bukkit.event.player.PlayerDropItemEvent;
import org.bukkit.event.player.PlayerInteractEvent;
import org.bukkit.event.player.PlayerItemHeldEvent;
import org.bukkit.event.player.PlayerQuitEvent;
import org.bukkit.event.player.PlayerSwapHandItemsEvent;
import org.bukkit.inventory.EquipmentSlot;
import org.bukkit.inventory.ItemStack;
import org.bukkit.inventory.meta.CrossbowMeta;
import org.bukkit.persistence.PersistentDataType;
import org.bukkit.plugin.java.JavaPlugin;
import org.bukkit.util.Vector;
import net.kyori.adventure.text.Component;
import net.kyori.adventure.text.format.NamedTextColor;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public final class ScopedCrossbowPlugin extends JavaPlugin
        implements Listener {

    private NamespacedKey scopedKey;

    /*
     * Players currently using the spyglass.
     *
     * We temporarily put a real SPYGLASS in the player's hand.
     * This gives the client the genuine vanilla spyglass zoom effect.
     */
    private final Map<UUID, ScopeState> scopedPlayers = new HashMap<>();

    @Override
    public void onEnable() {
        scopedKey = new NamespacedKey(this, "scoped_crossbow");

        getServer().getPluginManager().registerEvents(this, this);

        if (getCommand("scopedcrossbow") != null) {
            getCommand("scopedcrossbow").setExecutor(this);
        }

        /*
         * Check scoped players every tick.
         *
         * When the player releases right click, vanilla stops using
         * the spyglass. We then restore the original crossbow.
         */
        getServer().getScheduler().runTaskTimer(
                this,
                this::updateScopes,
                1L,
                1L);

        getLogger().info("ScopedCrossbow enabled.");
    }

    @Override
    public void onDisable() {
        for (UUID uuid : List.copyOf(scopedPlayers.keySet())) {
            Player player = getServer().getPlayer(uuid);

            if (player != null) {
                stopScoping(player);
            }
        }

        scopedPlayers.clear();
    }

    /*
     * /scopedcrossbow
     */
    @Override
    public boolean onCommand(
            CommandSender sender,
            Command command,
            String label,
            String[] args) {
        if (!(sender instanceof Player player)) {
            sender.sendMessage("This command can only be used by a player.");
            return true;
        }

        if (!player.hasPermission("scopedcrossbow.give")) {
            player.sendMessage(Component.text("You don't have permission.", NamedTextColor.RED));
            return true;
        }

        player.getInventory().addItem(createScopedCrossbow());

        player.sendMessage(
                Component.text("You received a Scoped Crossbow!", NamedTextColor.GREEN));

        player.sendMessage(
                Component.text("Shift + Right Click: ", NamedTextColor.GRAY)
                        .append(Component.text("reload", NamedTextColor.WHITE)));

        player.sendMessage(
                Component.text("Right Click: ", NamedTextColor.GRAY)
                        .append(Component.text("scope", NamedTextColor.WHITE)));

        player.sendMessage(
                Component.text("Left Click: ", NamedTextColor.GRAY)
                        .append(Component.text("fire", NamedTextColor.WHITE)));

        return true;
    }

    /*
     * Creates the actual custom crossbow.
     */
    private ItemStack createScopedCrossbow() {
        ItemStack crossbow = new ItemStack(Material.CROSSBOW);

        CrossbowMeta meta = (CrossbowMeta) crossbow.getItemMeta();

        if (meta == null) {
            throw new IllegalStateException("Unable to create CrossbowMeta.");
        }

        meta.displayName(
                net.kyori.adventure.text.Component.text("Scoped Crossbow"));

        meta.lore(List.of(
                net.kyori.adventure.text.Component.text(
                        "Shift + Right Click: Reload"),
                net.kyori.adventure.text.Component.text(
                        "Right Click: Scope"),
                net.kyori.adventure.text.Component.text(
                        "Left Click: Fire")));

        meta.getPersistentDataContainer().set(
                scopedKey,
                PersistentDataType.BYTE,
                (byte) 1);

        crossbow.setItemMeta(meta);

        return crossbow;
    }

    /*
     * Checks whether an item is our scoped crossbow.
     */
    private boolean isScopedCrossbow(ItemStack item) {
        if (item == null || item.getType() != Material.CROSSBOW) {
            return false;
        }

        if (!(item.getItemMeta() instanceof CrossbowMeta meta)) {
            return false;
        }

        Byte value = meta.getPersistentDataContainer().get(
                scopedKey,
                PersistentDataType.BYTE);

        return value != null && value == 1;
    }

    /*
     * RIGHT CLICK
     *
     * Shift + Right Click:
     * Let vanilla crossbow behavior happen.
     *
     * Normal Right Click:
     * Cancel normal crossbow firing and enter spyglass mode.
     */
    @EventHandler(priority = EventPriority.HIGHEST)
    public void onInteract(PlayerInteractEvent event) {
        if (event.getHand() == null) {
            return;
        }

        Player player = event.getPlayer();

        /*
         * LEFT CLICK WHILE SCOPED
         *
         * The player is holding a real SPYGLASS at this point, so the
         * normal crossbow item check below would fail.
         *
         * Intercept the left click and fire the saved crossbow instead.
         */
        if (event.getAction() == Action.LEFT_CLICK_AIR
                || event.getAction() == Action.LEFT_CLICK_BLOCK) {

            ScopeState scope = scopedPlayers.get(player.getUniqueId());

            if (scope != null) {
                event.setCancelled(true);
                fire(player, scope);
                return;
            }
        }

        /*
         * Everything below handles the crossbow while not scoped.
         */
        if (event.getAction() != Action.RIGHT_CLICK_AIR
                && event.getAction() != Action.RIGHT_CLICK_BLOCK) {
            return;
        }

        ItemStack item = event.getItem();

        if (!isScopedCrossbow(item)) {
            return;
        }

        if (player.isSneaking()) {
            return;
        }

        event.setUseItemInHand(org.bukkit.event.Event.Result.DENY);

        startScoping(player, event.getHand(), item);
    }

    /*
     * Remove the charged projectile from the crossbow.
     */
    @SuppressWarnings("unused")
    private void clearLoadedProjectile(ItemStack crossbow) {
        if (!(crossbow.getItemMeta() instanceof CrossbowMeta meta)) {
            return;
        }

        if (!meta.hasChargedProjectiles()) {
            return;
        }

        meta.setChargedProjectiles(null);
        crossbow.setItemMeta(meta);
    }

    /*
     * Start the real spyglass zoom.
     */
    private void startScoping(
            Player player,
            EquipmentSlot hand,
            ItemStack crossbow) {
        if (scopedPlayers.containsKey(player.getUniqueId())) {
            return;
        }

        /*
         * Make a defensive copy of the crossbow.
         */
        ItemStack savedCrossbow = crossbow.clone();

        ScopeState state = new ScopeState(
                hand,
                savedCrossbow,
                player.getInventory().getHeldItemSlot());

        scopedPlayers.put(player.getUniqueId(), state);

        /*
         * Temporarily put a real spyglass into the hand.
         *
         * The client therefore gets Minecraft's genuine spyglass
         * zoom overlay and FOV behavior.
         */
        setHandItem(
                player,
                hand,
                new ItemStack(Material.SPYGLASS));

        /*
         * Start the actual item-use state on the server.
         *
         * We schedule this for the next tick so the client has already
         * received the spyglass item.
         */
        getServer().getScheduler().runTask(this, () -> {
            ScopeState current = scopedPlayers.get(player.getUniqueId());

            if (current == state && player.isOnline()) {
                player.startUsingItem(hand);
            }
        });
    }

    /*
     * LEFT CLICK
     *
     * PlayerArmSwingEvent is Paper's arm-swing event and gives us
     * the hand involved in the swing.
     */
    @EventHandler(priority = EventPriority.HIGHEST)
    public void onArmSwing(PlayerArmSwingEvent event) {
        Player player = event.getPlayer();

        /*
         * Scoped shooting is handled by PlayerInteractEvent.
         */
        if (scopedPlayers.containsKey(player.getUniqueId())) {
            event.setCancelled(true);
            return;
        }

        EquipmentSlot hand = event.getHand();

        ItemStack item = getHandItem(player, hand);

        if (!isScopedCrossbow(item)) {
            return;
        }

        if (!isLoaded(item)) {
            return;
        }

        event.setCancelled(true);

        fire(player, hand, item);
    }

    /*
     * Fire a crossbow which is currently in the player's hand.
     */
    private void fire(
            Player player,
            EquipmentSlot hand,
            ItemStack crossbow) {
        if (!isLoaded(crossbow)) {
            player.playSound(
                    player.getLocation(),
                    Sound.BLOCK_NOTE_BLOCK_BASS,
                    0.5f,
                    0.5f);
            return;
        }

        if (!(crossbow.getItemMeta() instanceof CrossbowMeta meta)) {
            return;
        }

        List<ItemStack> projectiles = meta.getChargedProjectiles();

        if (projectiles.isEmpty()) {
            return;
        }

        ItemStack projectileItem = projectiles.get(0);

        fireArrow(player, crossbow, projectileItem);

        /*
         * Consume the loaded projectile.
         */
        meta.setChargedProjectiles(null);
        crossbow.setItemMeta(meta);

        /*
         * Put the updated crossbow back into the player's hand.
         */
        setHandItem(player, hand, crossbow);

        player.playSound(
                player.getLocation(),
                Sound.ITEM_CROSSBOW_SHOOT,
                1.0f,
                1.0f);
    }

    /*
     * Fire while the player is scoped.
     *
     * The real crossbow is temporarily stored in ScopeState while
     * the player is holding the spyglass.
     */
    private void fire(Player player, ScopeState scope) {
        ItemStack crossbow = scope.crossbow;

        if (!isLoaded(crossbow)) {
            return;
        }

        if (!(crossbow.getItemMeta() instanceof CrossbowMeta meta)) {
            return;
        }

        List<ItemStack> projectiles = meta.getChargedProjectiles();

        if (projectiles.isEmpty()) {
            return;
        }

        ItemStack projectileItem = projectiles.get(0);

        fireArrow(player, crossbow, projectileItem);

        meta.setChargedProjectiles(null);
        crossbow.setItemMeta(meta);

        player.playSound(
                player.getLocation(),
                Sound.ITEM_CROSSBOW_SHOOT,
                1.0f,
                1.0f);
    }

    /*
     * Actually create the projectile.
     *
     * The speed is intentionally crossbow-like rather than bow-like.
     */
    private void fireArrow(
            Player player,
            ItemStack weapon,
            ItemStack projectileItem) {

        LocationWithDirection shot = new LocationWithDirection(player);

        /*
         * Normal arrow
         */
        if (projectileItem.getType() == Material.ARROW) {
            Arrow arrow = player.getWorld().spawnArrow(
                    shot.location,
                    shot.direction,
                    3.15f,
                    0.0f);

            arrow.setShooter(player);
            arrow.setWeapon(weapon);
            arrow.setPickupStatus(
                    org.bukkit.entity.AbstractArrow.PickupStatus.ALLOWED);

            return;
        }

        /*
         * Spectral arrow
         */
        if (projectileItem.getType() == Material.SPECTRAL_ARROW) {
            SpectralArrow arrow = player.getWorld().spawnArrow(
                    shot.location,
                    shot.direction,
                    3.15f,
                    0.0f,
                    SpectralArrow.class);

            arrow.setShooter(player);
            arrow.setWeapon(weapon);
            arrow.setPickupStatus(
                    org.bukkit.entity.AbstractArrow.PickupStatus.ALLOWED);

            return;
        }

        /*
         * Tipped arrow
         */
        if (projectileItem.getType() == Material.TIPPED_ARROW) {
            Arrow arrow = player.getWorld().spawnArrow(
                    shot.location,
                    shot.direction,
                    3.15f,
                    0.0f);

            arrow.setShooter(player);
            arrow.setWeapon(weapon);
            arrow.setPickupStatus(
                    org.bukkit.entity.AbstractArrow.PickupStatus.ALLOWED);

            if (projectileItem.getItemMeta() instanceof PotionMeta potionMeta) {

                /*
                 * Copy custom potion effects.
                 */
                for (org.bukkit.potion.PotionEffect effect : potionMeta.getCustomEffects()) {

                    arrow.addCustomEffect(effect, true);
                }

                /*
                 * Copy the base potion type.
                 */
                if (potionMeta.getBasePotionType() != null) {
                    arrow.setBasePotionType(
                            potionMeta.getBasePotionType());
                }
            }

            return;
        }

        /*
         * Fallback.
         */
        Arrow arrow = player.getWorld().spawnArrow(
                shot.location,
                shot.direction,
                3.15f,
                0.0f);

        arrow.setShooter(player);
        arrow.setWeapon(weapon);
        arrow.setPickupStatus(
                org.bukkit.entity.AbstractArrow.PickupStatus.ALLOWED);
    }

    /*
     * Determines whether the crossbow has a projectile.
     */
    private boolean isLoaded(ItemStack item) {
        if (!(item.getItemMeta() instanceof CrossbowMeta meta)) {
            return false;
        }

        return meta.hasChargedProjectiles()
                && !meta.getChargedProjectiles().isEmpty();
    }

    /*
     * Scope maintenance.
     */
    private void updateScopes() {
        if (scopedPlayers.isEmpty()) {
            return;
        }

        for (UUID uuid : List.copyOf(scopedPlayers.keySet())) {
            Player player = getServer().getPlayer(uuid);

            if (player == null || !player.isOnline()) {
                scopedPlayers.remove(uuid);
                continue;
            }

            // ScopeState state = scopedPlayers.get(uuid);

            /*
             * Vanilla has stopped using the spyglass.
             *
             * This normally happens when the player releases right click.
             */
            if (!player.hasActiveItem()) {
                stopScoping(player);
            }
        }
    }

    /*
     * Stop scope and restore the original crossbow.
     */
    private void stopScoping(Player player) {
        ScopeState state = scopedPlayers.remove(player.getUniqueId());

        if (state == null) {
            return;
        }

        player.clearActiveItem();

        /*
         * We don't blindly overwrite an inventory slot.
         *
         * If the player changed their inventory while scoped, put
         * the crossbow back safely.
         */
        ItemStack current = getStoredHandItem(player, state);

        if (current != null && current.getType() == Material.SPYGLASS) {
            setStoredHandItem(player, state, state.crossbow);
        } else {
            player.getInventory().addItem(state.crossbow);
        }
    }

    /*
     * Stop scope if the player changes hotbar slots.
     */
    @EventHandler
    public void onHeldItemChange(PlayerItemHeldEvent event) {
        if (scopedPlayers.containsKey(event.getPlayer().getUniqueId())) {
            stopScoping(event.getPlayer());
        }
    }

    /*
     * Stop scope before hand swapping.
     */
    @EventHandler
    public void onSwapHands(PlayerSwapHandItemsEvent event) {
        if (scopedPlayers.containsKey(event.getPlayer().getUniqueId())) {
            stopScoping(event.getPlayer());
        }
    }

    /*
     * Stop scope before the spyglass can be dropped.
     */
    @EventHandler
    public void onDrop(PlayerDropItemEvent event) {
        if (scopedPlayers.containsKey(event.getPlayer().getUniqueId())) {
            stopScoping(event.getPlayer());
        }
    }

    /*
     * Restore the crossbow when the player leaves.
     */
    @EventHandler
    public void onQuit(PlayerQuitEvent event) {
        stopScoping(event.getPlayer());
    }

    private ItemStack getHandItem(
            Player player,
            EquipmentSlot hand) {
        if (hand == EquipmentSlot.OFF_HAND) {
            return player.getInventory().getItemInOffHand();
        }

        return player.getInventory().getItemInMainHand();
    }

    private void setHandItem(
            Player player,
            EquipmentSlot hand,
            ItemStack item) {
        if (hand == EquipmentSlot.OFF_HAND) {
            player.getInventory().setItemInOffHand(item);
        } else {
            player.getInventory().setItemInMainHand(item);
        }
    }

    private ItemStack getStoredHandItem(
            Player player,
            ScopeState state) {
        if (state.hand == EquipmentSlot.OFF_HAND) {
            return player.getInventory().getItemInOffHand();
        }

        return player.getInventory().getItem(state.hotbarSlot);
    }

    private void setStoredHandItem(
            Player player,
            ScopeState state,
            ItemStack item) {
        if (state.hand == EquipmentSlot.OFF_HAND) {
            player.getInventory().setItemInOffHand(item);
            return;
        }

        player.getInventory().setItem(state.hotbarSlot, item);
    }

    /*
     * Holds the temporarily hidden crossbow while the player is scoped.
     */
    private static final class ScopeState {
        private final EquipmentSlot hand;
        private final ItemStack crossbow;
        private final int hotbarSlot;

        private ScopeState(
                EquipmentSlot hand,
                ItemStack crossbow,
                int hotbarSlot) {
            this.hand = hand;
            this.crossbow = crossbow;
            this.hotbarSlot = hotbarSlot;
        }
    }

    /*
     * Small helper so the arrow starts at the player's eye position.
     */
    private static final class LocationWithDirection {
        private final org.bukkit.Location location;
        private final Vector direction;

        private LocationWithDirection(Player player) {
            this.location = player.getEyeLocation().clone();
            this.direction = this.location.getDirection().normalize();

            /*
             * Move the projectile slightly forward so it doesn't
             * collide with the player's own hitbox.
             */
            this.location.add(
                    this.direction.clone().multiply(0.35));
        }
    }
}
