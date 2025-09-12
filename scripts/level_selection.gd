extends Control

@onready var panelMedUferdig = $Panel2

var level1_fullført = true
var level2_fullført = false
var level3_fullført = false
var level4_fullført = false
var level5_fullført = false
var level6_fullført = false
var level7_fullført = false
var level8_fullført = false
var level9_fullført = false
var level10_fullført = false
var level11_fullført = false
var level12_fullført = false


func _on_level_select_pressed():
	get_tree().change_scene_to_file("res://scener/level1.tscn")
	
func _on_stats_pressed():
	get_tree().change_scene_to_file("res://scener/level1.tscn")
func _on_stats_1_green_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scener/level1.tscn")

func _on_back_2_main_pressed():
	get_tree().change_scene_to_file("res://scener/main_menu.tscn")

func _on_stats_2_pressed():
	if level1_fullført==true:
		get_tree().change_scene_to_file("res://scener/level2.tscn")
	else:
		panelMedUferdig.set_visible(true) 
	

func _on_stats_3_pressed():
	if level2_fullført:
		get_tree().change_scene_to_file("res://scener/level3.tscn")
	else:
		panelMedUferdig.set_visible(true)

func _on_stats_4_pressed() :
	if level3_fullført==true:
		get_tree().change_scene_to_file("res://scener/level4.tscn")
	else:
		panelMedUferdig.set_visible(true)
	
	

func _on_stats_5_pressed() :
	if level4_fullført:
		get_tree().change_scene_to_file("res://scener/level5.tscn")
	else:
		panelMedUferdig.set_visible(true)
	
func _on_stats_6_pressed():
	if level5_fullført:
		get_tree().change_scene_to_file("res://scener/level6.tscn")
	else:
		panelMedUferdig.set_visible(true)

func _on_stats_7_pressed():
	if level6_fullført:
		get_tree().change_scene_to_file("res://scener/level7.tscn")
	else:
		panelMedUferdig.set_visible(true)

func _on_stats_8_pressed():
	if level7_fullført:
		get_tree().change_scene_to_file("res://scener/level8.tscn")
	else:
		panelMedUferdig.set_visible(true)

func _on_stats_9_pressed():
	if level8_fullført:
		get_tree().change_scene_to_file("res://scener/level9.tscn")
	else:
		panelMedUferdig.set_visible(true)
	
func _on_stats_10_pressed() :
	if level9_fullført:
		get_tree().change_scene_to_file("res://scener/level10.tscn")
	else:
		panelMedUferdig.set_visible(true)
	
func _on_stats_11_pressed():
	if level10_fullført:
		get_tree().change_scene_to_file("res://scener/level11.tscn")
	else:
		panelMedUferdig.set_visible(true)
	
func _on_stats_12_pressed():
	if level11_fullført:
		get_tree().change_scene_to_file("res://scener/level12.tscn")
	else:
		panelMedUferdig.set_visible(true)


func _on_not_complete_pressed() -> void:
	panelMedUferdig.set_visible(false)


func _on_panel_2_visibility_changed() -> void:
	pass # Replace with function body.
