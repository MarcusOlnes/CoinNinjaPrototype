extends Node2D

func _ready():
	Global.level11_fullført=1

func _on_portal_body_entered(body: Node2D) -> void:
		if body is Player:
			print("spiller i kollisjonssonen")
			GameManager.tot_coins+=GameManager.coins
			GameManager.coins=0
			get_tree().change_scene_to_file("res://end_scene.tscn")
