extends AudioStreamPlayer

func _ready():
	autoplay = false
	stream_paused = false
	bus = "Music"

	# Viktig: gjør at musikken fortsetter selv om spillet er pauset
	process_mode = Node.PROCESS_MODE_ALWAYS
