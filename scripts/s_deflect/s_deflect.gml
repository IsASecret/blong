movePaddle()
rotatePaddle()

if(instance_exists(o_ball)){
	dM("s_deflect: ball exists",true)
	
	return p_state.deflecting
}


return p_state.unwinding	


