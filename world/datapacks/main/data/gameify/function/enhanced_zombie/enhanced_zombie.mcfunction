execute as @s[scores={time=1}] at @s store result score @s random run random value 1..100
execute as @s[scores={time=1,random=1..5}] at @s run summon slime ~ ~ ~
execute as @s[scores={time=1,random=1..5}] at @s run tp @s ~ -100 ~

execute as @s[scores={time=1}] at @s run attribute @s max_health base set 30
execute as @s[scores={time=1}] at @s run effect give @s instant_damage 1 10 true
execute as @s[scores={time=1}] at @s run data merge entity @s {equipment:{offhand:{id:"minecraft:rotten_flesh",count:1,components:{"item_model":"minecraft:air","death_protection":{},"enchantments":{"vanishing_curse":1}}}}}
execute as @s[scores={time=1}] at @s run attribute @s attack_damage base set 3.5

execute as @s[scores={time=1}] at @s store result score @s random run random value 1..100

execute as @s[scores={random=9..44,time=1}] at @s run data merge entity @s {equipment:{mainhand:{id:"minecraft:stone_shovel",count:1,components:{"enchantments":{"vanishing_curse":1}}}}}
execute as @s[scores={random=1..8,time=1}] at @s run data merge entity @s {equipment:{mainhand:{id:"minecraft:stone_axe",count:1,components:{"enchantments":{"vanishing_curse":1}}}}}


execute as @s[scores={time=300},nbt={Fire:0s}] at @s run effect give @e[type=#undead,distance=..5] instant_damage 1 0 true
execute as @s[scores={time=300},nbt={Fire:0s}] at @s run effect give @e[type=#sensitive_to_bane_of_arthropods,distance=..5] instant_health 1 0 true
execute as @s[scores={time=300},nbt={Fire:0s}] at @s run effect give @e[type=creeper,distance=..5] instant_health 1 0 true
execute as @s[scores={time=300},nbt={Fire:0s}] at @s run scoreboard players set @s time 100

execute as @s[scores={health=..100000}] at @s run attribute @s attack_damage base set 5

execute as @s at @s on vehicle if entity @s[type=#boat] run kill @s
execute as @s at @s on vehicle if entity @s[type=minecart] run kill @s