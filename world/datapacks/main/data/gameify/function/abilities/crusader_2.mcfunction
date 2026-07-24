scoreboard players set @s cooldown2 8400
execute as @s[team=Golden] at @s run effect give @a[distance=..10,team=Royal] glowing 30 1 true
execute as @s[team=Royal] at @s run effect give @a[distance=..10,team=Golden] glowing 30 1 true

tellraw @s ["You used ",{"text":"Detection","bold":true,"color":"gray"}, "!"]