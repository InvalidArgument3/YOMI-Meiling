extends SuperMove

func _frame_12():
	for i in range(3): # spawn 3 projectiles
		var projectile = host.spawn_object(preload("res://HongMeiling/characters/HongMeiling/Shot1.tscn"), 17, -21, true)
		var dir = xy_to_dir(data.x, data.y, "5")
		projectile.set_vel(dir.x, dir.y)
