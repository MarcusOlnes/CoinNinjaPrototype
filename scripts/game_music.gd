extends AudioStreamPlayer

	
func _ready():
	autoplay = false
	stream_paused = false
	bus = "Master"

	# Viktig: gjør at musikken fortsetter selv om spillet er pauset
	process_mode = Node.PROCESS_MODE_ALWAYS
