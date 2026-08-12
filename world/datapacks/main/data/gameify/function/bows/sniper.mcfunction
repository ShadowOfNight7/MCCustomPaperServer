
execute as @s as @e[type=#gameify:hostile_mobs,distance=..1] at @s run damage @s 100 arrow by @s from @s
execute as @s positioned ^ ^ ^1 if entity @e[type=arrow,nbt={weapon:{components:{"minecraft:custom_data":{sniper:true}}}},scores={time=1},distance=..200] run function gameify:bows/sniper with entity @s
