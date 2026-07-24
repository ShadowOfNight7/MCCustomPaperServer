scoreboard players set @s cooldown 6000

execute as @s[team=Golden] at @s run effect give @a[distance=..15,tag=!Knight,team=Golden] absorption 180 1 false
execute as @s[team=Royal] at @s run effect give @a[distance=..15,tag=!Knight,team=Royal] absorption 180 1 false

tellraw @s ["You used ",{"text":"Call Of The Heavens","bold":true,"color":"yellow"}, "!"]