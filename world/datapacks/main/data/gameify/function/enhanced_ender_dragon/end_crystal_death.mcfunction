execute as @s at @s unless entity @e[type=end_crystal,nbt={ShowBottom:1b},distance=..1] if entity @s[tag=AliveEndCrystal] in the_end positioned 0 100 0 run function gameify:enhanced_ender_dragon/enhanced_eye with entity @s
execute as @s at @s unless entity @e[type=end_crystal,nbt={ShowBottom:1b},distance=..1] if entity @s[tag=AliveEndCrystal] in the_end positioned 0 100 0 run function gameify:enhanced_ender_dragon/enhanced_eye with entity @s
execute as @s at @s unless entity @e[type=end_crystal,nbt={ShowBottom:1b},distance=..1] if entity @s[tag=AliveEndCrystal] in the_end positioned 0 100 0 run function gameify:enhanced_ender_dragon/enhanced_eye with entity @s
execute as @s at @s unless entity @e[type=end_crystal,nbt={ShowBottom:1b},distance=..1] if entity @s[tag=AliveEndCrystal] in the_end positioned 0 100 0 run function gameify:enhanced_ender_dragon/enhanced_eye with entity @s
execute as @s at @s unless entity @e[type=end_crystal,nbt={ShowBottom:1b},distance=..1] if entity @s[tag=AliveEndCrystal] in the_end positioned 0 100 0 run function gameify:enhanced_ender_dragon/enhanced_eye with entity @s

execute as @s at @s unless entity @e[type=end_crystal,nbt={ShowBottom:1b},distance=..1] if entity @s[tag=AliveEndCrystal] run tag @s remove AliveEndCrystal
execute as @s at @s if entity @e[type=end_crystal,nbt={ShowBottom:1b},distance=..1] unless entity @s[tag=AliveEndCrystal] run tag @s add AliveEndCrystal

execute as @s[tag=!AliveEndCrystal] at @s run scoreboard players add @s random 1
execute as @s[tag=!AliveEndCrystal,scores={random=8800}] at @s run tellraw @a ["An end crystal is about to regenerate!"]
# execute as @e[type=end_crystal] at @s run particle end_rod ~ ~-10 ~ 1.8 30 1.8 0.3 50 force
execute as @s[tag=!AliveEndCrystal,scores={random=8800..8999}] at @s run particle end_rod ~ ~-10 ~ 1.8 30 1.8 0.3 50 force
execute as @s[tag=!AliveEndCrystal,scores={random=9000..}] at @s run summon end_crystal ~ ~ ~ {ShowBottom:1b}
execute as @s[tag=!AliveEndCrystal,scores={random=9000..}] run particle end_rod ~ ~ ~ 0 0 0 1 1000 force
execute as @s[tag=!AliveEndCrystal,scores={random=9000..}] run scoreboard players set @s random 0
