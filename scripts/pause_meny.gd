extends Control

var er_pauset:bool = false: 
	set = set_pauset 
	
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("Escape"):
		er_pauset=!er_pauset

func set_pauset(verdi:bool) ->void:
	er_pauset=verdi
	get_tree().paused = er_pauset
	visible = er_pauset
	
func _on_resume_button_pressed():
	er_pauset=false

func _on_quit_button_pressed() -> void:
	er_pauset = false
	GameManager.coins=0
	get_tree().change_scene_to_file("res://scener/level_selection.tscn")
