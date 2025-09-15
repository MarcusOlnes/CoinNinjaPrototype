extends Node2D

func _ready():
	Global.level11_fullført=1
	$Label4/AnimationPlayer3.play("fadeInFadeOut")
func _on_portal_body_entered(body: Node2D) -> void:
		if body is Player:
			print("spiller i kollisjonssonen")
			GameManager.tot_coins+=GameManager.coins
			if GameManager.coins==Global.max_coins_level12:
				Global.coins_completed_level12=true
			GameManager.coins=0
			get_tree().change_scene_to_file("res://scener/end_scene.tscn")
