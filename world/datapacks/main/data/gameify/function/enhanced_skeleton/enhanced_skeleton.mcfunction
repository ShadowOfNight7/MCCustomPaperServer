execute as @s at @s if score @s time matches 200.. if entity @a[distance=..200] run summon marker ~ ~ ~ {Tags:["TeleportationSkeleton","NotTimed","NoID"]}
execute as @s at @s if score @s time matches 200.. if entity @a[distance=..200] run kill @e[tag=TeleportationSkeleton,scores={time=280..}]
execute as @s at @s if score @s time matches 200.. if entity @a[distance=..200] run scoreboard players set @s time 100

tag @s add TeleportSkeleton
execute as @e[tag=TeleportationSkeleton,tag=NotTimed] at @s store result score @s id run scoreboard players get @e[tag=TeleportSkeleton,limit=1] id
execute as @e[type=arrow,tag=Teleport,scores={time=1}] at @s on origin if entity @s[tag=TeleportSkeleton] as @e[tag=TeleportSkeleton] at @s run particle minecraft:portal ~ ~ ~ 0.5 1 0.5 0.5 300 normal
execute as @e[type=arrow,tag=Teleport,scores={time=1}] at @s on origin if entity @s[tag=TeleportSkeleton] as @e[tag=TeleportationSkeleton,sort=random] at @s if score @s id = @e[tag=TeleportSkeleton,limit=1] id run tp @e[tag=TeleportSkeleton] @s
tag @s remove TeleportSkeleton
tag @e[tag=NotTimed] remove NotTimed

execute as @s at @s on vehicle if entity @s[type=#boat] run kill @s
execute as @s at @s on vehicle if entity @s[type=minecart] run kill @s