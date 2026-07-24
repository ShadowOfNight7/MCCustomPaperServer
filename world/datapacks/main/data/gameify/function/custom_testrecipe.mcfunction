scoreboard players set @s posZ 100

#Check if Slots Match
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[0] store result score @s posX run data get block ~ ~ ~ Items[0].Slot
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[0] run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[0].slot store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[0].slot
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[0].slot run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

#Check if IDS match
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[0].components."minecraft:custom_data".item_id store result score @s posX run data get block ~ ~ ~ Items[0].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[0].components."minecraft:custom_data".item_id unless data block ~ ~ ~ Items[0].id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[0].item.components."minecraft:custom_data".item_id store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[0].item.components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[0].item.components."minecraft:custom_data".item_id unless data entity @s equipment.mainhand.components."minecraft:container"[0].item.id run scoreboard players set @s posX -999

#If no IDs check if Items(NormalIds match)
execute if score @s posZ matches 100 run scoreboard players set @s posY 1
execute if score @s posZ matches 100 if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 as @e[tag=CustomHold] at @s run data modify entity @s Tags prepend from entity @s equipment.mainhand.components."minecraft:container"[0].item.id
execute if score @s posZ matches 100 if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 as @s at @s store success score @s posY run data modify entity @e[tag=CustomHold,limit=1] Tags[0] set from block ~ ~ ~ Items[0].id
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 50
execute if score @s posZ matches 100 as @s at @s if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 run scoreboard players set @s posZ 50
execute if score @s posZ matches 50 if score @s posY matches 0 run scoreboard players set @s posZ 100
execute if score @s posZ matches 50 unless score @s posY matches 0 run scoreboard players set @s posZ 0
execute as @e[tag=CustomHold] at @s run data modify entity @s Tags set value ["CustomHold"] 


#Check if Slots Match
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[1] store result score @s posX run data get block ~ ~ ~ Items[1].Slot
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[1] run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[1].slot store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[1].slot
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[1].slot run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

#Check if IDS match
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[1].components."minecraft:custom_data".item_id store result score @s posX run data get block ~ ~ ~ Items[1].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[1].components."minecraft:custom_data".item_id unless data block ~ ~ ~ Items[1].id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[1].item.components."minecraft:custom_data".item_id store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[1].item.components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[1].item.components."minecraft:custom_data".item_id unless data entity @s equipment.mainhand.components."minecraft:container"[1].item.id run scoreboard players set @s posX -999

#If no IDs check if Items(NormalIds match)
execute if score @s posZ matches 100 run scoreboard players set @s posY 1
execute if score @s posZ matches 100 if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 as @e[tag=CustomHold] at @s run data modify entity @s Tags prepend from entity @s equipment.mainhand.components."minecraft:container"[1].item.id
execute if score @s posZ matches 100 if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 as @s at @s store success score @s posY run data modify entity @e[tag=CustomHold,limit=1] Tags[0] set from block ~ ~ ~ Items[1].id
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 50
execute if score @s posZ matches 100 as @s at @s if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 run scoreboard players set @s posZ 50
execute if score @s posZ matches 50 if score @s posY matches 0 run scoreboard players set @s posZ 100
execute if score @s posZ matches 50 unless score @s posY matches 0 run scoreboard players set @s posZ 0
execute as @e[tag=CustomHold] at @s run data modify entity @s Tags set value ["CustomHold"] 


#Check if Slots Match
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[2] store result score @s posX run data get block ~ ~ ~ Items[2].Slot
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[2] run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[2].slot store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[2].slot
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[2].slot run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

#Check if IDS match
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[2].components."minecraft:custom_data".item_id store result score @s posX run data get block ~ ~ ~ Items[2].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[2].components."minecraft:custom_data".item_id unless data block ~ ~ ~ Items[21].id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[2].item.components."minecraft:custom_data".item_id store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[2].item.components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[2].item.components."minecraft:custom_data".item_id unless data entity @s equipment.mainhand.components."minecraft:container"[2].item.id run scoreboard players set @s posX -999

