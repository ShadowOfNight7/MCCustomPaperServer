tag @s add TheCountered

execute as @s at @s on attacker if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"gameify:counter":1}}}}] run tag @e[type=#gameify:mobs,tag=TheCountered,scores={enchant.counter=1..2}] add TheCountereded

execute as @s[tag=TheCountereded] at @s run effect give @s weakness 2 9 true
execute as @s[tag=TheCountereded] at @s run effect give @s slowness 2 9 true
execute as @s[tag=TheCountereded] at @s run effect give @s mining_fatigue 2 9 true
execute as @s[tag=TheCountereded] at @s run particle crit ~ ~1 ~ 0 0 0 0.8 30 normal


tag @s remove TheCountereded
tag @s remove TheCountered
