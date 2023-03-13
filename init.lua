if mobs.mod and mobs.mod == "redo" then

mobs:register_mob("citizen", {
	-- An animal, npc, or a monster
	type = "npc",
	-- Aggressive, damages player when threatened
	passive = false,
	attack_type = "fight",
	damage = 2,
	-- Texture and model
	visual = "mesh",
	mesh = "character.b3d",
	textures = {
		{"character.png"},
	},
	blood_texture = "mobs_blood.png",
	-- Sounding
	makes_footstep_sound = true,
	-- Speeding and jumping
	walk_velocity = 1,
	run_velocity = 5,
	jump = true,
	stepheight = 0.6,
	-- Damaged by:
	water_damage = 0,
	lava_damage = 3,
	light_damage = 0,
	-- Animating
	animation = {
		walk_start = 122, walk_end = 182, -- walk
		run_start = 122, run_end = 182, -- run
		punch_start = 246, punch_end = 330, -- attack
	},
})

-- spawns in wood or grass
mobs:register_spawn("citizen", {"default:wood", "default:dirt_with_grass"}, 2, 0, 20000, 1, 31000)
-- register spawn egg
mobs:register_egg("citizen", "NPC Citizen", "")

end
