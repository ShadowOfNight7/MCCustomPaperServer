execute as @s[scores={shiftingCheck=1},nbt={SelectedItem:{id:"minecraft:bow"}}] at @s run function gameify:bows/scoped_bow2 with entity @s
execute as @s[scores={shiftingCheck=1},nbt={SelectedItem:{id:"minecraft:crossbow"}}] at @s run function gameify:bows/scoped_bow2 with entity @s

execute as @s[scores={shiftingCheck=1},nbt={equipment:{offhand:{id:"minecraft:bow"}}}] at @s run function gameify:bows/scoped_bow2_offhand with entity @s
execute as @s[scores={shiftingCheck=1},nbt={equipment:{offhand:{id:"minecraft:crossbow"}}}] at @s run function gameify:bows/scoped_bow2_offhand with entity @s


execute as @s[scores={shiftingCheck=0},nbt={SelectedItem:{id:"minecraft:spyglass"}}] at @s run function gameify:bows/scoped_bow_unshift with entity @s
execute as @s[scores={shiftingCheck=0},nbt={equipment:{offhand:{id:"minecraft:spyglass"}}}] at @s run function gameify:bows/scoped_bow_unshift_offhand with entity @s

