scoreboard players remove @s rapidfire 1

execute as @s at @s if score @s rapidfiredelay matches 1.. run scoreboard players remove @s rapidfiredelay 1

execute as @s at @s if score @s rapidfiredelay matches ..0 positioned ~ ~1.5 ~ run summon arrow ^ ^ ^0.8 {Tags:["RapidFired","FastDespawnArrow"]}
execute as @s at @s if score @s rapidfiredelay matches ..0 positioned 0.001 0.001 0.001 run summon interaction ^ ^ ^2.5 {Tags:["RapidFiredGuide"]}
execute as @s at @s if score @s rapidfiredelay matches ..0 run data modify entity @e[type=arrow,tag=RapidFired,limit=1] Motion[0] set from entity @e[type=interaction,tag=RapidFiredGuide,limit=1] Pos[0]
execute as @s at @s if score @s rapidfiredelay matches ..0 run data modify entity @e[type=arrow,tag=RapidFired,limit=1] Motion[1] set from entity @e[type=interaction,tag=RapidFiredGuide,limit=1] Pos[1]
execute as @s at @s if score @s rapidfiredelay matches ..0 run data modify entity @e[type=arrow,tag=RapidFired,limit=1] Motion[2] set from entity @e[type=interaction,tag=RapidFiredGuide,limit=1] Pos[2]
execute as @s at @s if score @s rapidfiredelay matches ..0 run kill @e[type=interaction,tag=RapidFiredGuide]
execute as @s at @s if score @s rapidfiredelay matches ..0 if score @s rapidfirecrit matches 1.. run data merge entity @e[type=arrow,tag=RapidFired,limit=1] {crit:true}
execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{rapidfire:true}}}}}] at @s if score @s rapidfiredelay matches ..0 run data modify entity @e[type=arrow,tag=RapidFired,limit=1] weapon set from entity @s equipment.offhand
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rapidfire:true}}}}] at @s if score @s rapidfiredelay matches ..0 run data modify entity @e[type=arrow,tag=RapidFired,limit=1] weapon set from entity @s SelectedItem
execute as @s at @s if score @s rapidfiredelay matches ..0 run tag @e[type=arrow,tag=RapidFired] remove RapidFired
execute as @s at @s if score @s rapidfiredelay matches ..0 run scoreboard players set @s rapidfiredelay 1

