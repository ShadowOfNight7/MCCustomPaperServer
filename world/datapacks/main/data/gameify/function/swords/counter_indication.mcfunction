tag @s add CounterMarker


execute as @a at @s if score @s id = @e[type=gameify:mobs,tag=CounterMarker,limit=1] enchant.counter2 positioned as @e[type=gameify:mobs,tag=CounterMarker,limit=1] run particle dust{color:11932178,scale:1} ~ ~1 ~ 0.1 0.1 0.1 0.2 10 normal @s


tag @s remove CounterMarker