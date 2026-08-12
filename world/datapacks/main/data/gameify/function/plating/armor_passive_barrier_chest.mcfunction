execute as @s at @s store result score @s armorPassive.absorption run data get entity @s equipment.chest.components."minecraft:custom_data".barrier
execute as @s at @s run scoreboard players add @s armorPassive.barrier.cooldown.chest 1
execute as @s[scores={shiftingCheck=1}] at @s if score @s armorPassive.absorption matches 1 if score @s armorPassive.barrier.cooldown.chest matches 1600.. run effect give @s resistance 1 10 true
execute as @s[scores={shiftingCheck=1}] at @s if score @s armorPassive.absorption matches 2 if score @s armorPassive.barrier.cooldown.chest matches 1400.. run effect give @s resistance 1 10 true
execute as @s[scores={shiftingCheck=1}] at @s if score @s armorPassive.absorption matches 3 if score @s armorPassive.barrier.cooldown.chest matches 1100.. run effect give @s resistance 1 10 true
execute as @s[scores={shiftingCheck=1}] at @s if score @s armorPassive.absorption matches 4 if score @s armorPassive.barrier.cooldown.chest matches 900.. run effect give @s resistance 1 10 true
execute as @s[scores={shiftingCheck=1}] at @s if score @s armorPassive.absorption matches 5 if score @s armorPassive.barrier.cooldown.chest matches 700.. run effect give @s resistance 1 10 true
execute as @s[scores={shiftingCheck=1}] at @s if score @s armorPassive.absorption matches 6 if score @s armorPassive.barrier.cooldown.chest matches 400.. run effect give @s resistance 1 10 true

execute as @s[nbt={HurtTime:9s},tag=!BarriedDamage,scores={shiftingCheck=1}] at @s if score @s armorPassive.absorption matches 1 if score @s armorPassive.barrier.cooldown.chest matches 1600.. run scoreboard players set @s armorPassive.barrier.cooldown.chest 0
execute as @s[nbt={HurtTime:9s},tag=!BarriedDamage,scores={shiftingCheck=1}] at @s if score @s armorPassive.absorption matches 2 if score @s armorPassive.barrier.cooldown.chest matches 1400.. run scoreboard players set @s armorPassive.barrier.cooldown.chest 0
execute as @s[nbt={HurtTime:9s},tag=!BarriedDamage,scores={shiftingCheck=1}] at @s if score @s armorPassive.absorption matches 3 if score @s armorPassive.barrier.cooldown.chest matches 1100.. run scoreboard players set @s armorPassive.barrier.cooldown.chest 0
execute as @s[nbt={HurtTime:9s},tag=!BarriedDamage,scores={shiftingCheck=1}] at @s if score @s armorPassive.absorption matches 4 if score @s armorPassive.barrier.cooldown.chest matches 900.. run scoreboard players set @s armorPassive.barrier.cooldown.chest 0
execute as @s[nbt={HurtTime:9s},tag=!BarriedDamage,scores={shiftingCheck=1}] at @s if score @s armorPassive.absorption matches 5 if score @s armorPassive.barrier.cooldown.chest matches 700.. run scoreboard players set @s armorPassive.barrier.cooldown.chest 0
execute as @s[nbt={HurtTime:9s},tag=!BarriedDamage,scores={shiftingCheck=1}] at @s if score @s armorPassive.absorption matches 6 if score @s armorPassive.barrier.cooldown.chest matches 400.. run scoreboard players set @s armorPassive.barrier.cooldown.chest 0

execute as @s[nbt={HurtTime:9s},tag=!BarriedDamage,scores={shiftingCheck=1}] at @s if score @s armorPassive.barrier.cooldown.chest matches 0 run tag @s add BarriedDamage
