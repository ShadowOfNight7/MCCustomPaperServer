execute as @s at @s on target run tag @s add EndermanTarget
execute as @s[scores={clock=12000..23999}] at @s unless entity @e[tag=EndermanTarget] if entity @p[distance=..5,gamemode=!creative,gamemode=!spectator] run damage @s 0 magic by @p[distance=..5,gamemode=!creative,gamemode=!spectator]
execute as @s[scores={time=1}] at @s run scoreboard players set @s random 0

# execute as @s[nbt={HurtTime:9s}] at @s run damage @s 0 arrow
execute as @s at @s if score @s time matches 200.. run damage @s 0 arrow
execute as @s at @s if score @s time matches 200.. run effect give @s invisibility 2
execute as @s at @s if score @s time matches 200.. run scoreboard players set @s time 100

# execute as @s at @s run rotate @p[tag=EndermanTarget,distance=..3.5] facing entity @s
execute as @p[tag=EndermanTarget,distance=..3.5] at @s run effect give @s blindness 2 0 false
execute as @s at @s run damage @p[tag=EndermanTarget,distance=..3.5] 0.4 magic by @s from @s
tag @e[tag=EndermanTarget] remove EndermanTarget

execute as @s at @s if entity @e[tag=EndermanTarget] run scoreboard players add @s random 1
execute as @s[nbt={HurtTime:9s}] at @s if entity @e[tag=EndermanTarget] run scoreboard players set @s random 0
execute as @s[scores={random=200..}] at @s run fill ~-1 ~ ~-1 ~1 ~3 ~1 air replace water


execute as @s at @s on vehicle if entity @s[type=#boat] run kill @s
execute as @s at @s on vehicle if entity @s[type=minecart] run kill @s