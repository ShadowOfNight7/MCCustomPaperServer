summon bat ~ ~ ~ {Invulnerable:1b,Tags:["TheEyes","InitialEyes"],Passengers:[{id:"minecraft:item_display",billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:ender_eye",count:1}},{id:"minecraft:interaction"}],PersistenceRequired:1b}
effect give @e[tag=InitialEyes] invisibility infinite 0 true
scoreboard players set @e[tag=InitialEyes] random 300
spreadplayers ~ ~ 35 70 true @e[tag=InitialEyes]
tag @e[tag=InitialEyes] remove InitialEyes