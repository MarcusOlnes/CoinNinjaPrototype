extends Node2D


var level := 9
var neste_level_tall := level + 1
var neste_level_navn := "res://scener/level%d.tscn" % neste_level_tall

func _ready():
	Global.level8_fullført=1

func _on_portal_body_entered(body: Node2D) -> void:
	if body is Player:
			print("spiller i kollisjonssonen")
			GameManager.tot_coins+=GameManager.coins
			GameManager.coins=0
			get_tree().change_scene_to_file(neste_level_navn)
