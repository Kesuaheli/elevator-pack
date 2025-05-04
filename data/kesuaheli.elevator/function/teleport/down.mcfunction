execute unless entity @n[type=minecraft:interaction, distance=..0.7, nbt={data: {kesuaheli.elevator: {elevator: {}}}}] run return 1

execute at @n[type=minecraft:interaction,distance=..0.7,nbt={data:{kesuaheli.elevator:{elevator:{}}}}] positioned ~ ~-1 ~ rotated ~ 90 run function kesuaheli.elevator:teleport/loop
scoreboard players reset @s elev_timeout
return 1
