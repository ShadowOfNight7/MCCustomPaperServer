execute if items entity @a[tag=Smithing] weapon.offhand *[custom_data~{type:"durability"}] as @s at @s run function gameify:plating/reinforce_durability with entity @s
execute if items entity @a[tag=Smithing] weapon.offhand *[custom_data~{type:"knockback_resist"}] as @s at @s run function gameify:plating/reinforce_knockback with entity @s
execute if items entity @a[tag=Smithing] weapon.offhand *[custom_data~{type:"absorption"}] as @s at @s run function gameify:plating/reinforce_absorption with entity @s
execute if items entity @a[tag=Smithing] weapon.offhand *[custom_data~{type:"health"}] as @s at @s run function gameify:plating/reinforce_health with entity @s
execute if items entity @a[tag=Smithing] weapon.offhand *[custom_data~{type:"speed"}] as @s at @s run function gameify:plating/reinforce_speed with entity @s
execute if items entity @a[tag=Smithing] weapon.offhand *[custom_data~{type:"experience"}] as @s at @s run function gameify:plating/reinforce_experience with entity @s
execute if items entity @a[tag=Smithing] weapon.offhand *[custom_data~{type:"resistance"}] as @s at @s run function gameify:plating/reinforce_resistance with entity @s
execute if items entity @a[tag=Smithing] weapon.offhand *[custom_data~{type:"barrier"}] as @s at @s run function gameify:plating/reinforce_barrier with entity @s
execute if items entity @a[tag=Smithing] weapon.offhand *[custom_data~{type:"blindness"}] as @s at @s run function gameify:plating/reinforce_blindness with entity @s
execute if items entity @a[tag=Smithing] weapon.offhand *[custom_data~{type:"thorns"}] as @s at @s run function gameify:plating/reinforce_thorns with entity @s




#RemoveTHe Offhand Item
summon armor_stand ~ ~ ~ {Invisible:false,Marker:false,Tags:["ReinforceConsume"]}
execute as @e[type=armor_stand,tag=ReinforceConsume] at @s run data modify entity @s equipment.mainhand set from entity @a[tag=Smithing,limit=1] equipment.offhand
execute as @e[type=armor_stand,tag=ReinforceConsume] at @s store result score @s itemStats run data get entity @s equipment.mainhand.count 1
execute as @e[type=armor_stand,tag=ReinforceConsume] at @s if score @s itemStats matches 1 run item replace entity @s weapon.mainhand with air
execute as @e[type=armor_stand,tag=ReinforceConsume] at @s if score @s itemStats matches 2.. store result entity @s equipment.mainhand.count byte 1 run scoreboard players remove @s itemStats 1
execute as @e[type=armor_stand,tag=ReinforceConsume] at @s run item replace entity @a[tag=Smithing] weapon.offhand from entity @s weapon.mainhand
execute as @e[type=armor_stand,tag=ReinforceConsume] at @s run kill @s

#No Reuse
execute as @s at @s on vehicle run data merge entity @s {Item:{components:{custom_data:{plate_applied:1}}}}

#RemoveTheHammer
summon armor_stand ~ ~ ~ {Invisible:false,Marker:false,Tags:["ReinforceConsume"]}
execute as @a[tag=Smithing] at @s if data entity @s SelectedItem.components."minecraft:damage" store result score @s breakingHammer run data get entity @s SelectedItem.components."minecraft:damage"
execute as @a[tag=Smithing] at @s unless data entity @s SelectedItem.components."minecraft:damage" store result score @s breakingHammer run data get entity @s SelectedItem.components."minecraft:max_damage"
execute as @a[tag=Smithing] at @s run scoreboard players add @s breakingHammer 1
execute as @a[tag=Smithing] at @s if score @s breakingHammer matches 5.. if items entity @s weapon.mainhand *[custom_data~{Copper_Hammer:true}] run item replace entity @s weapon.mainhand with air
execute as @a[tag=Smithing] at @s if score @s breakingHammer matches 20.. if items entity @s weapon.mainhand *[custom_data~{Hammer:true}] run item replace entity @s weapon.mainhand with air
execute as @a[tag=Smithing] at @s as @e[type=armor_stand,tag=ReinforceConsume] at @s run data modify entity @s equipment.mainhand set from entity @a[tag=Smithing,limit=1] SelectedItem
execute as @a[tag=Smithing] at @s as @e[type=armor_stand,tag=ReinforceConsume] at @s store result entity @s equipment.mainhand.components."minecraft:damage" int 1 run scoreboard players get @a[tag=Smithing,limit=1] breakingHammer
execute as @e[type=armor_stand,tag=ReinforceConsume] at @s run item replace entity @a[tag=Smithing] weapon.mainhand from entity @s weapon.mainhand
execute as @e[type=armor_stand,tag=ReinforceConsume] at @s run kill @s
