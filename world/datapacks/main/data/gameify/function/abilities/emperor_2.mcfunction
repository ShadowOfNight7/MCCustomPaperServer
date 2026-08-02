execute as @s[scores={time=1}] at @s run scoreboard players set @s flagHealth 500
execute as @s[scores={time=1}] at @s run scoreboard players set @s flagSouled 0

execute as @s at @s run rotate @s ~5 0

execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] positioned ^ ^ ^0.6 run particle dust{color:[0.7,0.7,0],scale:0.7} ~ ~0.3 ~ 0.05 0.05 0.05 0.5 2 force
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] positioned ^ ^ ^-0.6 run particle dust{color:[0.7,0.7,0],scale:0.7} ~ ~0.3 ~ 0.05 0.05 0.05 0.5 2 force
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] positioned ^ ^ ^0.6 run particle dust{color:[0.7,0.7,0],scale:0.7} ~ ~1.8 ~ 0.05 0.05 0.05 0.5 2 force
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] positioned ^ ^ ^-0.6 run particle dust{color:[0.7,0.7,0],scale:0.7} ~ ~1.8 ~ 0.05 0.05 0.05 0.5 2 force

execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] positioned ^ ^ ^0.6 run particle dust{color:[0.6,0,0.8],scale:0.7} ~ ~0.3 ~ 0.05 0.05 0.05 0.5 2 force
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] positioned ^ ^ ^-0.6 run particle dust{color:[0.6,0,0.8],scale:0.7} ~ ~0.3 ~ 0.05 0.05 0.05 0.5 2 force
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] positioned ^ ^ ^0.6 run particle dust{color:[0.6,0,0.8],scale:0.7} ~ ~1.8 ~ 0.05 0.05 0.05 0.5 2 force
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] positioned ^ ^ ^-0.6 run particle dust{color:[0.6,0,0.8],scale:0.7} ~ ~1.8 ~ 0.05 0.05 0.05 0.5 2 force

execute as @s at @s on attacker run tag @s add FlagAttacker
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Royal] run data remove entity @s attack
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Royal] run scoreboard players remove @s flagHealth 1
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Royal] if score @s flagSouled matches ..1 run damage @e[tag=FlagAttacker,team=Royal,limit=1] 0.5 indirect_magic by @s from @s
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Royal] if score @s flagSouled matches 2 run damage @e[tag=FlagAttacker,team=Royal,limit=1] 0.35 indirect_magic by @s from @s
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Royal] if score @s flagSouled matches 3.. run damage @e[tag=FlagAttacker,team=Royal,limit=1] 0.25 indirect_magic
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Royal] run tellraw @a[tag=FlagAttacker] ["Health Remaining: ", {"score":{"name":"@s","objective":"flagHealth"}}]
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Royal,nbt={SelectedItem:{components:{"minecraft:custom_data":{soul:true}}}}] if score @s flagSouled matches ..3 run scoreboard players add @s flagSouled 1
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Royal,nbt={SelectedItem:{components:{"minecraft:custom_data":{soul:true}}}}] if score @s flagSouled matches ..3 run tellraw @a[tag=FlagAttacker] ["Your soul item has weakened the flag!"]
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Royal,nbt={SelectedItem:{components:{"minecraft:custom_data":{soul:true}}}}] if score @s flagSouled matches ..3 run particle soul ~ ~1 ~ 0 0 0 1 1000 force
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Royal,nbt={SelectedItem:{components:{"minecraft:custom_data":{soul:true}}}}] if score @s flagSouled matches ..3 run clear @a[tag=FlagAttacker,limit=1] *[custom_data={soul:true}] 1
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Royal,nbt={SelectedItem:{components:{"minecraft:custom_data":{soul:true}}}}] if score @s flagSouled matches 4.. run tellraw @a[tag=FlagAttacker] ["This flag to too weakened! - No more souls can be used on it."]

execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Golden] run data remove entity @s attack
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Golden] run scoreboard players remove @s flagHealth 1
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Golden] if score @s flagSouled matches ..1 run damage @e[tag=FlagAttacker,team=Golden,limit=1] 0.5 indirect_magic by @s from @s
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Golden] if score @s flagSouled matches 2 run damage @e[tag=FlagAttacker,team=Golden,limit=1] 0.35 indirect_magic by @s from @s
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Golden] if score @s flagSouled matches 3.. run damage @e[tag=FlagAttacker,team=Golden,limit=1] 0.25 indirect_magic
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Golden] run tellraw @a[tag=FlagAttacker] ["Health Remaining: ", {"score":{"name":"@s","objective":"flagHealth"}}]
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Golden,nbt={SelectedItem:{components:{"minecraft:custom_data":{soul:true}}}}] if score @s flagSouled matches ..3 run scoreboard players add @s flagSouled 1
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Golden,nbt={SelectedItem:{components:{"minecraft:custom_data":{soul:true}}}}] if score @s flagSouled matches ..3 run tellraw @a[tag=FlagAttacker] ["Your soul item has weakened the flag!"]
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Golden,nbt={SelectedItem:{components:{"minecraft:custom_data":{soul:true}}}}] if score @s flagSouled matches ..3 run particle soul ~ ~1 ~ 0 0 0 1 1000 force
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Golden,nbt={SelectedItem:{components:{"minecraft:custom_data":{soul:true}}}}] if score @s flagSouled matches ..3 run clear @a[tag=FlagAttacker,limit=1] *[custom_data={soul:true}] 1
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Golden,nbt={SelectedItem:{components:{"minecraft:custom_data":{soul:true}}}}] if score @s flagSouled matches 4.. run tellraw @a[tag=FlagAttacker] ["This flag to too weakened! - No more souls can be used on it."]

