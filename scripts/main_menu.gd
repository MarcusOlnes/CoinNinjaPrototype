extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_level_select_pressed():
	get_tree().change_scene_to_file("res://scener/level_selection.tscn")
	

func _on_exit_pressed():
	get_tree().quit()
