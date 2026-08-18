tag @s add Untime

execute as @s at @s as @e[type=#impact_projectiles,distance=..20] at @s run data merge entity @s {Motion:[0d,-5d,0d]}
execute as @s at @s as @e[type=#redirectable_projectile,distance=..20] at @s run data merge entity @s {Motion:[0d,-5d,0d]}

execute as @s at @s as @e[type=!#impact_projectiles,type=!#redirectable_projectile,distance=..20] at @s run data merge entity @s {Motion:[0d,0d,0d]}

execute as @s at @s as @e[tag=!Untime,distance=..20] at @s run tp @s @s

tag @s remove Untime