tag @s add ArrowDummy

execute as @s at @s on origin if entity @s[type=!player] run kill @e[type=#arrows,tag=ArrowDummy]

tag @s remove ArrowDummy