package com.example.scopedcrossbow;

import org.bukkit.ChatColor;
import org.bukkit.Material;
import org.bukkit.Particle;
import org.bukkit.Sound;
import org.bukkit.attribute.Attribute;
import org.bukkit.attribute.AttributeInstance;
import org.bukkit.attribute.AttributeModifier;
import org.bukkit.entity.AbstractArrow;
import org.bukkit.entity.Arrow;
import org.bukkit.entity.Player;
import org.bukkit.event.EventHandler;
import org.bukkit.event.EventPriority;
import org.bukkit.event.Listener;
import org.bukkit.event.block.Action;
import org.bukkit.event.player.PlayerInteractEvent;
import org.bukkit.event.player.PlayerItemHeldEvent;
import org.bukkit.event.player.PlayerQuitEvent;
import org.bukkit.inventory.EquipmentSlot;
import org.bukkit.inventory.ItemStack;
import org.bukkit.inventory.meta.CrossbowMeta;
import org.bukkit.persistence.PersistentDataType;
import org.bukkit.scheduler.BukkitRunnable;
import org.bukkit.util.Vector;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public final class ScopedCrossbowListener implements Listener {

    private static final int RELOAD_TICKS = 25;

    private static final double ARROW_SPEED = 4.0;
    private static final double ARROW_SPREAD = 0.0;

    /*
     * Vanilla player's default walk speed.
     *
     * Lowering this causes Minecraft's normal FOV calculation
     * to visually zoom the player in.
     */
    private static final float ZOOM_WALK_SPEED = 0.035f;
    private static final float DEFAULT_WALK_SPEED = 0.2f;

    private final ScopedCrossbowPlugin plugin;

    private final Map<UUID, Boolean> zooming = new HashMap<>();
    private final Map<UUID, Boolean> reloading = new HashMap<>();

    public ScopedCrossbowListener(ScopedCrossbowPlugin plugin) {
        this.plugin = plugin;
    }

    @EventHandler(priority = EventPriority.HIGHEST)
    public void onInteract(PlayerInteractEvent event) {
        Player player = event.getPlayer();

        // We only care about the main hand.
        if (event.getHand() != EquipmentSlot.HAND) {
            return;
        }

        ItemStack item = player.getInventory().getItemInMainHand();

        if (!isScopedCrossbow(item)) {
            return;
        }

        Action action = event.getAction();

        /*
         * LEFT CLICK = FIRE
         */
        if (action == Action.LEFT_CLICK_AIR ||
                action == Action.LEFT_CLICK_BLOCK) {

            event.setUseItemInHand(org.bukkit.event.Event.Result.DENY);

            fire(player, item);
            return;
        }

        /*
         * RIGHT CLICK = SCOPE
         *
         * SHIFT + RIGHT CLICK = RELOAD
         */
        if (action == Action.RIGHT_CLICK_AIR ||
                action == Action.RIGHT_CLICK_BLOCK) {

            event.setUseItemInHand(org.bukkit.event.Event.Result.DENY);

            if (player.isSneaking()) {
                reload(player);
            } else {
                startZoom(player);
            }
        }
    }

    private void fire(Player player, ItemStack item) {
        CrossbowMeta meta = (CrossbowMeta) item.getItemMeta();

        if (!meta.hasChargedProjectiles()) {
            player.playSound(
                    player.getLocation(),
                    Sound.BLOCK_DISPENSER_FAIL,
                    1.0f,
                    1.0f
            );

            player.sendActionBar(
                    ChatColor.RED + "The crossbow is not loaded."
            );

            return;
        }

        if (Boolean.TRUE.equals(reloading.get(player.getUniqueId()))) {
            return;
        }

        /*
         * Use the first charged projectile.
         */
        ItemStack projectile = meta.getChargedProjectiles().get(0);

        /*
         * Clear the crossbow's vanilla charged state.
         */
        meta.setChargedProjectiles(null);
        item.setItemMeta(meta);

        /*
         * Fire an actual Arrow entity.
         */
        Arrow arrow = player.getWorld().spawnArrow(
                player.getEyeLocation().clone().add(
                        player.getLocation().getDirection().multiply(0.5)
                ),
                player.getLocation().getDirection(),
                (float) ARROW_SPEED,
                (float) ARROW_SPREAD
        );

        arrow.setShooter(player);
        arrow.setPickupStatus(AbstractArrow.PickupStatus.ALLOWED);

        /*
         * Copy a few properties from the loaded projectile.
         */
        if (projectile.getType() == Material.SPECTRAL_ARROW) {
            arrow.setPickupStatus(AbstractArrow.PickupStatus.DISALLOWED);
        }

        /*
         * Crossbow firing sound.
         */
        player.getWorld().playSound(
                player.getLocation(),
                Sound.ITEM_CROSSBOW_SHOOT,
                1.0f,
                1.0f
        );

        /*
         * Small muzzle flash.
         */
        Vector direction = player.getLocation().getDirection();

        player.getWorld().spawnParticle(
                Particle.CRIT,
                player.getEyeLocation().clone().add(direction.multiply(0.8)),
                8,
                0.05,
                0.05,
                0.05,
                0.02
        );
    }

    private void reload(Player player) {
        UUID uuid = player.getUniqueId();

        if (Boolean.TRUE.equals(reloading.get(uuid))) {
            return;
        }

        ItemStack crossbow = player.getInventory().getItemInMainHand();

        if (!isScopedCrossbow(crossbow)) {
            return;
        }

        CrossbowMeta meta = (CrossbowMeta) crossbow.getItemMeta();

        if (meta.hasChargedProjectiles()) {
            player.sendActionBar(
                    ChatColor.YELLOW + "The crossbow is already loaded."
            );
            return;
        }

        /*
         * Vanilla crossbows require an arrow.
         */
        int arrowSlot = findArrow(player);

        if (arrowSlot == -1) {
            player.sendActionBar(
                    ChatColor.RED + "You need an arrow to reload."
            );

            player.playSound(
                    player.getLocation(),
                    Sound.BLOCK_DISPENSER_FAIL,
                    1.0f,
                    1.0f
            );

            return;
        }

        reloading.put(uuid, true);

        player.playSound(
                player.getLocation(),
                Sound.ITEM_CROSSBOW_LOADING_START,
                1.0f,
                1.0f
        );

        player.sendActionBar(
                ChatColor.YELLOW + "Loading crossbow..."
        );

        new BukkitRunnable() {

            @Override
            public void run() {
                reloading.remove(uuid);

                if (!player.isOnline()) {
                    return;
                }

                ItemStack current = player.getInventory().getItemInMainHand();

                if (!isScopedCrossbow(current)) {
                    return;
                }

                CrossbowMeta currentMeta =
                        (CrossbowMeta) current.getItemMeta();

                if (currentMeta.hasChargedProjectiles()) {
                    return;
                }

                /*
                 * Find the arrow again at completion.
                 *
                 * This prevents consuming an arrow if the player
                 * somehow moved/changed inventories during loading.
                 */
                int slot = findArrow(player);

                if (slot == -1) {
                    player.sendActionBar(
                            ChatColor.RED + "Reload cancelled: no arrow."
                    );
                    return;
                }

                /*
                 * Consume exactly one arrow.
                 */
                ItemStack arrows = player.getInventory().getItem(slot);

                if (arrows.getAmount() <= 1) {
                    player.getInventory().setItem(slot, null);
                } else {
                    arrows.setAmount(arrows.getAmount() - 1);
                    player.getInventory().setItem(slot, arrows);
                }

                /*
                 * Store an actual charged projectile in CrossbowMeta.
                 */
                currentMeta.addChargedProjectile(
                        new ItemStack(Material.ARROW)
                );

                current.setItemMeta(currentMeta);

                player.getWorld().playSound(
                        player.getLocation(),
                        Sound.ITEM_CROSSBOW_LOADING_END,
                        1.0f,
                        1.0f
                );

                player.sendActionBar(
                        ChatColor.GREEN + "Crossbow loaded."
                );
            }

        }.runTaskLater(plugin, RELOAD_TICKS);
    }

    private int findArrow(Player player) {
        /*
         * Vanilla crossbows can use arrows from the inventory.
         *
         * Main inventory is checked first.
         */
        for (int slot = 0; slot < 36; slot++) {
            ItemStack item = player.getInventory().getItem(slot);

            if (item != null && item.getType() == Material.ARROW) {
                return slot;
            }
        }

        return -1;
    }

    private void startZoom(Player player) {
        UUID uuid = player.getUniqueId();

        if (Boolean.TRUE.equals(reloading.get(uuid))) {
            return;
        }

        if (Boolean.TRUE.equals(zooming.get(uuid))) {
            stopZoom(player);
            return;
        }

        zooming.put(uuid, true);

        player.setWalkSpeed(ZOOM_WALK_SPEED);

        player.sendActionBar(
                ChatColor.GREEN + "Scope"
        );

        player.playSound(
                player.getLocation(),
                Sound.ITEM_SPYGLASS_USE,
                0.7f,
                1.0f
        );
    }

    private void stopZoom(Player player) {
        UUID uuid = player.getUniqueId();

        if (!Boolean.TRUE.equals(zooming.remove(uuid))) {
            return;
        }

        player.setWalkSpeed(DEFAULT_WALK_SPEED);

        player.playSound(
                player.getLocation(),
                Sound.ITEM_SPYGLASS_STOP_USING,
                0.7f,
                1.0f
        );
    }

    private boolean isScopedCrossbow(ItemStack item) {
        if (item == null || item.getType() != Material.CROSSBOW) {
            return false;
        }

        if (!(item.getItemMeta() instanceof CrossbowMeta meta)) {
            return false;
        }

        Byte value = meta.getPersistentDataContainer().get(
                plugin.getScopedCrossbowKey(),
                PersistentDataType.BYTE
        );

        return value != null && value == (byte) 1;
    }

    @EventHandler
    public void onHeldItemChange(PlayerItemHeldEvent event) {
        /*
         * Don't leave the player zoomed if they switch items.
         */
        Player player = event.getPlayer();

        if (Boolean.TRUE.equals(zooming.get(player.getUniqueId()))) {
            stopZoom(player);
        }
    }

    @EventHandler
    public void onQuit(PlayerQuitEvent event) {
        /*
         * Restore movement speed if the player disconnects while scoped.
         */
        Player player = event.getPlayer();

        if (Boolean.TRUE.equals(zooming.get(player.getUniqueId()))) {
            player.setWalkSpeed(DEFAULT_WALK_SPEED);
        }

        zooming.remove(player.getUniqueId());
        reloading.remove(player.getUniqueId());
    }
}
