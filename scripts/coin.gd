extends Area2D


#for å fjerne mynten ved berøring
func _on_body_entered(_body: Node2D) -> void:
	GameManager.coins+=1
	print("+1 coin") 	#vil her adde en animasjon ved kontakt
	
	queue_free()