#If no IDs check if Items(NormalIds match)
execute if score @s posZ matches 100 run scoreboard players set @s posY 1
execute if score @s posZ matches 100 if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 as @e[tag=CustomHold] at @s run data modify entity @s Tags prepend from entity @s equipment.mainhand.components."minecraft:container"[2].item.id
execute if score @s posZ matches 100 if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 as @s at @s store success score @s posY run data modify entity @e[tag=CustomHold,limit=1] Tags[0] set from block ~ ~ ~ Items[2].id
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 50
execute if score @s posZ matches 100 as @s at @s if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 run scoreboard players set @s posZ 50
execute if score @s posZ matches 50 if score @s posY matches 0 run scoreboard players set @s posZ 100
execute if score @s posZ matches 50 unless score @s posY matches 0 run scoreboard players set @s posZ 0
execute as @e[tag=CustomHold] at @s run data modify entity @s Tags set value ["CustomHold"] 


#Check if Slots Match
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[3] store result score @s posX run data get block ~ ~ ~ Items[3].Slot
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[3] run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[3].slot store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[3].slot
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[3].slot run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

#Check if IDS match
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[3].components."minecraft:custom_data".item_id store result score @s posX run data get block ~ ~ ~ Items[3].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[3].components."minecraft:custom_data".item_id unless data block ~ ~ ~ Items[3].id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[3].item.components."minecraft:custom_data".item_id store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[3].item.components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[3].item.components."minecraft:custom_data".item_id unless data entity @s equipment.mainhand.components."minecraft:container"[3].item.id run scoreboard players set @s posX -999

#If no IDs check if Items(NormalIds match)
execute if score @s posZ matches 100 run scoreboard players set @s posY 1
execute if score @s posZ matches 100 if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 as @e[tag=CustomHold] at @s run data modify entity @s Tags prepend from entity @s equipment.mainhand.components."minecraft:container"[3].item.id
execute if score @s posZ matches 100 if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 as @s at @s store success score @s posY run data modify entity @e[tag=CustomHold,limit=1] Tags[0] set from block ~ ~ ~ Items[3].id
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 50
execute if score @s posZ matches 100 as @s at @s if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 run scoreboard players set @s posZ 50
execute if score @s posZ matches 50 if score @s posY matches 0 run scoreboard players set @s posZ 100
execute if score @s posZ matches 50 unless score @s posY matches 0 run scoreboard players set @s posZ 0
execute as @e[tag=CustomHold] at @s run data modify entity @s Tags set value ["CustomHold"] 


#Check if Slots Match
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[4] store result score @s posX run data get block ~ ~ ~ Items[4].Slot
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[4] run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[4].slot store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[4].slot
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[4].slot run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

#Check if IDS match
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[4].components."minecraft:custom_data".item_id store result score @s posX run data get block ~ ~ ~ Items[4].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[4].components."minecraft:custom_data".item_id unless data block ~ ~ ~ Items[4].id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[4].item.components."minecraft:custom_data".item_id store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[4].item.components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[4].item.components."minecraft:custom_data".item_id unless data entity @s equipment.mainhand.components."minecraft:container"[4].item.id run scoreboard players set @s posX -999

#If no IDs check if Items(NormalIds match)
execute if score @s posZ matches 100 run scoreboard players set @s posY 1
execute if score @s posZ matches 100 if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 as @e[tag=CustomHold] at @s run data modify entity @s Tags prepend from entity @s equipment.mainhand.components."minecraft:container"[4].item.id
execute if score @s posZ matches 100 if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 as @s at @s store success score @s posY run data modify entity @e[tag=CustomHold,limit=1] Tags[0] set from block ~ ~ ~ Items[4].id
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 50
execute if score @s posZ matches 100 as @s at @s if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 run scoreboard players set @s posZ 50
execute if score @s posZ matches 50 if score @s posY matches 0 run scoreboard players set @s posZ 100
execute if score @s posZ matches 50 unless score @s posY matches 0 run scoreboard players set @s posZ 0
execute as @e[tag=CustomHold] at @s run data modify entity @s Tags set value ["CustomHold"] 


#Check if Slots Match
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[5] store result score @s posX run data get block ~ ~ ~ Items[5].Slot
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[5] run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[5].slot store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[5].slot
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[5].slot run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

