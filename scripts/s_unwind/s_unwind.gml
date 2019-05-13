// Unwind script - Safely unwinds the paddle back to starting position 
// No collision with ball

movePaddle()


self.image_angle = fixAngle(self.image_angle)
o_player.image_angle -= sign(image_angle) * get_delta_time() * o_player._resetSpeed

if(o_player.image_angle <= 0){
	
	o_player.image_angle = 0	
	PositionPaddleEnd()
	return p_state.stopped
}
PositionPaddleEnd()
return p_state.unwinding