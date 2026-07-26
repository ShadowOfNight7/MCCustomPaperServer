tag @s add WitherBeamFocus
execute as @s at @s run kill @s[scores={time=42..}]

execute as @s[scores={time=1}] at @s as @e[type=wither,limit=1,sort=nearest] at @s run spreadplayers ~ ~ 4 10 true @e[tag=WitherBeamFocus]
execute as @s[scores={time=1..20}] at @s run summon area_effect_cloud ~ ~-0.2 ~ {custom_particle:{type:"squid_ink"},Radius:1.5f,Duration:1} 

execute as @s[scores={time=41}] at @s run particle minecraft:squid_ink ~ ~10 ~ 0.5 40 0.5 0.1 4000 normal
execute as @s[scores={time=41}] at @s positioned ~-1 ~-50 ~-1 as @e[type=!#wither_friends,dx=2,dz=2,dy=100] at @s run damage @s 15 magic by @e[type=wither,limit=1,sort=nearest] from @e[type=wither,limit=1,sort=nearest]

tag @s remove WitherBeamFocus