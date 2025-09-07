extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_level_select_pressed():
	get_tree().change_scene_to_file("res://scener/level1.tscn")
	
func _on_stats_pressed():
	get_tree().change_scene_to_file("res://scener/level1.tscn")

func _on_back_2_main_pressed():
	get_tree().change_scene_to_file("res://scener/main_menu.tscn")

func _on_stats_2_pressed():
	get_tree().change_scene_to_file("res://scener/level2.tscn")

func _on_stats_3_pressed():
	get_tree().change_scene_to_file("res://scener/level3.tscn")

func _on_stats_4_pressed() :
	get_tree().change_scene_to_file("res://scener/level4.tscn")

func _on_stats_5_pressed() :
	get_tree().change_scene_to_file("res://scener/level5.tscn")
	
func _on_stats_6_pressed():
	get_tree().change_scene_to_file("res://scener/level6.tscn")

func _on_stats_7_pressed():
	get_tree().change_scene_to_file("res://scener/level7.tscn")

func _on_stats_8_pressed():
	get_tree().change_scene_to_file("res://scener/level8.tscn")

func _on_stats_9_pressed():
	get_tree().change_scene_to_file("res://scener/level9.tscn")
	
func _on_stats_10_pressed() :
	get_tree().change_scene_to_file("res://scener/level10.tscn")
	
func _on_stats_11_pressed():
	get_tree().change_scene_to_file("res://scener/level11.tscn")
	
func _on_stats_12_pressed():
	get_tree().change_scene_to_file("res://scener/level12.tscn")
