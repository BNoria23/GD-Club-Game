extends CanvasLayer



func change_scene(target: String) -> void:
	$AnimationPlayer.play("dissolve")
	print("Dissolve")
	yield($AnimationPlayer, "animation_finished")
	get_tree().change_scene(target)
	print("Comeback")
	$AnimationPlayer.play_backwards("dissolve")


