extends MeilingState


const PROJECTILE_X = 10
const PROJECTILE_Y = - 16

func _frame_7():


	var obj = host.spawn_object(preload("res://characters/wizard/projectiles/FlameWave.tscn"), PROJECTILE_X, PROJECTILE_Y)
