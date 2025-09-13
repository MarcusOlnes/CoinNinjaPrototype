extends Control

@onready var panelMedUferdig = $gullknapper/Panel2

#knapp-referanser:
@onready var hvit1 = $"hvite knapper/Stats"
@onready var hvit2 = $"hvite knapper/Stats2"
@onready var hvit3 = $"hvite knapper/Stats3"
@onready var hvit4 = $"hvite knapper/Stats4"
@onready var hvit5 = $"hvite knapper/Stats5"
@onready var hvit6 = $"hvite knapper/Stats6"
@onready var hvit7 = $"hvite knapper/Stats7"
@onready var hvit8 = $"hvite knapper/Stats8"
@onready var hvit9 = $"hvite knapper/Stats9"
@onready var hvit10 = $"hvite knapper/Stats10"
@onready var hvit11 = $"hvite knapper/Stats11"
@onready var hvit12 = $"hvite knapper/Stats12"

@onready var grønn1 = $"grønne knapper/grønn1"
@onready var grønn2 =$"grønne knapper/grønn2"
@onready var grønn3 =$"grønne knapper/grønn3"
@onready var grønn4 =$"grønne knapper/grønn4"
@onready var grønn5 =$"grønne knapper/grønn5"
@onready var grønn6 =$"grønne knapper/grønn6"
@onready var grønn7 =$"grønne knapper/grønn7"
@onready var grønn8 =$"grønne knapper/grønn8"
@onready var grønn9 =$"grønne knapper/grønn9"
@onready var grønn10 =$"grønne knapper/grønn10"
@onready var grønn11 =$"grønne knapper/grønn11"
@onready var grønn12 =$"grønne knapper/grønn12"

@onready var rød_2 = $"rød knapper/rød_2"
@onready var rød_3 =$"rød knapper/rød_3"
@onready var rød_4 =$"rød knapper/rød_4"
@onready var rød_5 =$"rød knapper/rød_5"
@onready var rød_6 =$"rød knapper/rød_6"
@onready var rød_7 =$"rød knapper/rød_7"
@onready var rød_8 =$"rød knapper/rød_8"
@onready var rød_9 =$"rød knapper/rød_9"
@onready var rød_10 =$"rød knapper/rød_10"
@onready var rød_11=$"rød knapper/rød_11"
@onready var rød_12=$"rød knapper/rød_12"

@onready var gull1=$gullknapper/gull1
@onready var gull2 = $gullknapper/gull2
@onready var gull3=$gullknapper/gull3
@onready var gull4=$gullknapper/gull4
@onready var gull5=$gullknapper/gull5
@onready var gull6=$gullknapper/gull6
@onready var gull7=$gullknapper/gull7
@onready var gull8=$gullknapper/gull8
@onready var gull9=$gullknapper/gull9
@onready var gull10=$gullknapper/gull10
@onready var gull11=$gullknapper/gull11
@onready var gull12=$gullknapper/gull12

#kalles ved starten av hver gang filen kjøres: sjekker om levler er fullførte
func _ready():
	if Global.level1_fullført>0:
		grønn1.visible = true
		hvit1.visible=false
		rød_2.visible = false
		if Global.coins_completed_level1:
			gull1.visible=true
			grønn1.visible=false
			
	if Global.level2_fullført>0:
		grønn2.visible = true
		rød_3.visible = false
		if Global.coins_completed_level2:
			gull2.visible=true
			grønn2.visible=false
			
	if Global.level3_fullført>0:
		grønn3.visible = true
		rød_4.visible = false
		if Global.coins_completed_level3:
			gull3.visible=true
			grønn3.visible=false
			
	if Global.level4_fullført>0:
		grønn4.visible = true
		rød_5.visible = false
		if Global.coins_completed_level4:
			gull4.visible=true
			grønn4.visible=false
			
	if Global.level5_fullført>0:
		grønn5.visible = true
		rød_6.visible = false
		if Global.coins_completed_level5:
			gull5.visible=true
			grønn5.visible=false
			
	if Global.level6_fullført>0:
		grønn6.visible = true
		rød_7.visible = false
		if Global.coins_completed_level6:
			gull6.visible=true
			grønn6.visible=false
			
	if Global.level7_fullført>0:
		grønn7.visible = true
		rød_8.visible = false
		if Global.coins_completed_level7:
			gull7.visible=true
			grønn7.visible=false
			
	if Global.level8_fullført>0:
		grønn8.visible = true
		rød_9.visible = false
		if Global.coins_completed_level8:
			gull8.visible=true
			grønn8.visible=false
			
	if Global.level9_fullført>0:
		grønn9.visible = true
		rød_10.visible = false
		if Global.coins_completed_level9:
			gull9.visible=true
			grønn9.visible=false
			
	if Global.level10_fullført>0:
		grønn10.visible = true
		rød_11.visible = false
		if Global.coins_completed_level10:
			gull10.visible=true
			grønn10.visible=false
			
	if Global.level11_fullført>0:
		grønn11.visible = true
		rød_12.visible = false
		if Global.coins_completed_level11:
			gull11.visible=true
			grønn11.visible=false
			
	if Global.level12_fullført>0:
		grønn12.visible = true
		if Global.coins_completed_level12:
			gull12.visible=true
			grønn12.visible=false
			
