extends Node2D

@onready var SceneBytte = $SceneFader/AnimationPlayer

func _ready():
	Global.level1_fullført = 1
	$Label6/AnimationPlayer3.play("fadeInFadeOut")
var level := 2
var neste_level_tall := level + 1
var neste_level_navn := "res://scener/level%d.tscn" % neste_level_tall

func _on_portal_body_entered(body: Node2D)-> void:
	if body is Player:
		GameManager.tot_coins+=GameManager.coins
		if GameManager.coins==Global.max_coins_level2:
			Global.coins_completed_level2=true
		GameManager.coins=0
		get_tree().change_scene_to_file(neste_level_navn)
