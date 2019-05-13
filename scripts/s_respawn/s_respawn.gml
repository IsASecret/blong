if(image_alpha < 1){

	image_alpha = incrementTo(image_alpha,0,1,_fadeInTime)
	return b_state.respawning
	
}

else {
	return b_state.floating
}