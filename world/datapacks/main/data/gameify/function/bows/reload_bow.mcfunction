execute as @s at @s if items entity @s weapon.mainhand crossbow[custom_data~{is_active:true,reloads:0}] if data entity @s SelectedItem.components."minecraft:charged_projectiles" run function gameify:bows/reload_bow_reloading with entity @s
execute as @s at @s unless items entity @s weapon.mainhand crossbow[custom_data~{reloads:0}] unless data entity @s SelectedItem.components."minecraft:charged_projectiles" run function gameify:bows/reload_bow_shoot with entity @s

# tag @s add OriginCrossbow

# tag @s remove OriginCrossbow