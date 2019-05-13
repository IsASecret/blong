_x = argument0

if(place_meeting(x+_x,y,o_masterCollidable)){
	
	_instance = instance_place(x+_x,y,o_masterCollidable)	
	
	switch(object_get_parent(_instance.object_index)){
		
		case o_collidable :

			_instance._state = block_state.hit
		
			while(!place_meeting(x+sign(_x),y,o_collidable)){
			
				x += sign(_x)	
			}
		
			xSpeed = -xSpeed
			return -_x
		
			break;
			
		case global.no_parent:
		
			switch(_instance.object_index){
				
				case o_player:
					dM("collide_horizontal: collided w/ player",true)
				break;
				
				default:
				
			}
		
			break;
			
		default: 
		
	}
}

return _x





