execute as @s at @s run tp @s ^ ^ ^0.8

execute as @s at @s positioned ~ ~-0.5 ~ if entity @p[distance=..1.5] run damage @p[distance=..1.5] 8 magic
execute as @s at @s run particle end_rod ~ ~ ~ 0 0 0 0.03 3 force

execute as @s[scores={time=100..}] at @s run kill @s