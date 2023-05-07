extends CharacterState

const PROJECTILE_X = 10
const PROJECTILE_Y = - 16

func _frame_7():
	for i in range(3): # spawn 3 projectiles
		var dir = xy_to_dir(data["x"], data["y"])
		var offsetY = (i - 1) * 20 # adjust the Y offset for each projectile
		var offsetX = (i - 1) * 20 # adjust the X offset for each projectile
		var obj = host.spawn_object(preload("res://HongMeiling/characters/HongMeiling/Shot1.tscn"), PROJECTILE_X + offsetY, PROJECTILE_Y + offsetY, true, {"dir":dir})

#host.play_sound("res://HongMeiling/characters/HongMeiling/Sounds/se_tan01.wav")
