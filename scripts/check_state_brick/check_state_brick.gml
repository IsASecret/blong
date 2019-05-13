state = argument0

switch(state){
	
	case block_state.normal:
		
		id._state = s_normal()
		
		break;
		
	case block_state.hit:
	
		id._state = s_hit()
	
		break;
		
	case block_state.destroyed:
	
		instance_destroy(id)

		break;
}