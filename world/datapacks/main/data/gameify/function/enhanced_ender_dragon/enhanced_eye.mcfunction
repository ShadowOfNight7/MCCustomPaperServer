summon bat ~ ~ ~ {Invulnerable:1b,Tags:["TheEyes","InitialEyes","StaringEyes"],Passengers:[{id:"minecraft:item_display",billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:ender_eye",count:1},Tags:["StaringEyes"]},{id:"minecraft:interaction",Tags:["StaringEyes"]}],PersistenceRequired:1b}
effect give @e[tag=InitialEyes] invisibility infinite 0 true
scoreboard players set @e[tag=InitialEyes] random 101
attribute @e[tag=InitialEyes,limit=1] gravity base set 0.1
spreadplayers ~ ~ 35 70 true @e[tag=InitialEyes]
tag @e[tag=InitialEyes] remove InitialEyes