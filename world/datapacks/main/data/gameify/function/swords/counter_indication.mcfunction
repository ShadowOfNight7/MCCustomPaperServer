tag @s add CounterMarker


execute if score @s enchant.counter matches 1..3 as @a at @s if score @s id = @e[type=#gameify:mobs,tag=CounterMarker,limit=1] enchant.counter2 positioned as @e[type=#gameify:mobs,tag=CounterMarker,limit=1] run particle dust{color:11932178,scale:1} ~ ~1 ~ 0.7 2 0.7 0.2 10 normal @s
execute if score @s enchant.counter matches 4..5 as @a at @s if score @s id = @e[type=#gameify:mobs,tag=CounterMarker,limit=1] enchant.counter2 positioned as @e[type=#gameify:mobs,tag=CounterMarker,limit=1] run particle dust{color:13616435,scale:1.2} ~ ~1 ~ 0.7 2 0.7 0.2 12 normal @s


tag @s remove CounterMarker