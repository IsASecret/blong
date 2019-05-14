movePaddle()

self.image_angle = u_fixAngle(self.image_angle)



if(o_inputController.btn_wind){
	
	prevState = p_state.stopped
	return p_state.winding	
}
	
else{
	prevState = p_state.stopped
	return p_state.stopped				
}