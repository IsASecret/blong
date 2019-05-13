_y = argument0

if(place_meeting(x,y+_y,o_collidable)){
	
		brick = instance_place(x,y+_y,o_collidable)
		brick._state = block_state.hit
		
		while(!place_meeting(x,y+sign(_y),o_collidable)){
			
			y += sign(_y)	
		}
		ySpeed = -ySpeed
		return -_y
}

return _y

