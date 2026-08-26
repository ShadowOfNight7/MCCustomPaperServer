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
execute as @s at @s if score @s knightAbility1 matches 10.. run effect give @s absorption 180 9 false

scoreboard players set @s knightAbility1 0

particle flash{color:-1446881} ~ ~1 ~ 0.1 0.1 0.1 0.5 100 force