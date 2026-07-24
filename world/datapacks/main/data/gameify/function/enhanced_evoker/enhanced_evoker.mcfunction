execute as @s at @s if entity @e[type=vex,distance=..10] run effect give @s resistance 1 1 false
execute as @s at @s if entity @e[type=vex,distance=..10] run effect give @s regeneration 1 2 false

execute as @s at @s as @e[type=vex,scores={time=1},distance=..3,tag=!ClonedVex] at @s run summon vex ~ ~ ~ {Tags:["ClonedVex"],equipment:{mainhand:{id:"minecraft:iron_sword",count:1}},Health:8f}
execute as @s at @s as @e[type=evoker_fangs,distance=..10,scores={time=1}] at @s run summon vex ~ ~ ~ {Tags:["ClonedVex"],equipment:{mainhand:{id:"minecraft:iron_axe",count:1}},Health:8f}
# effect give @e[tag=ClonedVex] wither infinite 1 true

execute as @s[scores={time=1}] at @s run data merge entity @s {equipment:{offhand:{id:"minecraft:totem_of_undying",count:1}}}