extends Node

var tot_coins=0 
var coins=0
var score=0 


func _process(delta: float) -> void:
	
	#if current_scene == "level_selection" or current_scene == "main_menu":
		#$GUI/coins_counter.text=str(tot_coins)
	#else:
	
	$GUI/coins_counter.text=str(coins)
