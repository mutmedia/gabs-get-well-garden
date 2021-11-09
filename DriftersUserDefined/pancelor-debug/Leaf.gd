extends Drifter

func _process(_delta):
	if randf()<0.02:
		$Sprite.scale = Vector2(1.1, 0.9)
		$Sprite.rotation_degrees = rand_range(-20,20)
	else:
		$Sprite.scale = lerp($Sprite.scale, Vector2(0.9, 1.1), 0.02)
		$Sprite.rotation_degrees = lerp($Sprite.rotation_degrees, 0, 0.05)
		
func evolve():
	if randf()<0.02:
		# settle
		tweak()
	else:
		var dir = DirsOrthogonal[randi()%4]
		$Sprite.scale = Vector2(1.2, 0.8)
		if dir.x: $Sprite.flip_h = dir.x < 0
		
		intent_move = dir

func tweak():
	intent_spawn_drifter = "res://DriftersUserDefined/pancelor-debug/Sapling.tscn"
	intent_spawn_dir = Vector2.ZERO
	guts = 0
	
