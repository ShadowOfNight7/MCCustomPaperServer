scoreboard players set @s cooldown2 2400
tellraw @s ["You used ",{"text":"Subreptio Animae","bold":true,"color":"blue"}, "!"]

# execute as @s at @s positioned 0.001 0.001 0.001 positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["AimingOccult"]}

# execute as @e[tag=AimingOccult] store result score @s posX run data get entity @s Pos[0] 10000
# execute as @e[tag=AimingOccult] store result score @s posY run data get entity @s Pos[1] 10000
# execute as @e[tag=AimingOccult] store result score @s posZ run data get entity @s Pos[2] 10000

execute as @s at @s positioned ^ ^ ^1 run summon marker ~ ~1 ~ {Tags:["SoulBinding","SoulBinding2"]}
execute as @s at @s rotated ~ ~ run rotate @e[tag=SoulBinding2,limit=1,sort=nearest] ~ ~
execute as @s[team=Golden] at @s run tag @e[tag=SoulBinding2] add Goldened
execute as @s[team=Royal] at @s run tag @e[tag=SoulBinding2] add Royaled

tag @e[tag=SoulBinding2] remove SoulBinding2
