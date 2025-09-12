extends Node2D

@onready var SceneBytte = $SceneFader/AnimationPlayer

func _ready():
	print("Setter level1 til complete, ved overgang til level2")
	Global.level1_fullført = 1
	print("level1_fullført status: ", Global.level1_fullført)
	

var level := 2
var neste_level_tall := level + 1
var neste_level_navn := "res://scener/level%d.tscn" % neste_level_tall

func _on_portal_body_entered(body: Node2D)-> void:
	if body is Player:
		GameManager.tot_coins+=GameManager.coins
		GameManager.coins=0
		get_tree().change_scene_to_file(neste_level_navn)
