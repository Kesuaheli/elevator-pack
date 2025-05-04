summon minecraft:item ~ ~ ~ { \
		Motion: [0.0d, 0.25d, 0.0d], \
		Item: { \
			"id": "minecraft:chain_command_block", \
			"components": { \
				"minecraft:item_name": { "translate": "item.kesuaheli.elevator.empty_elevator_cage" }, \
				"minecraft:item_model": "elevator:empty_elevator_cage", \
				"minecraft:consumable": { \
					"animation": "none", \
					"consume_seconds": 3.4e+38, \
					"has_consume_particles": false, \
				}, \
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
}

particle minecraft:dust{color: [0.5, 0.5, 0.5], scale: 1} ~ ~.4 ~ 0.125 0.0625 0.125 100 10
playsound elevator:elevator_place block @a ~ ~ ~ 1 2
return 1
