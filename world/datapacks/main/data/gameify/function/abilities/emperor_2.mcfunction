execute as @s[scores={time=1}] at @s run scoreboard players set @s flagHealth 500

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
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Royal] run tellraw @a[tag=FlagAttacker] ["Health Remaining: ", {"score":{"name":"@s","objective":"flagHealth"}}]

execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Golden] run data remove entity @s attack
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Golden] run scoreboard players remove @s flagHealth 1
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] if entity @e[tag=FlagAttacker,team=Golden] run tellraw @a[tag=FlagAttacker] ["Health Remaining: ", {"score":{"name":"@s","objective":"flagHealth"}}]

execute as @s[scores={flagHealth=..0,time=2..}] at @s run kill @e[type=interaction,tag=FlagEffect,distance=..2]
execute as @s[scores={flagHealth=..0,time=2..}] at @s run kill @e[type=text_display,tag=FlagText,distance=..5]
execute as @s[scores={flagHealth=..0,time=2..}] at @s run particle explosion ~ ~ ~ 0 0 0 10 100 force
execute as @s[scores={flagHealth=..0,time=2..}] at @s if entity @e[tag=GoldenFlag,distance=..2] run scoreboard players remove @e[team=Golden] lives 1
execute as @s[scores={flagHealth=..0,time=2..}] at @s if entity @e[tag=RoyalFlag,distance=..2] run scoreboard players remove @e[team=Royal] lives 1
execute as @s[scores={flagHealth=..0,time=2..}] at @s run kill @e[type=item_display,tag=Flag,distance=..2]
execute as @s[scores={flagHealth=..0,time=2..}] at @s run kill @s

tag @e[tag=FlagAttacker] remove FlagAttacker


execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..15] speed 1 0 false
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..15] regeneration 1 0 false
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..15] fire_resistance 1 0 false
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..15] jump_boost 1 0 false
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..15] water_breathing 1 0 false
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..15] strength 1 0 false
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..15] resistance 1 0 false
execute as @s at @s if entity @e[tag=GoldenFlag,distance=..2] run effect give @a[team=Golden,distance=..15] night_vision 1 0 false

execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..15] speed 1 0 false
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..15] regeneration 1 0 false
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..15] fire_resistance 1 0 false
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..15] jump_boost 1 0 false
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..15] water_breathing 1 0 false
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..15] strength 1 0 false
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..15] resistance 1 0 false
execute as @s at @s if entity @e[tag=RoyalFlag,distance=..2] run effect give @a[team=Royal,distance=..15] night_vision 1 0 false


execute as @s at @s if score @s time matches 300.. if score @s flagHealth matches ..499 run scoreboard players add @s flagHealth 1
execute as @s at @s if score @s time matches 300.. if score @s flagHealth matches ..500 run scoreboard players set @s time 100