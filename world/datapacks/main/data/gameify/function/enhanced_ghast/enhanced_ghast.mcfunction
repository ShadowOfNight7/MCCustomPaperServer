execute as @s at @s as @e[type=fireball,distance=..20] at @s run data merge entity @s {ExplosionPower:2b}
execute as @s at @s as @e[type=fireball,distance=..20] at @s run data merge entity @s {acceleration_power:0.3d}

execute as @s[scores={time=1}] at @s run attribute @s follow_range base set 200
execute as @s[scores={time=1}] at @s run attribute @s tempt_range base set 200