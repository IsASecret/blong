_x = argument0

if(place_meeting(x+_x,y,o_collidable)){
		
		brick = instance_place(x+_x,y,o_collidable)
		brick._state = block_state.hit
		
		while(!place_meeting(x+sign(_x),y,o_collidable)){
			
			x += sign(_x)	
		}
		
		xSpeed = -xSpeed
		return -_x
}

return _x