func _on_level_select_pressed():
	get_tree().change_scene_to_file("res://scener/level1.tscn")
func _on_back_2_main_pressed():
	get_tree().change_scene_to_file("res://scener/main_menu.tscn")
#-------------------------------------------------------------------------------
#FUNKSJONER FOR DE HVITE KNAPPENE - SCENENYTTE TIL TILHØRENDE LEVLER
func _on_stats_pressed():
	get_tree().change_scene_to_file("res://scener/level1.tscn")
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
#--------------------------------------------------------------------------
#TRENGER JEG DENNE? LOL
func _on_not_complete_pressed() -> void:
	panelMedUferdig.set_visible(false)

#-------------------------------------------------------------------------------
#FUNKSJONER FOR DE RØD KNAPPENE - SYNLIGGJØRING AV COMPLETE OTHER LEVELS SKJERM
func _on_rød_2_pressed() -> void:
	panelMedUferdig.set_visible(true) 
func _on_rød_3_pressed() -> void:
	panelMedUferdig.set_visible(true) 
func _on_rød_4_pressed() -> void:
	panelMedUferdig.set_visible(true) 
func _on_rød_5_pressed() -> void:
	panelMedUferdig.set_visible(true) 
func _on_rød_6_pressed() -> void:
	panelMedUferdig.set_visible(true) 
func _on_rød_7_pressed() -> void:
	panelMedUferdig.set_visible(true) 
func _on_rød_8_pressed() -> void:
	panelMedUferdig.set_visible(true) 
func _on_rød_9_pressed() -> void:
	panelMedUferdig.set_visible(true) 
func _on_rød_10_pressed() -> void:
	panelMedUferdig.set_visible(true) 
func _on_rød_11_pressed() -> void:
	panelMedUferdig.set_visible(true) 
func _on_rød_12_pressed() -> void:
	panelMedUferdig.set_visible(true) 
	
#-------------------------------------------------------------------------------
#FUNKSJONER FOR DE GRØNNE KNAPPENE - SAMME HANDLING SOM DE HVITE
func _on_grønn_1_pressed() -> void:
		get_tree().change_scene_to_file("res://scener/level1.tscn")
func _on_grønn_2_pressed() -> void:
		get_tree().change_scene_to_file("res://scener/level2.tscn")
func _on_grønn_3_pressed() -> void:
		get_tree().change_scene_to_file("res://scener/level3.tscn")
func _on_grønn_4_pressed() -> void:
		get_tree().change_scene_to_file("res://scener/level4.tscn")
func _on_grønn_5_pressed() -> void:
	get_tree().change_scene_to_file("res://scener/level5.tscn")
func _on_grønn_6_pressed() -> void:
	get_tree().change_scene_to_file("res://scener/level6.tscn")
func _on_grønn_7_pressed() -> void:
		get_tree().change_scene_to_file("res://scener/level7.tscn")
func _on_grønn_8_pressed() -> void:
		get_tree().change_scene_to_file("res://scener/level8.tscn")
func _on_grønn_9_pressed() -> void:
		get_tree().change_scene_to_file("res://scener/level9.tscn")
func _on_grønn_10_pressed() -> void:
		get_tree().change_scene_to_file("res://scener/level10.tscn")
func _on_grønn_11_pressed() -> void:
		get_tree().change_scene_to_file("res://scener/level11.tscn")
func _on_grønn_12_pressed() -> void:
		get_tree().change_scene_to_file("res://scener/level12.tscn")
#-------------------------------------------------------------------------------
#FUNKSJONER FOR DE GULLFARGEDE KNAPPENE - SAMME HANDLING SOM DE HVITE



func _on_gull_1_pressed() -> void:
	get_tree().change_scene_to_file("res://scener/level1.tscn")
func _on_gull_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scener/level2.tscn")
func _on_gull_3_pressed() -> void:
	get_tree().change_scene_to_file("res://scener/level3.tscn")
func _on_gull_4_pressed() -> void:
	get_tree().change_scene_to_file("res://scener/level4.tscn")
func _on_gull_5_pressed() -> void:
	get_tree().change_scene_to_file("res://scener/level5.tscn")
func _on_gull_6_pressed() -> void:
	get_tree().change_scene_to_file("res://scener/level6.tscn")
func _on_gull_7_pressed() -> void:
	get_tree().change_scene_to_file("res://scener/level7.tscn")
func _on_gull_8_pressed() -> void:
	get_tree().change_scene_to_file("res://scener/level8.tscn")
func _on_gull_9_pressed() -> void:
	get_tree().change_scene_to_file("res://scener/level9.tscn")
func _on_gull_10_pressed() -> void:
	get_tree().change_scene_to_file("res://scener/level10.tscn")
func _on_gull_11_pressed() -> void:
	get_tree().change_scene_to_file("res://scener/level11.tscn")
func _on_gull_12_pressed() -> void:
	get_tree().change_scene_to_file("res://scener/level12.tscn")
