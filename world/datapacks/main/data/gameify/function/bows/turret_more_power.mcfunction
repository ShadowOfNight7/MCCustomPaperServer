execute as @s at @s store result score @s basenumber run data get entity @s Item.count 180
scoreboard players operation @e[type=armor_stand,tag=TargetTurret,limit=1] turret_power += @s basenumber
execute as @s at @s run particle item{item:"minecraft:redstone"} ~ ~ ~ 0 0 0 0.04 18 normal
execute as @s at @s run kill @s