execute as @s at @s unless entity @p[distance=..5] run effect give @s invisibility 1 0 false
execute as @s at @s if entity @p[distance=..5] run effect clear @s invisibility