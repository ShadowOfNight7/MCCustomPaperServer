execute as @s at @s on attacker run tag @s add TheTargetter
tag @s add TheTargetted

execute as @e[type=#gameify:mobs,tag=!TheTargetted] at @s if score @s enchant.target = @e[tag=TheTargetter,limit=1] id run scoreboard players set @s enchant.target -1

execute as @s at @s if score @s enchant.target = @a[tag=TheTargetter,limit=1] id run function gameify:swords/targetted with entity @s

execute as @s at @s store result score @s enchant.target run scoreboard players get @e[tag=TheTargetter,limit=1] id

tag @a remove TheTargetter
tag @s remove TheTargetted