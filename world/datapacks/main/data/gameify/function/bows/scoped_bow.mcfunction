execute as @s[scores={shiftingCheck=1},nbt={SelectedItem:{id:"minecraft:bow"}}] at @s run function gameify:bows/scoped_bow2 with entity @s
execute as @s[scores={shiftingCheck=1},nbt={SelectedItem:{id:"minecraft:crossbow"}}] at @s run function gameify:bows/scoped_bow2 with entity @s

execute as @s[scores={shiftingCheck=0},nbt={SelectedItem:{id:"minecraft:spyglass"}}] at @s run function gameify:bows/scoped_bow_unshift with entity @s

