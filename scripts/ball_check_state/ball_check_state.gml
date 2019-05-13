// @Description - Checks the state of the ball, and runs a given script based on the current state
//
// @Note - Scripts run inside a given state should take no arguments and return a state

switch(id.state){
	
	case b_state.respawning:
	
		id.state = s_respawn()
		
		break;
		
	case b_state.floating:
	
		id.state = s_float()
		
		break;
		
	case b_state.launching:
		
		id.state = s_launch()
		
		break;
		
	case b_state.flying:
		
		id.state = s_fly()
		
		break;
		
	case b_state.destroyed:
		
		s_destroy(id)
	
		break;
}



