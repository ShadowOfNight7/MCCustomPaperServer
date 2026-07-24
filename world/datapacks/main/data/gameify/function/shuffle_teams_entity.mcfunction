execute as @e[type=zombie] at @s store result score @s random run random value 1..6

execute as @e[scores={random=1..3},type=zombie] at @s run team join Golden
execute as @e[scores={random=4..5},type=zombie] at @s run team join Royal
# execute as @e[scores={random=6},type=zombie] at @s run team join Solace