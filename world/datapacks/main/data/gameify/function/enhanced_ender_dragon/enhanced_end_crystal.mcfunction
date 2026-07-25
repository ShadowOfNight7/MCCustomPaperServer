# execute as @e[type=end_crystal] at @s run particle end_rod ~ ~-10 ~ 1.8 30 1.8 0.3 50 force
# execute as @s[nbt={ShowBottom:true}] at @s if entity @p[distance=..10] unless data entity @s beam_target run data merge entity @s {beam_target:[0,0,0]}
# execute as @s[nbt={ShowBottom:true}] at @s unless entity @p[distance=..10] if data entity @s beam_target run data remove entity @s beam_target


# execute as @s[nbt={ShowBottom:true}] at @s unless entity @e[type=marker,distance=..1,tag=EndCrystalMarker] run summon marker ~ ~ ~ {Tags:["EndCrystalMarker"]}
# execute as @s[nbt={ShowBottom:true}] at @s store result entity @s beam_target[0] byte 0.0001 run data get entity @p Pos[0] 10000
# execute as @s[nbt={ShowBottom:true}] at @s store result entity @s beam_target[1] byte 0.0001 run data get entity @p Pos[1] 10000
# execute as @s[nbt={ShowBottom:true}] at @s store result entity @s beam_target[2] byte 0.0001 run data get entity @p Pos[2] 10000

execute as @s[nbt={ShowBottom:true}] at @s positioned ~ ~1 ~ if entity @p[distance=..22] facing entity @p eyes unless entity @p[distance=..1] if block ~ ~0.35 ~ #air positioned ~ ~-1 ~ unless entity @p[distance=..1] positioned ~ ~1 ~ run particle dragon_breath ~ ~ ~ 0 0 0 0.01 2 force
execute as @s[nbt={ShowBottom:true}] at @s positioned ~ ~1 ~ if entity @p[distance=..22] facing entity @p eyes unless entity @p[distance=..1] if block ~ ~0.35 ~ #air positioned ~ ~-1 ~ unless entity @p[distance=..1] positioned ~ ~1 ~ positioned ^ ^ ^0.5 run function gameify:enhanced_ender_dragon/enhanced_end_crystal2 with entity @s

execute as @s[nbt={ShowBottom:true}] at @s positioned ~ ~1 ~ if entity @p[distance=..22] facing entity @p eyes unless entity @p[distance=..1] if block ~ ~0.35 ~ bedrock positioned ~ ~-1 ~ unless entity @p[distance=..1] positioned ~ ~1 ~ run particle dragon_breath ~ ~ ~ 0 0 0 0.01 2 force
execute as @s[nbt={ShowBottom:true}] at @s positioned ~ ~1 ~ if entity @p[distance=..22] facing entity @p eyes unless entity @p[distance=..1] if block ~ ~0.35 ~ bedrock positioned ~ ~-1 ~ unless entity @p[distance=..1] positioned ~ ~1 ~ positioned ^ ^ ^0.5 run function gameify:enhanced_ender_dragon/enhanced_end_crystal2 with entity @s

execute as @s[nbt={ShowBottom:true}] at @s as @e[type=#arrows,distance=..12,tag=!Deflected] run function gameify:enhanced_ender_dragon/deflect_projectile with entity @s
execute as @s[nbt={ShowBottom:true}] at @s as @e[type=snowball,distance=..12,tag=!Deflected] run function gameify:enhanced_ender_dragon/deflect_projectile with entity @s
execute as @s[nbt={ShowBottom:true}] at @s as @e[type=ender_pearl,distance=..12,tag=!Deflected] run function gameify:enhanced_ender_dragon/deflect_projectile with entity @s
execute as @s[nbt={ShowBottom:true}] at @s as @e[type=trident,distance=..12,tag=!Deflected] run function gameify:enhanced_ender_dragon/deflect_projectile with entity @s
execute as @s[nbt={ShowBottom:true}] at @s as @e[type=llama_spit,distance=..12,tag=!Deflected] run function gameify:enhanced_ender_dragon/deflect_projectile with entity @s
execute as @s[nbt={ShowBottom:true}] at @s as @e[type=firework_rocket,distance=..12,tag=!Deflected] run function gameify:enhanced_ender_dragon/deflect_projectile with entity @s
execute as @s[nbt={ShowBottom:true}] at @s as @e[type=fireball,distance=..12,tag=!Deflected] run function gameify:enhanced_ender_dragon/deflect_projectile with entity @s
execute as @s[nbt={ShowBottom:true}] at @s as @e[type=small_fireball,distance=..12,tag=!Deflected] run function gameify:enhanced_ender_dragon/deflect_projectile with entity @s

execute as @s[nbt={ShowBottom:true}] at @s unless entity @e[type=marker,distance=..1,tag=EndCrystalMarker] run summon marker ~ ~ ~ {Tags:['EndCrystalMarker',"AliveEndCrystal"]}