execute as @e[type=minecraft:interaction, tag=need_setup] if data entity @s data."kesuaheli.elevator".elevator at @s if function kesuaheli.elevator:elevator/setup run tag @s remove need_setup

execute as @a[predicate=kesuaheli.elevator:jump,   tag=!up  ] at @s if function kesuaheli.elevator:teleport/up run tag @s add up
execute as @a[predicate=!kesuaheli.elevator:jump,  tag=up   ] run tag @s remove up
execute as @a[predicate=kesuaheli.elevator:sneak,  tag=!down] at @s if function kesuaheli.elevator:teleport/down run tag @s add down
execute as @a[predicate=!kesuaheli.elevator:sneak, tag=down ] run tag @s remove down
