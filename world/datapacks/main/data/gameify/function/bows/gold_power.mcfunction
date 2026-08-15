execute as @s at @s store result score @s basenumber run data get entity @s Item.count 1
scoreboard players operation @e[type=armor_stand,tag=TargetTurret,limit=1] turret_attack += @s basenumber
execute as @s at @s run particle item{item:"minecraft:gold_ingot"} ~ ~ ~ 0 0 0 0.02 3 normal
execute as @s at @s run kill @s
