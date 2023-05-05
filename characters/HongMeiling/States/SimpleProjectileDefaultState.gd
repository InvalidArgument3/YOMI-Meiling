extends ObjectState

var hit_something
var lifetime

func _frame_0():
	lifetime = data["lifetime"]
	host.set_grounded(false)
	var dir = data["dir"]
	var move_vec = fixed.normalized_vec_times(str(dir.x), str(dir.y), str(data["speed"]))
	host.apply_force(move_vec.x, move_vec.y)
	host.sprite.rotation = float(fixed.vec_to_angle(data["dir"].x, data["dir"].y))
	host.particles.rotation = float(fixed.vec_to_angle(data["dir"].x, data["dir"].y))

func _tick():
	var pos = host.get_pos()
	host.update_grounded()
	if current_tick > 1 and not hit_something and host.is_grounded() or pos.x < - host.stage_width or pos.x > host.stage_width:
		fizzle()
		host.hurtbox.width = 0
		host.hurtbox.height = 0
		pass
	if current_tick > lifetime:
		fizzle()
		host.hurtbox.width = 0
		host.hurtbox.height = 0
		pass
	elif not hit_something:
		host.apply_forces()
		host.update_data()

func _got_parried():
	fizzle()

func fizzle():
	hit_something = true
	host.disable()
	terminate_hitboxes()

func _on_hit_something(obj, hitbox):
	._on_hit_something(obj, hitbox)
	fizzle()
