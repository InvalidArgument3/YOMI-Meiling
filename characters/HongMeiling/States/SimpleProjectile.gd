extends CharacterState

export var _c_SimpleProjectile = 0
export (PackedScene) var SimpleProjectileScene
export var spawn_x_pos = 5
export var spawn_y_pos = -10
export var spawn_tick = 8
export var static_x_dir = 1
export var static_y_dir = 0
export var speed = 5
export var lifetime = 900

func _tick():
	if current_tick == spawn_tick:
		var dir_data = null
		if data != null:
			dir_data = {"dir":xy_to_dir(data.x, data.y),"speed":speed,"lifetime":lifetime}
		else:
			dir_data = {"dir":xy_to_dir(static_x_dir * host.get_facing_int(), static_y_dir),"speed":speed,"lifetime":lifetime}
		host.spawn_object(SimpleProjectileScene, spawn_x_pos, spawn_y_pos, true, dir_data)
