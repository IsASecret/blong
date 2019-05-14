// @description - Player Variables

image_speed = 0
_moveSpeed = 4				// Speed at which the paddle moves 
_windSpeed = 10				// Speed at which the paddle winds up
_releaseSpeed = 0			// Stores the current power during release state
_releaseSpeedMin = 0.01

_windAngleMax = 135
_releaseDecel = 0.94
_releaseAccel = 3.5

_resetSpeed = 0.67
_rotateSpeed = 90

_deflectOffsetX = 32
_deflectOffsetY = 32

_launchOffsetX = 59
_launchOffsetY = 32

enum p_state {
	stopped,
	winding,
	unwinding,
	releasing,
	deflecting
}

prevState = p_state.stopped
state = p_state.stopped
