execute as @s[scores={time=1}] at @s run attribute @s safe_fall_distance base set 10

execute as @s[scores={time=300..}] at @s run data merge entity @s {Motion:[0d,0.7d,0d]}
execute as @s[scores={time=305..}] at @s run tag @s add Shockwave
execute as @s[scores={time=305..}] at @s run scoreboard players set @s time 100

execute as @s at @s on target run tag @s add RavagerTarget
tag @s add RavagerMarker
execute as @s[tag=Shockwave] at @s if entity @e[tag=RavagerTarget] unless block ~ ~-0.05 ~ #air as @e[distance=..20,type=!item_frame,type=!glow_item_frame,type=!painting,type=!pillager,type=!ravager,type=!vindicator,type=!witch,type=!evoker] at @s unless block ~ ~-0.05 ~ air run damage @s 8 explosion by @e[tag=RavagerMarker,limit=1] from @e[tag=RavagerMarker,limit=1]
execute as @s[tag=Shockwave] at @s if entity @e[tag=RavagerTarget] unless block ~ ~-0.05 ~ #air run particle explosion ~ ~ ~ 0.5 0 0.5 0.1 10 normal
execute as @s[tag=Shockwave] at @s unless block ~ ~-0.05 ~ #air run tag @s remove Shockwave
tag @s remove RavagerMarker
tag @s remove RavagerTarget