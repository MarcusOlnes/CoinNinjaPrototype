extends Control

@onready var panelMedUferdig = $Panel2


	
func _on_level_select_pressed():
	get_tree().change_scene_to_file("res://scener/level1.tscn")
	
func _on_stats_pressed():
	get_tree().change_scene_to_file("res://scener/level1.tscn")
func _on_stats_1_green_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scener/level1.tscn")

func _on_back_2_main_pressed():
	get_tree().change_scene_to_file("res://scener/main_menu.tscn")

func _on_stats_2_pressed():
	if Global.level1_fullført>0:
		get_tree().change_scene_to_file("res://scener/level2.tscn")
	else:
		panelMedUferdig.set_visible(true) 
	

func _on_stats_3_pressed():
	if Global.level2_fullført>0:
		get_tree().change_scene_to_file("res://scener/level3.tscn")
	else:
		panelMedUferdig.set_visible(true)

func _on_stats_4_pressed() :
	if Global.level3_fullført>0:
		get_tree().change_scene_to_file("res://scener/level4.tscn")
	else:
		panelMedUferdig.set_visible(true)
	
	

func _on_stats_5_pressed() :
	if Global.level4_fullført>0:
		get_tree().change_scene_to_file("res://scener/level5.tscn")
	else:
		panelMedUferdig.set_visible(true)
	
func _on_stats_6_pressed():
	if Global.level5_fullført>0:
		get_tree().change_scene_to_file("res://scener/level6.tscn")
	else:
		panelMedUferdig.set_visible(true)

func _on_stats_7_pressed():
	if Global.level6_fullført>0:
		get_tree().change_scene_to_file("res://scener/level7.tscn")
	else:
		panelMedUferdig.set_visible(true)

func _on_stats_8_pressed():
	if Global.level7_fullført>0:
		get_tree().change_scene_to_file("res://scener/level8.tscn")
	else:
		panelMedUferdig.set_visible(true)

func _on_stats_9_pressed():
	if Global.level8_fullført>0:
		get_tree().change_scene_to_file("res://scener/level9.tscn")
	else:
		panelMedUferdig.set_visible(true)
	
func _on_stats_10_pressed() :
	if Global.level9_fullført>0:
		get_tree().change_scene_to_file("res://scener/level10.tscn")
	else:
		panelMedUferdig.set_visible(true)
	
func _on_stats_11_pressed():
	if Global.level10_fullført>0:
		get_tree().change_scene_to_file("res://scener/level11.tscn")
	else:
		panelMedUferdig.set_visible(true)
	
func _on_stats_12_pressed():
	if Global.level11_fullført>0:
		get_tree().change_scene_to_file("res://scener/level12.tscn")
	else:
		panelMedUferdig.set_visible(true)


func _on_not_complete_pressed() -> void:
	panelMedUferdig.set_visible(false)


func _on_panel_2_visibility_changed() -> void:
	pass # Replace with function body.
