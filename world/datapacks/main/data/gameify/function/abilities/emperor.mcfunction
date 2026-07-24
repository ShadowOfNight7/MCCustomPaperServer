execute as @s at @s on vehicle run tag @s add Rider
execute as @s at @s unless entity @e[tag=Rider] run tp @s ~ ~-0.7 ~
execute as @s at @s unless entity @e[tag=Rider] run tag @s remove FlagInitial
execute as @s at @s unless entity @e[tag=Rider] run setblock ~ ~0.2 ~ air

execute as @s at @s unless entity @e[tag=Rider] run summon interaction ~ ~-0.5 ~ {height:1.9,width:1,Tags:["FlagHitbox"],response:true}
execute as @s at @s unless entity @e[tag=Rider] run summon interaction ~ ~ ~ {height:0.9,width:0.9,Tags:["FlagEffect"]}
execute as @s at @s unless entity @e[tag=Rider] run summon text_display ~ ~1.8 ~ {Tags:["FlagText"],billboard:"center",default_background:0b,text:[{"color":"dark_red","shadow_color":13893632,"text":"Health: "},{"color":"dark_red","score":{"name":"@e[tag=FlagHitbox,limit=1,sort=nearest]","objective":"flagHealth"},"shadow_color":13893632}]}

execute as @s at @s unless entity @e[tag=Rider] if entity @s[tag=GoldenFlag] run scoreboard players add @a[team=Golden,tag=Emperor] flagNumber 1
execute as @s at @s unless entity @e[tag=Rider] if entity @s[tag=RoyalFlag] run scoreboard players add @a[team=Royal,tag=Emperor] flagNumber 1

tag @e[tag=Rider] remove Rider