// Unwind script - Safely unwinds the paddle back to starting position 
// No collision with ball

movePaddle()


self.image_angle = u_fixAngle(self.image_angle)
o_player.image_angle -= sign(image_angle) * u_get_delta_time_millis() * o_player._resetSpeed

if(o_player.image_angle <= 0){
	
	o_player.image_angle = 0	
	return p_state.stopped
}

return p_state.unwinding