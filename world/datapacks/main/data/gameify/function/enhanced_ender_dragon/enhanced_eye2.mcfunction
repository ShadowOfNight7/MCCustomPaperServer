tag @s add Eyes
execute as @s at @s on passengers run tag @s add Eyes
execute as @s at @s on passengers if entity @s[type=interaction] at @s as @a[distance=..15] run rotate @s facing entity @e[tag=Eyes,type=bat,limit=1] feet
execute as @s at @s on passengers if entity @s[type=interaction] at @s as @a[distance=..15] run effect give @s nausea 3 0 true
execute as @s at @s on passengers if entity @s[type=interaction] at @s as @a[distance=..15] run effect give @s darkness 3 0 true

execute as @s at @s on passengers if entity @s[type=interaction] on attacker if entity @s run scoreboard players remove @e[tag=Eyes,type=bat] random 100
execute as @s at @s on passengers if entity @s[type=interaction] on attacker if entity @s run data remove entity @e[tag=Eyes,type=interaction,limit=1] attack

execute as @s[scores={random=..0}] at @s run kill @e[tag=Eyes]
execute as @s[scores={random=..101}] at @s run scoreboard players add @s random 1

execute as @s[scores={time=3600..}] at @s run kill @e[tag=Eyes]

tag @s remove Eyes
execute as @s at @s on passengers run tag @s remove Eyes

effect give @s invisibility infinite 255 true