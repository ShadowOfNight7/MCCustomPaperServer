tag @s add BlazeMarker
execute as @e[type=small_fireball,scores={time=1},distance=..2,limit=1,sort=nearest] at @s on origin if entity @s[tag=BlazeMarker] run tag @e[type=small_fireball,scores={time=1},distance=..2,limit=1,sort=nearest] add SummonedBlazeFireball

execute as @e[tag=SummonedBlazeFireball] store result entity @s acceleration_power double 0.00002 run data get entity @s acceleration_power 10000

tag @e[tag=SummonedBlazeFireball] add SummonedByBlaze

tag @e[tag=SummonedBlazeFireball] remove SummonedBlazeFireball
tag @s remove BlazeMarker