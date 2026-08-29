execute as @s at @s positioned ~ ~1.5 ~ run summon arrow ^ ^ ^0.8 {Tags:["Barraged","FastDespawnArrow"]}

execute as @s at @s positioned 0.001 0.001 0.001 rotated ~ ~5 run summon interaction ^ ^ ^2.5 {Tags:["BarragedGuide"]}

execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[0] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[0]
execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[1] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[1]
execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[2] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[2]

execute as @s at @s run kill @e[type=interaction,tag=BarragedGuide]

execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{barrage:true}}}}}] at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] weapon set from entity @s equipment.offhand
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{barrage:true}}}}] at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] weapon set from entity @s SelectedItem
execute as @s at @s run tag @e[type=arrow,tag=Barraged] remove Barraged


execute as @s at @s positioned ~ ~1.5 ~ run summon arrow ^ ^ ^0.8 {Tags:["Barraged","FastDespawnArrow"]}

execute as @s at @s positioned 0.001 0.001 0.001 rotated ~ ~-5 run summon interaction ^ ^ ^2.5 {Tags:["BarragedGuide"]}

execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[0] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[0]
execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[1] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[1]
execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[2] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[2]

execute as @s at @s run kill @e[type=interaction,tag=BarragedGuide]

execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{barrage:true}}}}}] at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] weapon set from entity @s equipment.offhand
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{barrage:true}}}}] at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] weapon set from entity @s SelectedItem
execute as @s at @s run tag @e[type=arrow,tag=Barraged] remove Barraged


execute as @s at @s positioned ~ ~1.5 ~ run summon arrow ^ ^ ^0.8 {Tags:["Barraged","FastDespawnArrow"]}

execute as @s at @s positioned 0.001 0.001 0.001 rotated ~5 ~ run summon interaction ^ ^ ^2.5 {Tags:["BarragedGuide"]}

execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[0] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[0]
execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[1] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[1]
execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[2] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[2]

execute as @s at @s run kill @e[type=interaction,tag=BarragedGuide]

execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{barrage:true}}}}}] at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] weapon set from entity @s equipment.offhand
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{barrage:true}}}}] at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] weapon set from entity @s SelectedItem
execute as @s at @s run tag @e[type=arrow,tag=Barraged] remove Barraged


execute as @s at @s positioned ~ ~1.5 ~ run summon arrow ^ ^ ^0.8 {Tags:["Barraged","FastDespawnArrow"]}

execute as @s at @s positioned 0.001 0.001 0.001 rotated ~-5 ~ run summon interaction ^ ^ ^2.5 {Tags:["BarragedGuide"]}

execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[0] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[0]
execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[1] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[1]
execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[2] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[2]

execute as @s at @s run kill @e[type=interaction,tag=BarragedGuide]

execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{barrage:true}}}}}] at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] weapon set from entity @s equipment.offhand
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{barrage:true}}}}] at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] weapon set from entity @s SelectedItem
execute as @s at @s run tag @e[type=arrow,tag=Barraged] remove Barraged


execute as @s at @s positioned ~ ~1.5 ~ run summon arrow ^ ^ ^0.8 {Tags:["Barraged","FastDespawnArrow"]}

execute as @s at @s positioned 0.001 0.001 0.001 rotated ~3.5355339 ~3.5355339 run summon interaction ^ ^ ^2.5 {Tags:["BarragedGuide"]}

execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[0] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[0]
execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[1] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[1]
execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[2] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[2]

execute as @s at @s run kill @e[type=interaction,tag=BarragedGuide]

execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{barrage:true}}}}}] at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] weapon set from entity @s equipment.offhand
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{barrage:true}}}}] at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] weapon set from entity @s SelectedItem
execute as @s at @s run tag @e[type=arrow,tag=Barraged] remove Barraged


execute as @s at @s positioned ~ ~1.5 ~ run summon arrow ^ ^ ^0.8 {Tags:["Barraged","FastDespawnArrow"]}

execute as @s at @s positioned 0.001 0.001 0.001 rotated ~3.5355339 ~-3.5355339 run summon interaction ^ ^ ^2.5 {Tags:["BarragedGuide"]}

execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[0] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[0]
execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[1] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[1]
execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[2] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[2]

execute as @s at @s run kill @e[type=interaction,tag=BarragedGuide]

execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{barrage:true}}}}}] at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] weapon set from entity @s equipment.offhand
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{barrage:true}}}}] at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] weapon set from entity @s SelectedItem
execute as @s at @s run tag @e[type=arrow,tag=Barraged] remove Barraged


execute as @s at @s positioned ~ ~1.5 ~ run summon arrow ^ ^ ^0.8 {Tags:["Barraged","FastDespawnArrow"]}

execute as @s at @s positioned 0.001 0.001 0.001 rotated ~-3.5355339 ~3.5355339 run summon interaction ^ ^ ^2.5 {Tags:["BarragedGuide"]}

execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[0] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[0]
execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[1] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[1]
execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[2] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[2]

execute as @s at @s run kill @e[type=interaction,tag=BarragedGuide]

execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{barrage:true}}}}}] at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] weapon set from entity @s equipment.offhand
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{barrage:true}}}}] at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] weapon set from entity @s SelectedItem
execute as @s at @s run tag @e[type=arrow,tag=Barraged] remove Barraged


execute as @s at @s positioned ~ ~1.5 ~ run summon arrow ^ ^ ^0.8 {Tags:["Barraged","FastDespawnArrow"]}

execute as @s at @s positioned 0.001 0.001 0.001 rotated ~-3.5355339 ~-3.5355339 run summon interaction ^ ^ ^2.5 {Tags:["BarragedGuide"]}

execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[0] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[0]
execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[1] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[1]
execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[2] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[2]

execute as @s at @s run kill @e[type=interaction,tag=BarragedGuide]

execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{barrage:true}}}}}] at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] weapon set from entity @s equipment.offhand
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{barrage:true}}}}] at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] weapon set from entity @s SelectedItem
execute as @s at @s run tag @e[type=arrow,tag=Barraged] remove Barraged


execute as @s at @s positioned ~ ~1.5 ~ run summon arrow ^ ^ ^0.8 {Tags:["Barraged","FastDespawnArrow"]}

execute as @s at @s positioned 0.001 0.001 0.001 rotated ~ ~ run summon interaction ^ ^ ^2.5 {Tags:["BarragedGuide"]}

execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[0] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[0]
execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[1] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[1]
execute as @s at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] Motion[2] set from entity @e[type=interaction,tag=BarragedGuide,limit=1] Pos[2]

execute as @s at @s run kill @e[type=interaction,tag=BarragedGuide]

execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{barrage:true}}}}}] at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] weapon set from entity @s equipment.offhand
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{barrage:true}}}}] at @s run data modify entity @e[type=arrow,tag=Barraged,limit=1] weapon set from entity @s SelectedItem
execute as @s at @s run tag @e[type=arrow,tag=Barraged] remove Barraged


