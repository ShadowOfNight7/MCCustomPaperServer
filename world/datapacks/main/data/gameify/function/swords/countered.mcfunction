tag @s add TheCounterededed
scoreboard players set @s enchant.counter 22
execute as @a[nbt={HurtTime:10s}] run function gameify:swords/counterid with entity @s

tag @s remove TheCounterededed
