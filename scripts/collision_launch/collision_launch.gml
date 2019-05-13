//	@description	-	Handles the paddle collision with the ball
//
//	@param		num	_preSpeed	->	Speed of the paddle the frame before collision

_preSpeed = argument0

if(place_meeting(self.x,self.y,o_ball)){					//If colliding with ball object
	
	ball = instance_place(self.x,self.y,o_ball)			
	
	if(ball.state == b_state.floating && ball.image_alpha >= 1)						//If ball is in floating state, revert paddle angle to previous state
	{														//and step the angle till it's within 1 degree of hitting the ball
		o_player.image_angle += (o_player._releaseAccel * _preSpeed * u_get_delta_time_millis()) 
		self.image_angle = u_fixAngle(self.image_angle)
	
		while(!place_meeting(self.x,self.y,o_ball)){
			o_player.image_angle -= 1
			self.image_angle = u_fixAngle(self.image_angle)
		}
		
		o_player.image_angle +=1
		sendBallValues(ball)								//Transfer paddle data to ball 
	}
}