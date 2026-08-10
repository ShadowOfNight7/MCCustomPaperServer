execute as @s at @s on passengers run tag @s add ArmorSmith
execute unless entity @e[type=interaction,tag=ArmorSmith] as @s at @s run summon interaction ~ ~ ~ {Tags:["TheArmorSmith","TheArmorSmithInitial"],height:0.5f,width:0.5f}
execute unless entity @e[type=interaction,tag=ArmorSmith] as @s at @s run ride @e[tag=TheArmorSmithInitial,limit=1] mount @s
execute unless entity @e[type=interaction,tag=ArmorSmith] as @s at @s run tag @e[tag=TheArmorSmithInitial] remove TheArmorSmithInitial
execute as @s at @s on passengers run tag @s remove ArmorSmith