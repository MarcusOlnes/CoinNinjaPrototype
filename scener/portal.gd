extends Area2D


var level := 1
var neste_level_tall := level + 1
var neste_level_navn := "res://scener/level%d.tscn" % neste_level_tall


func _on_body_entered(body: Node2D):
	if body is Player:
		get_tree().change_scene_to_file("res://scener/level_selection.tscn")
