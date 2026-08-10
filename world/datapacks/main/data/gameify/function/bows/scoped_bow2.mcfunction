execute as @s at @s run summon armor_stand 0 -100 0 {Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["BowHolder"],equipment:{mainhand:{id:"minecraft:spyglass",count:1}}}
execute as @s at @s run data modify entity @e[type=armor_stand,tag=BowHolder,limit=1] equipment.mainhand.components set from entity @s SelectedItem.components
execute as @s[predicate=gameify:scoped_bow_bow] at @s run data merge entity @e[type=armor_stand,tag=BowHolder,limit=1] {equipment:{mainhand:{components:{item_model:"minecraft:bow"}}}}
execute as @s[predicate=!gameify:scoped_bow_bow] at @s run data merge entity @e[type=armor_stand,tag=BowHolder,limit=1] {equipment:{mainhand:{components:{item_model:"minecraft:crossbow"}}}}
execute as @s at @s run item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=BowHolder,limit=1] weapon.mainhand

kill @e[type=armor_stand,tag=BowHolder]