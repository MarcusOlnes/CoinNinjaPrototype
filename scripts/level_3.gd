extends Node2D


var level := 3
var neste_level_tall := level + 1
var neste_level_navn := "res://scener/level%d.tscn" % neste_level_tall
func _ready():
	Global.level2_fullført=1
func _on_portal_body_entered(body: Node2D):
	if body is Player:
		print("spiller i kollisjonssonen")
		GameManager.tot_coins+=GameManager.coins
		if GameManager.coins==Global.max_coins_level3:
			Global.coins_completed_level3=true
		GameManager.coins=0
		get_tree().change_scene_to_file(neste_level_navn)

	
