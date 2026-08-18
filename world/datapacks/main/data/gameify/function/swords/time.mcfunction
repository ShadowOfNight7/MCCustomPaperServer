tag @s add Untime

execute as @s at @s as @e[tag=!Untime,distance=..20] at @s run tp @s @s
execute as @s at @s as @e[type=#impact_projectiles,distance=..20] at @s run data merge entity @s {Motion:[0d,-5d,0d]}

tag @s remove Untime