package com.example.scopedcrossbow;

import org.bukkit.ChatColor;
import org.bukkit.Material;
import org.bukkit.NamespacedKey;
import org.bukkit.command.Command;
import org.bukkit.command.CommandExecutor;
import org.bukkit.command.CommandSender;
import org.bukkit.entity.Player;
import org.bukkit.inventory.ItemStack;
import org.bukkit.inventory.meta.CrossbowMeta;
import org.bukkit.persistence.PersistentDataType;
import org.bukkit.plugin.java.JavaPlugin;

public final class ScopedCrossbowPlugin extends JavaPlugin implements CommandExecutor {

    private NamespacedKey scopedCrossbowKey;

    @Override
    public void onEnable() {
        scopedCrossbowKey = new NamespacedKey(this, "scoped_crossbow");

        getServer().getPluginManager().registerEvents(
                new ScopedCrossbowListener(this),
                this
        );

        getCommand("scopedcrossbow").setExecutor(this);

        getLogger().info("ScopedCrossbow enabled.");
    }

    @Override
    public void onDisable() {
        getLogger().info("ScopedCrossbow disabled.");
    }

    public NamespacedKey getScopedCrossbowKey() {
        return scopedCrossbowKey;
    }

    public ItemStack createScopedCrossbow() {
        ItemStack crossbow = new ItemStack(Material.CROSSBOW);

        CrossbowMeta meta = (CrossbowMeta) crossbow.getItemMeta();

        meta.setDisplayName(ChatColor.DARK_GREEN + "Scoped Crossbow");
        meta.setLore(java.util.List.of(
                ChatColor.GRAY + "Left-click to fire",
                ChatColor.GRAY + "Right-click to scope",
                ChatColor.GRAY + "Shift + right-click to reload"
        ));

        meta.getPersistentDataContainer().set(
                scopedCrossbowKey,
                PersistentDataType.BYTE,
                (byte) 1
        );

        crossbow.setItemMeta(meta);

        return crossbow;
    }

    @Override
    public boolean onCommand(
            CommandSender sender,
            Command command,
            String label,
            String[] args
    ) {
        if (!(sender instanceof Player player)) {
            sender.sendMessage("Only players can use this command.");
            return true;
        }

        player.getInventory().addItem(createScopedCrossbow());

        player.sendMessage(
                ChatColor.GREEN + "You received a Scoped Crossbow."
        );

        return true;
    }
}