#Check if IDS match
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[5].components."minecraft:custom_data".item_id store result score @s posX run data get block ~ ~ ~ Items[5].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[5].components."minecraft:custom_data".item_id unless data block ~ ~ ~ Items[5].id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[5].item.components."minecraft:custom_data".item_id store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[5].item.components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[5].item.components."minecraft:custom_data".item_id unless data entity @s equipment.mainhand.components."minecraft:container"[5].item.id run scoreboard players set @s posX -999

#If no IDs check if Items(NormalIds match)
execute if score @s posZ matches 100 run scoreboard players set @s posY 1
execute if score @s posZ matches 100 if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 as @e[tag=CustomHold] at @s run data modify entity @s Tags prepend from entity @s equipment.mainhand.components."minecraft:container"[5].item.id
execute if score @s posZ matches 100 if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 as @s at @s store success score @s posY run data modify entity @e[tag=CustomHold,limit=1] Tags[0] set from block ~ ~ ~ Items[5].id
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 50
execute if score @s posZ matches 100 as @s at @s if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 run scoreboard players set @s posZ 50
execute if score @s posZ matches 50 if score @s posY matches 0 run scoreboard players set @s posZ 100
execute if score @s posZ matches 50 unless score @s posY matches 0 run scoreboard players set @s posZ 0
execute as @e[tag=CustomHold] at @s run data modify entity @s Tags set value ["CustomHold"] 


#Check if Slots Match
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[6] store result score @s posX run data get block ~ ~ ~ Items[6].Slot
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[6] run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[6].slot store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[6].slot
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[6].slot run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

#Check if IDS match
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[6].components."minecraft:custom_data".item_id store result score @s posX run data get block ~ ~ ~ Items[6].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[6].components."minecraft:custom_data".item_id unless data block ~ ~ ~ Items[6].id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[6].item.components."minecraft:custom_data".item_id store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[6].item.components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[6].item.components."minecraft:custom_data".item_id unless data entity @s equipment.mainhand.components."minecraft:container"[6].item.id run scoreboard players set @s posX -999

#If no IDs check if Items(NormalIds match)
execute if score @s posZ matches 100 run scoreboard players set @s posY 1
execute if score @s posZ matches 100 if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 as @e[tag=CustomHold] at @s run data modify entity @s Tags prepend from entity @s equipment.mainhand.components."minecraft:container"[6].item.id
execute if score @s posZ matches 100 if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 as @s at @s store success score @s posY run data modify entity @e[tag=CustomHold,limit=1] Tags[0] set from block ~ ~ ~ Items[6].id
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 50
execute if score @s posZ matches 100 as @s at @s if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 run scoreboard players set @s posZ 50
execute if score @s posZ matches 50 if score @s posY matches 0 run scoreboard players set @s posZ 100
execute if score @s posZ matches 50 unless score @s posY matches 0 run scoreboard players set @s posZ 0
execute as @e[tag=CustomHold] at @s run data modify entity @s Tags set value ["CustomHold"] 


#Check if Slots Match
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[7] store result score @s posX run data get block ~ ~ ~ Items[7].Slot
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[7] run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[7].slot store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[7].slot
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[7].slot run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

#Check if IDS match
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[7].components."minecraft:custom_data".item_id store result score @s posX run data get block ~ ~ ~ Items[7].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[7].components."minecraft:custom_data".item_id unless data block ~ ~ ~ Items[7].id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[7].item.components."minecraft:custom_data".item_id store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[7].item.components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[7].item.components."minecraft:custom_data".item_id unless data entity @s equipment.mainhand.components."minecraft:container"[7].item.id run scoreboard players set @s posX -999

#If no IDs check if Items(NormalIds match)
execute if score @s posZ matches 100 run scoreboard players set @s posY 1
execute if score @s posZ matches 100 if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 as @e[tag=CustomHold] at @s run data modify entity @s Tags prepend from entity @s equipment.mainhand.components."minecraft:container"[7].item.id
execute if score @s posZ matches 100 if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 as @s at @s store success score @s posY run data modify entity @e[tag=CustomHold,limit=1] Tags[0] set from block ~ ~ ~ Items[7].id
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 50
execute if score @s posZ matches 100 as @s at @s if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 run scoreboard players set @s posZ 50
execute if score @s posZ matches 50 if score @s posY matches 0 run scoreboard players set @s posZ 100
execute if score @s posZ matches 50 unless score @s posY matches 0 run scoreboard players set @s posZ 0
execute as @e[tag=CustomHold] at @s run data modify entity @s Tags set value ["CustomHold"] 


