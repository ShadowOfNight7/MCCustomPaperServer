rotate @s ~ ~1
scoreboard players remove @s enchant.disorientate 1
execute as @s at @s if score @s enchant.disorientate matches 1.. run function gameify:swords/disorientate3 with entity @s