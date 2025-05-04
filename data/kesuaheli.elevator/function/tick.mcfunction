execute as @a[predicate=kesuaheli.elevator:jump,   tag=!up  ] at @s if function kesuaheli.elevator:teleport/up run tag @s add up
execute as @a[predicate=!kesuaheli.elevator:jump,  tag=up   ] run tag @s remove up
execute as @a[predicate=kesuaheli.elevator:sneak,  tag=!down] at @s if function kesuaheli.elevator:teleport/down run tag @s add down
execute as @a[predicate=!kesuaheli.elevator:sneak, tag=down ] run tag @s remove down