#Check if Slots Match
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[8] store result score @s posX run data get block ~ ~ ~ Items[8].Slot
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[8] run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[8].slot store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[8].slot
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[8].slot run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

#Check if IDS match
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[8].components."minecraft:custom_data".item_id store result score @s posX run data get block ~ ~ ~ Items[8].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[8].components."minecraft:custom_data".item_id unless data block ~ ~ ~ Items[8].id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[8].item.components."minecraft:custom_data".item_id store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[8].item.components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[8].item.components."minecraft:custom_data".item_id unless data entity @s equipment.mainhand.components."minecraft:container"[8].item.id run scoreboard players set @s posX -999

#If no IDs check if Items(NormalIds match)
execute if score @s posZ matches 100 run scoreboard players set @s posY 1
execute if score @s posZ matches 100 if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 as @e[tag=CustomHold] at @s run data modify entity @s Tags prepend from entity @s equipment.mainhand.components."minecraft:container"[8].item.id
execute if score @s posZ matches 100 if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 as @s at @s store success score @s posY run data modify entity @e[tag=CustomHold,limit=1] Tags[0] set from block ~ ~ ~ Items[8].id
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 50
execute if score @s posZ matches 100 as @s at @s if score @s posX matches 0 if score @e[tag=CustomHold,limit=1] posX matches 0 run scoreboard players set @s posZ 50
execute if score @s posZ matches 50 if score @s posY matches 0 run scoreboard players set @s posZ 100
execute if score @s posZ matches 50 unless score @s posY matches 0 run scoreboard players set @s posZ 0
execute as @e[tag=CustomHold] at @s run data modify entity @s Tags set value ["CustomHold"] 




execute as @e[tag=CustomHold] store result score @s posY run data get entity @s equipment.mainhand.components."minecraft:custom_data".result

execute if score @s posZ matches 100 if score @e[tag=CustomHold,limit=1] posY matches 1 run summon item ~ ~1 ~ {Motion:[0d,0.3d,0d],Item:{id:command_block,count:1,components:{custom_name:[{"text":"Perfect Diamond","italic":false,"color":"gold"}],lore:[[{"text":"Only through endless modification has it reached perfection...","italic":false,"color":"gray"}],[{"text":"Perhaps that says more about us than it does about it.","italic":false,"color":"gray"}]],rarity:uncommon,item_model:"minecraft:diamond_nautilus_armor",custom_data:{item_id:15b}}}}
execute if score @s posZ matches 100 if score @e[tag=CustomHold,limit=1] posY matches 2 run summon item ~ ~1 ~ {Motion:[0d,0.3d,0d],Item:{id:command_block,count:1,components:{custom_name:[{"text":"Heart of Gold","italic":false,"color":"gold"}],lore:[[{"text":"A substance so pure, rumoured to be able to cleanse the sin of other materials...","italic":false,"color":"gray"}],[{"text":"The fifth of seven and the one to bring balance to them...","italic":false,"color":"gray"}],[{"text":"","color":"gray"}],[{"text":"P.S. Something about a hitchhiker... and, strangely, the number forty-two?","italic":false,"color":"gray"}]],rarity:uncommon,item_model:"minecraft:golden_nautilus_armor",custom_data:{item_id:13b}}}}
execute if score @s posZ matches 100 if score @e[tag=CustomHold,limit=1] posY matches 3 run summon item ~ ~1 ~ {Motion:[0d,0.3d,0d],Item:{id:command_block,count:1,components:{custom_name:[{"text":"True Netherite","italic":false,"color":"gold"}],lore:[[{"text":"It's missing a chunk in the corner. Whatever, it still works.","italic":false,"color":"gray"}]],rarity:uncommon,item_model:"minecraft:dragon_egg",custom_data:{item_id:18b}}}}
execute if score @s posZ matches 100 if score @e[tag=CustomHold,limit=1] posY matches 4 run summon item ~ ~1 ~ {Motion:[0d,0.3d,0d],Item:{id:command_block,count:1,components:{custom_name:[{"text":"Galvanized Steel","italic":false,"color":"gold"}],lore:[[{"text":"Why is it galvanized? I have no idea, it's not like iron rusts in this game.","italic":false,"color":"gray"}]],rarity:uncommon,item_model:"minecraft:lodestone",custom_data:{item_id:9b}}}}
execute if score @s posZ matches 100 if score @e[tag=CustomHold,limit=1] posY matches 5 run summon item ~ ~1 ~ {Motion:[0d,0.3d,0d],Item:{id:totem_of_undying,count:1,components:{lore:[[{"text":"Shall its death have been in vain? Only time will tell...","italic":false,"color":"gray"}]]}}}
execute if score @s posZ matches 100 if score @e[tag=CustomHold,limit=1] posY matches 6 run summon item ~ ~1 ~ {Motion:[0d,0.3d,0d],Item:{id:anvil,count:1}}