execute as @s[scores={flagHealth=..0,time=2..}] at @s run kill @e[type=interaction,tag=FlagEffect,distance=..2]
execute as @s[scores={flagHealth=..0,time=2..}] at @s run kill @e[type=text_display,tag=FlagText,distance=..5]
execute as @s[scores={flagHealth=..0,time=2..}] at @s run particle explosion ~ ~ ~ 0 0 0 10 100 force
execute as @s[scores={flagHealth=..0,time=2..}] at @s if entity @e[tag=GoldenFlag,distance=..2] run scoreboard players remove @e[team=Golden] lives 1
execute as @s[scores={flagHealth=..0,time=2..}] at @s if entity @e[tag=RoyalFlag,distance=..2] run scoreboard players remove @e[team=Royal] lives 1
execute as @s[scores={flagHealth=..0,time=2..}] at @s run kill @e[type=item_display,tag=Flag,distance=..2]
execute as @s[scores={flagHealth=..0,time=2..}] at @s run kill @s

tag @e[tag=FlagAttacker] remove FlagAttacker

#No Souls
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..30] speed 2 1 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..30] regeneration 2 2 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..30] dolphins_grace 2 0 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..30] jump_boost 2 1 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..30] water_breathing 2 0 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..30] strength 2 1 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..30] resistance 2 1 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..30] night_vision 2 0 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..30] haste 2 0 false

execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Royal,distance=..30] weakness 2 1 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Royal,distance=..30] slowness 2 0 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Royal,distance=..30] hunger 2 2 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Royal,distance=..30] mining_fatigue 2 1 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Royal,distance=..30] darkness 2 0 false


execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..30] speed 2 1 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..30] regeneration 2 2 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..30] dolphins_grace 2 0 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..30] jump_boost 2 1 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..30] water_breathing 2 0 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..30] strength 2 1 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..30] resistance 2 1 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..30] night_vision 2 0 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..30] haste 2 0 false

execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Golden,distance=..30] weakness 2 1 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Golden,distance=..30] slowness 2 0 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Golden,distance=..30] hunger 2 2 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Golden,distance=..30] mining_fatigue 2 1 false
execute as @s at @s if score @s flagSouled matches 0 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Golden,distance=..30] darkness 2 0 false

#First Soul
execute as @s at @s if score @s flagSouled matches 1 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..30] speed 2 0 false
execute as @s at @s if score @s flagSouled matches 1 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..30] regeneration 2 1 false
execute as @s at @s if score @s flagSouled matches 1 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..30] strength 2 0 false
execute as @s at @s if score @s flagSouled matches 1 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..30] resistance 2 0 false

execute as @s at @s if score @s flagSouled matches 1 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Royal,distance=..30] weakness 2 0 false
execute as @s at @s if score @s flagSouled matches 1 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Royal,distance=..30] hunger 2 1 false
execute as @s at @s if score @s flagSouled matches 1 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Royal,distance=..30] mining_fatigue 2 0 false


execute as @s at @s if score @s flagSouled matches 1 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..30] speed 2 0 false
execute as @s at @s if score @s flagSouled matches 1 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..30] regeneration 2 1 false
execute as @s at @s if score @s flagSouled matches 1 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..30] strength 2 0 false
execute as @s at @s if score @s flagSouled matches 1 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..30] resistance 2 0 false

execute as @s at @s if score @s flagSouled matches 1 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Golden,distance=..30] weakness 2 0 false
execute as @s at @s if score @s flagSouled matches 1 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Golden,distance=..30] hunger 2 1 false
execute as @s at @s if score @s flagSouled matches 1 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Golden,distance=..30] mining_fatigue 2 0 false

#Second Soul
execute as @s at @s if score @s flagSouled matches 2 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..30] speed 2 0 false
execute as @s at @s if score @s flagSouled matches 2 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..30] regeneration 2 1 false
execute as @s at @s if score @s flagSouled matches 2 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..30] strength 2 0 false
execute as @s at @s if score @s flagSouled matches 2 if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..30] resistance 2 0 false

execute as @s at @s if score @s flagSouled matches 2 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..30] speed 2 0 false
execute as @s at @s if score @s flagSouled matches 2 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..30] regeneration 2 1 false
execute as @s at @s if score @s flagSouled matches 2 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..30] strength 2 0 false
execute as @s at @s if score @s flagSouled matches 2 if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..30] resistance 2 0 false

#Third Soul
execute as @s at @s if score @s flagSouled matches 3.. if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..30] weakness 2 0 false
execute as @s at @s if score @s flagSouled matches 3.. if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..30] slowness 2 0 false
execute as @s at @s if score @s flagSouled matches 3.. if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..30] hunger 2 0 false



tag @s add FlagChosen
execute as @s at @s if score @s flagSouled matches ..2 if entity @e[type=#gameify:hostile_mobs,distance=..30] as @e[type=#gameify:hostile_mobs,distance=..30] at @s run function gameify:abilities/emperor_3 with entity @s


tag @s remove FlagChosen

execute as @s at @s if score @s time matches 20.. if score @s flagHealth matches ..499 run scoreboard players add @s flagHealth 1
execute as @s at @s if score @s time matches 20.. if score @s flagSouled matches ..1 run scoreboard players set @s time 18
execute as @s at @s if score @s time matches 20.. if score @s flagSouled matches 2 run scoreboard players set @s time 17
execute as @s at @s if score @s time matches 20.. if score @s flagSouled matches 3.. run scoreboard players set @s time 14