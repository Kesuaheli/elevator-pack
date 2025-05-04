execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.5 0.25 0.01 300
execute at @s run playsound elevator:elevator_use ambient @a ~ ~1 ~ 0.75

particle minecraft:portal ~ ~0.5 ~ 0.25 0.25 0.25 0.01 300
playsound elevator:elevator_use ambient @a ~ ~1 ~ 0.75

tp @s ~ ~ ~
