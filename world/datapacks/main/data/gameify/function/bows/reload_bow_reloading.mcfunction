execute as @s at @s store success score @s crossbowCart run clear @s *[custom_data~{cartridge:true}] 1
execute as @s at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["CrossbowReloader"]}
execute as @s at @s run data modify entity @e[type=armor_stand,tag=CrossbowReloader,limit=1] equipment.mainhand set from entity @s SelectedItem
execute as @s at @s if score @s crossbowCart matches 1 run data modify entity @e[type=armor_stand,tag=CrossbowReloader,limit=1] equipment.mainhand.components."minecraft:custom_data".reloads set value 8
execute as @s at @s if score @s crossbowCart matches ..0 run data remove entity @e[type=armor_stand,tag=CrossbowReloader,limit=1] equipment.mainhand.components."minecraft:charged_projectiles"
execute as @s at @s run summon item ~ ~ ~ {Tags:["TheItemCrossbow"],Item:{id:"stone_button"}}
execute as @s at @s if entity @s[nbt={SelectedItem:{components:{"minecraft:charged_projectiles":[{id:"minecraft:arrow"}]}}}] run data modify entity @e[type=item,tag=TheItemCrossbow,limit=1] Item.id set value "minecraft:arrow"
execute as @s at @s if entity @s[nbt={SelectedItem:{components:{"minecraft:charged_projectiles":[{id:"minecraft:spectral_arrow"}]}}}] run data modify entity @e[type=item,tag=TheItemCrossbow,limit=1] Item.id set value "minecraft:spectral_arrow"
execute as @s at @s if entity @s[nbt={SelectedItem:{components:{"minecraft:charged_projectiles":[{id:"minecraft:tipped_arrow"}]}}}] run data modify entity @e[type=item,tag=TheItemCrossbow,limit=1] Item.id set value "minecraft:tipped_arrow"
execute as @s at @s run data modify entity @e[type=item,tag=TheItemCrossbow,limit=1] Item.components set from entity @s SelectedItem.components."minecraft:charged_projectiles"[0].components
execute as @s at @s run tag @e[type=item,tag=TheItemCrossbow] remove TheItemCrossbow
execute as @s at @s run item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=CrossbowReloader,limit=1] weapon.mainhand
execute as @s at @s run kill @e[type=armor_stand,tag=CrossbowReloader]
