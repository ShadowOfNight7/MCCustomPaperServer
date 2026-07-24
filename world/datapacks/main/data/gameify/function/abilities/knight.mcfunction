scoreboard players set @s cooldown 6000

execute as @s[team=Golden] at @s as @a[team=Golden,distance=..15] at @s run scoreboard players add @s knightAbility1 1
execute as @s[team=Royal] at @s as @a[team=Royal,distance=..15] at @s run scoreboard players add @s knightAbility1 1

execute as @s at @s if score @s knightAbility1 matches 1 run effect give @s absorption 180 0 false
execute as @s at @s if score @s knightAbility1 matches 2 run effect give @s absorption 180 1 false
execute as @s at @s if score @s knightAbility1 matches 3 run effect give @s absorption 180 2 false
execute as @s at @s if score @s knightAbility1 matches 4 run effect give @s absorption 180 3 false
execute as @s at @s if score @s knightAbility1 matches 5 run effect give @s absorption 180 4 false
execute as @s at @s if score @s knightAbility1 matches 6 run effect give @s absorption 180 5 false
execute as @s at @s if score @s knightAbility1 matches 7 run effect give @s absorption 180 6 false
execute as @s at @s if score @s knightAbility1 matches 8 run effect give @s absorption 180 7 false
execute as @s at @s if score @s knightAbility1 matches 9 run effect give @s absorption 180 8 false
execute as @s at @s if score @s knightAbility1 matches 10 run effect give @s absorption 180 9 false
execute as @s at @s if score @s knightAbility1 matches 11 run effect give @s absorption 180 10 false
execute as @s at @s if score @s knightAbility1 matches 12 run effect give @s absorption 180 11 false
execute as @s at @s if score @s knightAbility1 matches 13 run effect give @s absorption 180 12 false
execute as @s at @s if score @s knightAbility1 matches 14 run effect give @s absorption 180 13 false
execute as @s at @s if score @s knightAbility1 matches 15 run effect give @s absorption 180 14 false
execute as @s at @s if score @s knightAbility1 matches 16 run effect give @s absorption 180 15 false
execute as @s at @s if score @s knightAbility1 matches 17 run effect give @s absorption 180 16 false
execute as @s at @s if score @s knightAbility1 matches 18 run effect give @s absorption 180 17 false
execute as @s at @s if score @s knightAbility1 matches 19 run effect give @s absorption 180 18 false
execute as @s at @s if score @s knightAbility1 matches 20 run effect give @s absorption 180 19 false
execute as @s at @s if score @s knightAbility1 matches 21 run effect give @s absorption 180 20 false
execute as @s at @s if score @s knightAbility1 matches 22 run effect give @s absorption 180 21 false
execute as @s at @s if score @s knightAbility1 matches 23 run effect give @s absorption 180 22 false
execute as @s at @s if score @s knightAbility1 matches 24 run effect give @s absorption 180 23 false
execute as @s at @s if score @s knightAbility1 matches 25 run effect give @s absorption 180 24 false

scoreboard players set @s knightAbility1 0
tellraw @s ["You used ",{"text":"Knight's Will","bold":true,"color":"yellow"}, "!"]