execute if score @s posZ matches 100 run particle reverse_portal ~ ~0.75 ~ 0.05 0.05 0.05 0.5 100 normal

# {Item:{id:command_block,count:1,components:{custom_name:[{"text":"Perfect Diamond","italic":false,"color":"gold"}re:[[{"text":"Only through endless modification has it reached perfection...","italic":false,"color":"gray"}],[{"text":"Perhaps that says more about us than it does about it.","italic":false,"color":"gray"}]],rarity:uncommon,item_model:"minecraft:diamond_nautilus_armor",custom_data:{item_id:2b}}}}

#Remove items
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[8] store result score @s posX run data get block ~ ~ ~ Items[8].count
scoreboard players remove @s posX 1
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[8] store result block ~ ~ ~ Items[8].count byte 1 run scoreboard players get @s posX
execute if score @s posZ matches 100 if score @s posX matches 0 run data remove block ~ ~ ~ Items[8]

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[7] store result score @s posX run data get block ~ ~ ~ Items[7].count
scoreboard players remove @s posX 1
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[7] store result block ~ ~ ~ Items[7].count byte 1 run scoreboard players get @s posX
execute if score @s posZ matches 100 if score @s posX matches 0 run data remove block ~ ~ ~ Items[7]

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[6] store result score @s posX run data get block ~ ~ ~ Items[6].count
scoreboard players remove @s posX 1
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[6] store result block ~ ~ ~ Items[6].count byte 1 run scoreboard players get @s posX
execute if score @s posZ matches 100 if score @s posX matches 0 run data remove block ~ ~ ~ Items[6]

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[5] store result score @s posX run data get block ~ ~ ~ Items[5].count
scoreboard players remove @s posX 1
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[5] store result block ~ ~ ~ Items[5].count byte 1 run scoreboard players get @s posX
execute if score @s posZ matches 100 if score @s posX matches 0 run data remove block ~ ~ ~ Items[5]

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[4] store result score @s posX run data get block ~ ~ ~ Items[4].count
scoreboard players remove @s posX 1
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[4] store result block ~ ~ ~ Items[4].count byte 1 run scoreboard players get @s posX
execute if score @s posZ matches 100 if score @s posX matches 0 run data remove block ~ ~ ~ Items[4]

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[3] store result score @s posX run data get block ~ ~ ~ Items[3].count
scoreboard players remove @s posX 1
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[3] store result block ~ ~ ~ Items[3].count byte 1 run scoreboard players get @s posX
execute if score @s posZ matches 100 if score @s posX matches 0 run data remove block ~ ~ ~ Items[3]

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[2] store result score @s posX run data get block ~ ~ ~ Items[2].count
scoreboard players remove @s posX 1
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[2] store result block ~ ~ ~ Items[2].count byte 1 run scoreboard players get @s posX
execute if score @s posZ matches 100 if score @s posX matches 0 run data remove block ~ ~ ~ Items[2]

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[1] store result score @s posX run data get block ~ ~ ~ Items[1].count
scoreboard players remove @s posX 1
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[1] store result block ~ ~ ~ Items[1].count byte 1 run scoreboard players get @s posX
execute if score @s posZ matches 100 if score @s posX matches 0 run data remove block ~ ~ ~ Items[1]

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[0] store result score @s posX run data get block ~ ~ ~ Items[0].count
scoreboard players remove @s posX 1
execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[0] store result block ~ ~ ~ Items[0].count byte 1 run scoreboard players get @s posX
execute if score @s posZ matches 100 if score @s posX matches 0 run data remove block ~ ~ ~ Items[0]
