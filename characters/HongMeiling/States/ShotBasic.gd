extends CharacterState

const PROJECTILE_X = 10
const PROJECTILE_Y = - 16

func _frame_7():


	var dir = xy_to_dir(data["x"], data["y"])
	var obj = host.spawn_object(preload("res://HongMeiling/characters/HongMeiling/Shot1.tscn"), PROJECTILE_X, PROJECTILE_Y, true, {"dir":dir})



#host.play_sound("res://HongMeiling/characters/HongMeiling/Sounds/se_tan01.wav")

