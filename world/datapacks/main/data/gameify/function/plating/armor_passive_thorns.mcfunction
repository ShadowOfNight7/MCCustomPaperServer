execute store result score @s random run random value 1..1000
tag @s add ThornsAttacker

execute as @s at @s if score @s playerhitplayer matches 1 if score @s armorPassive.absorption matches 1 if score @s random matches 1..300 on attacker run damage @s 1 thorns by @a[tag=ThornsAttacker,limit=1] from @a[tag=ThornsAttacker,limit=1]

execute as @s at @s if score @s playerhitplayer matches 1 if score @s armorPassive.absorption matches 2 if score @s random matches 1..300 on attacker run damage @s 2 thorns by @a[tag=ThornsAttacker,limit=1] from @a[tag=ThornsAttacker,limit=1]

execute as @s at @s if score @s playerhitplayer matches 1 if score @s armorPassive.absorption matches 3 if score @s random matches 1..400 on attacker run damage @s 3 thorns by @a[tag=ThornsAttacker,limit=1] from @a[tag=ThornsAttacker,limit=1]

execute as @s at @s if score @s playerhitplayer matches 1 if score @s armorPassive.absorption matches 4 if score @s random matches 1..400 on attacker run damage @s 4 thorns by @a[tag=ThornsAttacker,limit=1] from @a[tag=ThornsAttacker,limit=1]

execute as @s at @s if score @s playerhitplayer matches 1 if score @s armorPassive.absorption matches 5 if score @s random matches 1..500 on attacker run damage @s 5 thorns by @a[tag=ThornsAttacker,limit=1] from @a[tag=ThornsAttacker,limit=1]

execute as @s at @s if score @s playerhitplayer matches 1 if score @s armorPassive.absorption matches 6 if score @s random matches 1..700 on attacker run damage @s 7 thorns by @a[tag=ThornsAttacker,limit=1] from @a[tag=ThornsAttacker,limit=1]


tag @s remove ThornsAttacker