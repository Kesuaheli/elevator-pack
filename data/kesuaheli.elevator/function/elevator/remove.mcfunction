execute unless predicate kesuaheli.elevator:holding_empty_elevator_cage run return run data remove entity @n[type=minecraft:interaction, distance=..0.1, nbt={data: {kesuaheli.elevator: {elevator: {}}}}] attack

kill @n[type=minecraft:interaction,  distance=..0.1, nbt={data: {kesuaheli.elevator: {elevator: {}}}}]
kill @n[type=minecraft:item_display, distance=..0.1, nbt={data: {kesuaheli.elevator: {elevator: {}}}}]

particle minecraft:dust_color_transition{from_color: [0.7, 0.7, 0.7], to_color: [0.2, 0.2, 0.2], scale: 1} ~ ~1 ~ 0.25 0.5 0.25 10 20
playsound elevator:elevator_remove block @a ~ ~ ~ 1 2


item modify entity @s weapon.mainhand kesuaheli.elevator:elevator_cage
