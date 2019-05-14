// @description - Handles the release action when paddle is in releasng state
//
//

movePaddle()
createGhost()


o_player.image_angle -= (o_player._releaseAccel * o_player._releaseSpeed * u_get_delta_time_millis())
self.image_angle = u_fixAngle(self.image_angle)

var prePower = _releaseSpeed
_releaseSpeed *= _releaseDecel

collision_launch(prePower)	


if(_releaseSpeed < _releaseSpeedMin){
	
	prevState = p_state.releasing
	return p_state.unwinding
}

else{
	
	prevState = p_state.releasing
	return p_state.releasing	
}