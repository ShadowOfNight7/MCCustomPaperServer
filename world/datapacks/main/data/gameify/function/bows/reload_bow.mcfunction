execute as @s at @s store result score @s crossbowReloads run data get entity @s SelectedItem.components."minecraft:custom_data".reloads
execute as @s at @s if items entity @s weapon.mainhand crossbow[custom_data~{is_active:true}] if score @s crossbowReloads matches ..0 if data entity @s SelectedItem.components."minecraft:charged_projectiles" run function gameify:bows/reload_bow_reloading with entity @s
execute as @s at @s if score @s crossbowReloads matches 1.. unless data entity @s SelectedItem.components."minecraft:charged_projectiles" run function gameify:bows/reload_bow_shoot with entity @s

execute as @s at @s store result score @s crossbowReloads run data get entity @s equipment.offhand.components."minecraft:custom_data".reloads
execute as @s at @s if items entity @s weapon.offhand crossbow[custom_data~{is_active:true}] if score @s crossbowReloads matches ..0 if data entity @s equipment.offhand.components."minecraft:charged_projectiles" run function gameify:bows/reload_bow_reloading_offhand with entity @s
execute as @s at @s if score @s crossbowReloads matches 1.. unless data entity @s equipment.offhand.components."minecraft:charged_projectiles" run function gameify:bows/reload_bow_shoot_offhand with entity @s

