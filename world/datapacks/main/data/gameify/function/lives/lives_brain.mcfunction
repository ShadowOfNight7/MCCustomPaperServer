execute as @s at @s run scoreboard players add @s brainLives 1
execute as @s at @s if score @s brainLives matches 1600.. run effect give @s wither 1 9 false
execute as @s at @s if score @s brainLives matches 1400.. run effect give @s blindness 1 9 false
execute as @s at @s if score @s brainLives matches 1200.. run effect give @s hunger 1 9 false
execute as @s at @s if score @s playerhit matches 1 run scoreboard players set @s brainLives 0
