tag @s add TheCountered

execute as @s at @s on attacker if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"gameify:counter":1}}}}] if score @s id = @e[type=#gameify:mobs,tag=TheCountered,scores={enchant.counter=1..2},limit=1] enchant.counter2 run tag @e[type=#gameify:mobs,tag=TheCountered,scores={enchant.counter=1..2}] add TheCountereded
execute as @s at @s on attacker if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"gameify:counter":2}}}}] if score @s id = @e[type=#gameify:mobs,tag=TheCountered,scores={enchant.counter=1..3},limit=1] enchant.counter2 run tag @e[type=#gameify:mobs,tag=TheCountered,scores={enchant.counter=1..3}] add TheCountereded

execute as @s[tag=TheCountereded] at @s run effect give @s weakness 2 9 true
execute as @s[tag=TheCountereded] at @s run effect give @s slowness 2 9 true
execute as @s[tag=TheCountereded] at @s run effect give @s mining_fatigue 2 9 true
execute as @s[tag=TheCountereded] at @s run particle smoke ~ ~1 ~ 0 0 0 1.5 80 normal


tag @s remove TheCountereded
tag @s remove TheCountered
