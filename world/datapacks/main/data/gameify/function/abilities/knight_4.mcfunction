execute as @s[team=Golden] at @s run effect give @a[distance=..15,tag=!Knight,team=Golden] absorption 180 1 false
execute as @s[team=Royal] at @s run effect give @a[distance=..15,tag=!Knight,team=Royal] absorption 180 1 false

execute as @a[distance=..15,tag=!Knight,team=Royal] at @s positioned ~ ~1 ~ run particle flash{color:-1446881} ^ ^ ^1.5 0.05 0.05 0.05 0.5 1 force