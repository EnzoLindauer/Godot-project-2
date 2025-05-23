extends Control







func _on_play_pressed() -> void:
	get_tree().change_scene_to_file.bind("res://Scenes/Level1.tscn").call_deferred()


func _on_quit_pressed() -> void:
	get_tree().quit()
