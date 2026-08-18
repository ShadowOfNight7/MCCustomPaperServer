execute as @s at @s store result score @s enchant.disorientate run random value 1..100

execute as @s at @s if score @s enchant.disorientate matches 1..10 run effect give @s nausea 1 0 true
execute as @s at @s if score @s enchant.disorientate matches 1..10 run function gameify:swords/disorientate2 with entity @s