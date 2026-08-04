tag @s add Pearled

execute as @s at @s on origin if entity @s[type=player,scores={occultistAbility2=2400..}] run kill @e[tag=Pearled]

tag @s remove Pearled