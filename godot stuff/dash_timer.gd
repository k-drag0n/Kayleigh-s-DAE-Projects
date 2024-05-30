extends Timer

@onready var dash_timer = $dash_timer

func start_dash(dur):
	Timer.wait_time = dur
	dash_timer.start()
	
	
func is_dashing():
	return !dash_timer.is_stopped()
