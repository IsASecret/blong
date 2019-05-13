_y = argument0

if(place_meeting(x,y+_y,o_masterCollidable)){
	
	_instance = instance_place(x,y+_y,o_masterCollidable)	
	
	switch(object_get_parent(_instance.object_index)){
		
		case o_collidable :
	
			_instance._state = block_state.hit
		
			while(!place_meeting(x,y+sign(_y),o_collidable)){
			
				y += sign(_y)	
			}
		
			ySpeed = -ySpeed
			return -_y
		
			break;
			
		case global.no_parent:
		
			switch(_instance.object_index){
					
				case o_player:
						
				break;
				
				default:
				
			}
		
			break;
			
		default: 
		
	}
}

return _y
