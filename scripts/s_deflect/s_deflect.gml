movePaddle()
rotatePaddle()

if(instance_exists(o_ball)){
	
	prevState = p_state.deflecting
	return p_state.deflecting
}

prevState = p_state.deflecting
return p_state.unwinding	


