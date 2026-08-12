tag @s add LivedItem

execute as @s at @s if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{life_essence:true}}}},tag=!LivedItem,distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying"}},distance=..3] run function gameify:lives/life_summon with entity @s

tag @s remove LivedItem