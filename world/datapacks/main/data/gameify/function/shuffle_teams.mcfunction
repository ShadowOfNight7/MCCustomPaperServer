execute as @a at @s store result score @s random run random value 1..5

execute as @a[scores={random=1..3}] at @s run team join Golden
execute as @a[scores={random=4..5}] at @s run team join Royal

execute as @a at @s store result score @s random run random value 1..5

execute as @a[scores={random=4..5}] at @s run tag @s add Solace