execute as @s[scores={jumpingCheck=1},tag=!HunterBowInvis] at @s run tag @s add HunterBowUnvis
execute as @s[scores={jumpingCheck=1},tag=!HunterBowInvis] at @s run tag @s add HunterBowInvis

execute as @s[scores={jumpingCheck=1},tag=HunterBowInvis,tag=!HunterBowUnvis] at @s run tag @s remove HunterBowInvis
execute as @s[scores={jumpingCheck=1}] at @s run tag @s remove HunterBowUnvis
execute as @s[scores={jumpingCheck=1}] at @s run effect clear @s invisibility

execute as @s[tag=HunterBowInvis] at @s run effect give @s invisibility 1 0 false
execute as @s[tag=HunterBowInvis] at @s run particle landing_obsidian_tear ~ ~ ~ 0 0 0 0 1 force