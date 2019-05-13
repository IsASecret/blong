// @description - Player Variables

image_speed = 0
_moveSpeed = 4				// Speed at which the paddle moves 
_windSpeed = 10				// Speed at which the paddle winds up
_releaseSpeed = 0			// Stores the current power during release state
_releaseSpeedMin = 0.01

_windAngleMax = 135
_releaseDecel = 0.97
_releaseAccel = 1.9

_resetSpeed = 0.35

_originMin = 5
_originMax = 59

enum p_state {
	stopped,
	winding,
	unwinding,
	releasing,
	deflecting
}

state = p_state.stopped
