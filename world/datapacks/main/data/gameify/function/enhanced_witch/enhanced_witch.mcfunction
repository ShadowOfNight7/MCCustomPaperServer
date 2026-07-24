tag @s add WitchMarker
execute as @s at @s on target run tag @s add WitchTarget
execute as @s at @s store result score @s random run random value 1..100
execute as @s at @s as @e[type=bat,distance=..30] at @s if score @e[tag=WitchMarker,limit=1] random matches 1..10 as @p[distance=..2.5] at @s run effect give @s slowness 10 3 false 
execute as @s at @s as @e[type=bat,distance=..30] at @s if score @e[tag=WitchMarker,limit=1] random matches 11..20 as @p[distance=..2.5] at @s run effect give @s poison 10 3 false 
execute as @s at @s as @e[type=bat,distance=..30] at @s if score @e[tag=WitchMarker,limit=1] random matches 21..30 as @p[distance=..2.5] at @s run effect give @s instant_damage 1 1 false 
execute as @s at @s as @e[type=bat,distance=..30] at @s if score @e[tag=WitchMarker,limit=1] random matches 31..40 as @p[distance=..2.5] at @s run effect give @s weakness 10 3 false 
execute as @s at @s as @e[type=bat,distance=..30] at @s if score @e[tag=WitchMarker,limit=1] random matches 41..50 as @p[distance=..2.5] at @s run effect give @s nausea 10 3 false 
execute as @s at @s as @e[type=bat,distance=..30] at @s if score @e[tag=WitchMarker,limit=1] random matches 51..60 as @p[distance=..2.5] at @s run effect give @s wither 10 3 false 
execute as @s at @s as @e[type=bat,distance=..30] at @s if score @e[tag=WitchMarker,limit=1] random matches 61..70 as @p[distance=..2.5] at @s run effect give @s blindness 10 3 false 
execute as @s at @s as @e[type=bat,distance=..30] at @s if score @e[tag=WitchMarker,limit=1] random matches 71..80 as @p[distance=..2.5] at @s run effect give @s darkness 10 3 false 
execute as @s at @s as @e[type=bat,distance=..30] at @s if score @e[tag=WitchMarker,limit=1] random matches 81..90 as @p[distance=..2.5] at @s run effect give @s mining_fatigue 10 3 false 
execute as @s at @s as @e[type=bat,distance=..30] at @s if score @e[tag=WitchMarker,limit=1] random matches 91..100 as @p[distance=..2.5] at @s run effect give @s levitation 2 2 false 
execute as @s at @s as @e[type=bat,distance=..30] at @s if entity @p[distance=..2.5] run kill @s

execute as @s[scores={time=250..}] at @s if entity @e[tag=WitchTarget] run summon bat ~ ~ ~
execute as @s[scores={time=250..}] at @s if entity @e[tag=WitchTarget] run summon bat ~ ~ ~
execute as @s[scores={time=250..}] at @s if entity @e[tag=WitchTarget] run summon bat ~ ~ ~
execute as @s[scores={time=250..}] at @s if entity @e[tag=WitchTarget] run particle smoke ~ ~1 ~ 0 0 0 0.3 10 normal
execute as @s[scores={time=250..}] at @s if entity @e[tag=WitchTarget] run scoreboard players set @s time 100

execute as @s at @s as @e[type=bat,distance=..10] at @s run scoreboard players add @e[tag=WitchMarker] posX 1
execute as @s at @s if score @s posX matches 800.. run effect give @s instant_health 1 0 true
execute as @s at @s if score @s posX matches 800.. run scoreboard players set @s posX 0

execute as @s at @s as @e[type=bat,distance=..8] at @s run effect give @s glowing 1 0 true

tag @s remove WitchMarker
tag @e remove WitchTarget


execute as @s[scores={time=1}] at @s run attribute @s max_health base set 50
execute as @s[scores={time=1}] at @s run effect give @s instant_health 1 10 true
execute as @s[scores={time=1}] at @s run scoreboard players set @s posX 0
