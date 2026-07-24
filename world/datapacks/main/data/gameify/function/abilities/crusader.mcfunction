scoreboard players set @s cooldown 4000

execute as @s at @s rotated ~ 0 positioned ^ ^ ^25 run summon armor_stand ~ ~ ~ {Tags:["ArrowRain","ArrowRain2"],Marker:true,Invisible:true}
execute as @s at @s rotated ~ 0 positioned ^ ^ ^25 run summon armor_stand ~ ~ ~ {Tags:["ArrowRain","ArrowRain2"],Marker:true,Invisible:true}
execute as @s at @s rotated ~ 0 positioned ^ ^ ^25 run summon armor_stand ~ ~ ~ {Tags:["ArrowRain","ArrowRain2"],Marker:true,Invisible:true}
execute as @s at @s rotated ~ 0 positioned ^ ^ ^25 run summon armor_stand ~ ~ ~ {Tags:["ArrowRain","ArrowRain2"],Marker:true,Invisible:true}
execute as @s at @s rotated ~ 0 positioned ^ ^ ^25 run summon armor_stand ~ ~ ~ {Tags:["ArrowRain","ArrowRain2"],Marker:true,Invisible:true}
execute as @s at @s rotated ~ 0 positioned ^ ^ ^25 run summon armor_stand ~ ~ ~ {Tags:["ArrowRain","ArrowRain2"],Marker:true,Invisible:true}
execute as @s at @s rotated ~ 0 positioned ^ ^ ^25 run summon armor_stand ~ ~ ~ {Tags:["ArrowRain","ArrowRain2"],Marker:true,Invisible:true}
execute as @s at @s rotated ~ 0 positioned ^ ^ ^25 run summon armor_stand ~ ~ ~ {Tags:["ArrowRain","ArrowRain2"],Marker:true,Invisible:true}
execute as @s at @s rotated ~ 0 positioned ^ ^ ^25 run summon armor_stand ~ ~ ~ {Tags:["ArrowRain","ArrowRain2"],Marker:true,Invisible:true}
execute as @s at @s rotated ~ 0 positioned ^ ^ ^25 run summon armor_stand ~ ~ ~ {Tags:["ArrowRain","ArrowRain2"],Marker:true,Invisible:true}

execute as @s at @s as @e[tag=ArrowRain2,distance=14.5..15.5] at @s run spreadplayers ~ ~ 0 1 true @s
tag @e[tag=ArrowRain2] remove ArrowRain2

tellraw @s ["You used ",{"text":"Arrow Rain","bold":true,"color":"gray"}, "!"]