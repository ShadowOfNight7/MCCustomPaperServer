tag @s add Targetteded

execute as @s at @s as @a if data entity @s SelectedItem.components."minecraft:enchantments"."gameify:target" if score @s id = @e[type=#gameify:mobs,tag=Targetteded,limit=1] enchant.target run particle ash ~ ~1 ~ 1 1 1 0.1 10 force @s

tag @s remove Targetteded