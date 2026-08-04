execute as @s at @s run tp @s ^ ^ ^0.5
execute as @s at @s run particle dust{color:[0,0,0],scale:2} ~ ~0.5 ~ 0 0 0 0 0 force

execute as @s[tag=Royaled] at @s positioned ~ ~0.5 ~ as @a[scores={occultistAbility2=9600..},distance=..1.5,team=Golden] at @s run give @a[tag=Occultist,team=Royal] command_block[custom_name=[{"text":"Soul","bold":true,"italic":false,"color":"blue"}],lore=[[{"text":"Used to weaken flags!","italic":false,"color":"gray"}]],damage_resistant={types:"minecraft:on_fire"},item_model="minecraft:ender_pearl",custom_data={soul:true}]
execute as @s[tag=Goldened] at @s positioned ~ ~0.5 ~ as @a[scores={occultistAbility2=9600..},distance=..1.5,team=Royal] at @s run give @a[tag=Occultist,team=Golden] command_block[custom_name=[{"text":"Soul","bold":true,"italic":false,"color":"blue"}],lore=[[{"text":"Used to weaken flags!","italic":false,"color":"gray"}]],damage_resistant={types:"minecraft:on_fire"},item_model="minecraft:ender_pearl",custom_data={soul:true}]

execute as @s[tag=Royaled] at @s positioned ~ ~0.5 ~ as @a[scores={occultistAbility2=9600..},distance=..1.5,team=Golden] at @s run tag @s add NoSoul
execute as @s[tag=Goldened] at @s positioned ~ ~0.5 ~ as @a[scores={occultistAbility2=9600..},distance=..1.5,team=Royal] at @s run tag @s add NoSoul

execute as @s[tag=Royaled] at @s positioned ~ ~0.5 ~ as @a[scores={occultistAbility2=9600..},distance=..1.5,team=Golden] at @s run scoreboard players set @s occultistAbility2 0
execute as @s[tag=Goldened] at @s positioned ~ ~0.5 ~ as @a[scores={occultistAbility2=9600..},distance=..1.5,team=Royal] at @s run scoreboard players set @s occultistAbility2 0


execute as @s[tag=Goldened] at @s positioned ~ ~0.5 ~ as @a[scores={occultistAbility2=..9599},distance=..1.5,tag=Royal] at @s run effect give @s wither 10 3 false
execute as @s[tag=Royaled] at @s positioned ~ ~0.5 ~ as @a[scores={occultistAbility2=..9599},distance=..1.5,tag=Golden] at @s run effect give @s wither 10 3 false

execute as @s[scores={time=200..}] at @s run kill @s
