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
export var projectile_count = 3
export var projectile_spread = 30

func _ready():
	SimpleProjectileScene = ResourceLoader.load("res://HongMeiling/characters/HongMeiling/Shot1.tscn")

func _tick():
	if current_tick == spawn_tick:
		var dir = xy_to_dir(data["x"], data["y"])
		for x in range(projectile_count):
			var dirAngle = Utils.ang2vec(float(fixed.add(fixed.vec_to_angle(str(dir.x),str(dir.y)),str(deg2rad((projectile_spread/2)-((projectile_spread/projectile_count)*(x+1)))))))
			var newSpeed = fixed.mul(str(speed),fixed.vec_len(str(dir.x),str(dir.y)))
			var dir_data = {"dir":xy_to_dir(dirAngle.x,dirAngle.y),"speed":newSpeed,"lifetime":lifetime}
			host.spawn_object(SimpleProjectileScene, spawn_x_pos, spawn_y_pos, true, dir_data)
