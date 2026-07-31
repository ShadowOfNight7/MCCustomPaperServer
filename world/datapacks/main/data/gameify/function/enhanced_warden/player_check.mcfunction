tag @s add enderPearlWarden
execute as @s at @e[tag=WardenMarker] on origin if entity @s[distance=..50] run data merge entity @e[tag=enderPearlWarden,limit=1] {Motion:[0d,-0.1d,0d],NoGravity:true}
execute as @s at @e[tag=WardenMarker] on origin if entity @s[distance=..50] run kill @e[tag=enderPearlWarden,distance=50.00001..]
execute as @s at @e[tag=WardenMarker] on origin if entity @s[distance=..50] as @e[tag=enderPearlWarden,limit=1] at @s run particle sculk_charge_pop ~ ~ ~ 0 0 0 0.05 3 normal
tag @s remove enderPearlWarden