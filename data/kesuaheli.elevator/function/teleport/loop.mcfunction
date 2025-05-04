execute at @n[type=minecraft:interaction,distance=..0.5,nbt={data:{kesuaheli.elevator:{elevator:{}}}}] run return run function kesuaheli.elevator:teleport/confirm

scoreboard players add @s elev_timeout 1
execute if score @s elev_timeout < $maxValue elev_timeout positioned ^ ^ ^1 run return run function kesuaheli.elevator:teleport/loop
