x_diff = 0
y_diff = 0



angle = 0

launched = false
hitPower = 0
launchFactor = 0
paddleAngle = 0

xSpeed = 0
ySpeed = 0

_startTime = current_time
_fadeInTime = 0.5 

image_alpha = 0

state = b_state.floating

enum b_state{
	respawning,
	floating,
	launching,
	flying,
	destroyed
}

