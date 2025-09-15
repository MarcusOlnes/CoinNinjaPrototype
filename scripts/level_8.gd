extends Node2D

var level := 8
var neste_level_tall := level + 1
var neste_level_navn := "res://scener/level%d.tscn" % neste_level_tall

func _ready():
	Global.level7_fullført=1
	$Label4/AnimationPlayer3.play("fadeInFadeOut")

func _on_portal_body_entered(body: Node2D) -> void:
	if body is Player:
			print("spiller i kollisjonssonen")
			GameManager.tot_coins+=GameManager.coins
			if GameManager.coins==Global.max_coins_level8:
				Global.coins_completed_level8=true
			GameManager.coins=0
			get_tree().change_scene_to_file(neste_level_navn)
