// @description - Handles the release action when paddle is in releasng state
//
//

movePaddle()

createGhost()


o_player.image_angle -= (o_player._releaseAccel * o_player._releaseSpeed * get_delta_time())
self.image_angle = fixAngle(self.image_angle)

var prePower = _releaseSpeed
_releaseSpeed *= _releaseDecel

collision_launch(prePower)	


if(_releaseSpeed < _releaseSpeedMin){
	
	return p_state.unwinding
}

else{
	
	return p_state.releasing	
}