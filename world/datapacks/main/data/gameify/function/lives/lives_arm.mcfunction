execute as @s at @s if items entity @s weapon.offhand * run summon item ~ ~ ~ {Item:{id:"minecraft:stone_button",count:1b},Tags:["offhandItem"]}
execute as @s at @s if items entity @s weapon.offhand * run data modify entity @e[type=item,tag=offhandItem,limit=1,sort=nearest] Item set from entity @s equipment.offhand
execute as @s at @s if items entity @s weapon.offhand * run tag @e[type=item,tag=offhandItem] remove offhandItem
execute as @s at @s if items entity @s weapon.offhand * run item replace entity @s weapon.offhand with air 1