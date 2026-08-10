advancement revoke @s only gameify:rightclickdetect

execute store result score #this right_click run time query gametime
scoreboard players add @s right_click 1
execute if entity @s[tag=!LivesBrain] unless score @s right_click = #this right_click run function gameify:right_click_once with entity @s
scoreboard players operation @s right_click = #this right_click
