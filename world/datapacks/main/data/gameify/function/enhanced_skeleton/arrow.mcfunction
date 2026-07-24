tag @s add targetArrow

execute as @s[nbt=!{inGround:1b},scores={time=1}] at @s on origin if entity @s[tag=Enhanced] as @e[tag=targetArrow] at @s run function gameify:enhanced_skeleton/enhanced with entity @s

execute as @s[tag=Homing,nbt=!{inGround:1b}] at @s run function gameify:enhanced_skeleton/homing_arrow with entity @s

execute as @s[tag=Fast,nbt=!{inGround:1b},scores={time=1}] at @s run function gameify:enhanced_skeleton/fast_arrow with entity @s

tag @s remove targetArrow
