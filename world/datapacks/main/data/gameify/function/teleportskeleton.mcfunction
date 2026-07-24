tag @s add MarkedTeleport
execute as @e[type=#skeletons,tag=Enhanced] at @s if score @e[tag=MarkedTeleport,limit=1] id = @s id run tag @e[tag=MarkedTeleport] remove MarkedTeleport
execute if entity @s[tag=MarkedTeleport] run kill @s
execute unless entity @a[distance=..200] run kill @s