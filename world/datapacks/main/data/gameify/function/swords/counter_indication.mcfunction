tag @s add CounterMarker


execute if score @s enchant.counter matches 1..3 as @a at @s if score @s id = @e[type=#gameify:mobs,tag=CounterMarker,limit=1] enchant.counter2 positioned as @e[type=#gameify:mobs,tag=CounterMarker,limit=1] run particle dust{color:11932178,scale:1} ~ ~1 ~ 0.7 2 0.7 0.2 10 normal @s
execute if score @s enchant.counter matches 1..2 as @a at @s if score @s id = @e[type=#gameify:mobs,tag=CounterMarker,limit=1] enchant.counter2 positioned as @e[type=#gameify:mobs,tag=CounterMarker,limit=1] run title @s actionbar [{"text":">>> Counter Ready! <<<","color":"red"}]
execute if score @s enchant.counter matches 4..5 as @a at @s if score @s id = @e[type=#gameify:mobs,tag=CounterMarker,limit=1] enchant.counter2 positioned as @e[type=#gameify:mobs,tag=CounterMarker,limit=1] run particle dust{color:14866228,scale:0.7} ~ ~1 ~ 0.7 2 0.7 0.2 14 normal @s
execute if score @s enchant.counter matches 4..5 as @a at @s if score @s id = @e[type=#gameify:mobs,tag=CounterMarker,limit=1] enchant.counter2 positioned as @e[type=#gameify:mobs,tag=CounterMarker,limit=1] run title @s actionbar [{"text":">>>    Prepare...    <<<","color":"#cac644"}]

tag @s remove CounterMarker