execute unless score @s enchant.endurance = @s enchant.endurance run scoreboard players set @s enchant.endurance 0
scoreboard players add @s enchant.endurance 1
execute as @s[nbt={equipment:{offhand:{components:{"minecraft:enchantments":{"gameify:endurance":1}}}}}] if score @s enchant.endurance matches 80.. run effect give @s resistance 1 0 true
execute as @s[nbt={equipment:{offhand:{components:{"minecraft:enchantments":{"gameify:endurance":2}}}}}] if score @s enchant.endurance matches 80.. run effect give @s resistance 1 1 true
execute as @s[nbt={equipment:{offhand:{components:{"minecraft:enchantments":{"gameify:endurance":3}}}}}] if score @s enchant.endurance matches 80.. run effect give @s resistance 1 2 true
execute as @s at @s if score @s playerhitplayer matches 1 run scoreboard players set @s enchant.endurance 0