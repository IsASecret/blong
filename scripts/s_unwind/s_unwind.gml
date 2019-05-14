// Unwind script - Safely unwinds the paddle back to starting position 
// No collision with ball

movePaddle()
if(prevState == p_state.deflecting){
		OriginLaunch()	
}

self.image_angle = u_fixAngle(self.image_angle)
o_player.image_angle -= sign(image_angle) * u_get_delta_time_millis() * o_player._resetSpeed

if(o_player.image_angle <= 0){
	
	removeOutline()
	
	o_player.image_angle = 0	
	
	if(instance_exists(o_ball)){
		
		if(o_ball.state == b_state.flying) {
			
		    OriginDeflect()
			prevState = p_state.unwinding
			return p_state.deflecting 
		}
		
	}
	
	prevState = p_state.unwinding
	return p_state.stopped	
}

prevState = p_state.unwinding
return p_state.unwinding