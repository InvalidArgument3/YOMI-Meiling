extends SuperMove

func _frame_12(): #Change the number to the frame you want the projectiles to spawn
  host.spawn_object(preload("res://HongMeiling/characters/HongMeiling/Shot1.tscn"), 17, 6) #first number is x and second number is y, make sure the file pathing and name is right.
  #host.play_sound("res://HongMeiling/characters/HongMeiling/Sounds/se_tan01.wav")

func _frame_16(): #Change the number to the frame you want the projectiles to spawn
  host.spawn_object(preload("res://HongMeiling/characters/HongMeiling/Shot2.tscn"), 17, -3) #first number is x and second number is y, make sure the file pathing and name is right.

func _frame_20(): #Change the number to the frame you want the projectiles to spawn
  host.spawn_object(preload("res://HongMeiling/characters/HongMeiling/Shot3.tscn"), 17, -12) #first number is x and second number is y, make sure the file pathing and name is right.

func _frame_28(): #Change the number to the frame you want the projectiles to spawn
  host.spawn_object(preload("res://HongMeiling/characters/HongMeiling/Shot5.tscn"), 17, -30) #first number is x and second number is y, make sure the file pathing and name is right.

func _frame_32(): #Change the number to the frame you want the projectiles to spawn
  host.spawn_object(preload("res://HongMeiling/characters/HongMeiling/Shot6.tscn"), 17, -39) #first number is x and second number is y, make sure the file pathing and name is right.

func _frame_36(): #Change the number to the frame you want the projectiles to spawn
  host.spawn_object(preload("res://HongMeiling/characters/HongMeiling/Shot7.tscn"), 17, -48) #first number is x and second number is y, make sure the file pathing and name is right.
