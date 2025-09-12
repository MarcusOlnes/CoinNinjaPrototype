extends Node2D


var level := 3
var neste_level_tall := level + 1
var neste_level_navn := "res://scener/level%d.tscn" % neste_level_tall
func _ready():
	Level_selection.level2_fullført=true
func _on_portal_body_entered(body: Node2D):
	if body is Player:
		print("spiller i kollisjonssonen")
		GameManager.tot_coins+=GameManager.coins
		GameManager.coins=0
		Level_selection.level3_fullført=true
		get_tree().change_scene_to_file(neste_level_navn)

	
