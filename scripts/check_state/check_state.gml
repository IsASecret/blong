// @Description - Checks the state of the player, and runs a given script based on the current state
//
// @Note - Scripts run inside a given state should take no arguments and return a state

switch(o_player.state){
	
	case p_state.stopped:
	
		dM("check_state: p_state.stopped",global.DEBUG_STATE)
		o_player.state = s_stop()
		
		break;
		
	case p_state.winding:
	
		dM("check_state: p_state.winding",global.DEBUG_STATE)
		o_player.state = s_wind()
		
		break;
		
	case p_state.releasing:
		
		dM("check_state: p_state.releasing",global.DEBUG_STATE)
		o_player.state = s_release()
		
		break;
		
	case p_state.unwinding:
		
		dM("check_state: p_state.unwinding",global.DEBUG_STATE)
		o_player.state = s_unwind()
		
		break;
		
	case p_state.deflecting:
	
		dM("check_state: p_state.deflecting",global.DEBUG_STATE)
		o_player.state = s_deflect()
		
		break;
}



