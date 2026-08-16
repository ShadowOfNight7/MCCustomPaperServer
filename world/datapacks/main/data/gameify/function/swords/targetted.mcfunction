execute as @a[tag=TheTargetter] at @s store result score @s enchant.target2 run data get entity @s SelectedItem.components."minecraft:enchantments"."gameify:target" 1

execute as @s at @s if entity @a[tag=TheTargetter,scores={enchant.target2=1}] run effect give @s weakness 4 0 false
execute as @s at @s if entity @a[tag=TheTargetter,scores={enchant.target2=1}] run effect give @s wither 5 0 false
execute as @s at @s if entity @a[tag=TheTargetter,scores={enchant.target2=1}] run effect give @a[tag=TheTargetter] resistance 2 0 false
execute as @s at @s if entity @a[tag=TheTargetter,scores={enchant.target2=1}] run effect give @a[tag=TheTargetter] strength 3 0 false

execute as @s at @s if entity @a[tag=TheTargetter,scores={enchant.target2=2}] run effect give @s weakness 6 0 false
execute as @s at @s if entity @a[tag=TheTargetter,scores={enchant.target2=2}] run effect give @s wither 5 1 false
execute as @s at @s if entity @a[tag=TheTargetter,scores={enchant.target2=2}] run effect give @a[tag=TheTargetter] resistance 2 1 false
execute as @s at @s if entity @a[tag=TheTargetter,scores={enchant.target2=2}] run effect give @a[tag=TheTargetter] strength 3 1 false

execute as @s at @s if entity @a[tag=TheTargetter,scores={enchant.target2=3}] run effect give @s weakness 8 0 false
execute as @s at @s if entity @a[tag=TheTargetter,scores={enchant.target2=3}] run effect give @s wither 5 2 false
execute as @s at @s if entity @a[tag=TheTargetter,scores={enchant.target2=3}] run effect give @a[tag=TheTargetter] resistance 2 2 false
execute as @s at @s if entity @a[tag=TheTargetter,scores={enchant.target2=3}] run effect give @a[tag=TheTargetter] strength 3 2 false
