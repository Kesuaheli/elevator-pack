summon minecraft:item ~ ~ ~ { \
	Motion: [0.0d, 0.25d, 0.0d], \
	Item: { \
		"id": "minecraft:cat_spawn_egg", \
		"components": { \
			"minecraft:item_name": { "translate": "item.kesuaheli.elevator.empty_elevator_cage" }, \
			"minecraft:item_model": "elevator:empty_elevator_cage", \
			"minecraft:max_stack_size": 1, \
			"minecraft:attribute_modifiers": [ \
				{ \
					"type": "minecraft:block_interaction_range", \
					"amount": -1, \
					"operation": "add_multiplied_total", \
					"id": "kesuaheli.elevator:empty_elevator_cage_interaction_range", \
				} \
			], \
			"minecraft:tooltip_display": { \
				"hidden_components": [ \
					"minecraft:attribute_modifiers", \
				] \
			}, \
			"minecraft:rarity": "common", \
		}, \
	}, \
	PickupDelay: 10s,\
}
summon minecraft:item_display ~ ~ ~ { \
	item: { \
		id: "minecraft:command_block", \
		components: { \
			"minecraft:item_model": "elevator:elevator", \
		}, \
	}, \
	item_display: "head", \
	data: {kesuaheli.elevator: {elevator: {}}}, \
}

particle minecraft:dust_color_transition{from_color: [0.2, 0.2, 0.2], to_color: [0.7, 0.7, 0.7], scale: 1} ~ ~1 ~ 0.25 0.5 0.25 100 20
playsound elevator:elevator_place block @a ~ ~ ~ 1 2
return 1
