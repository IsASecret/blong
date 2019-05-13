

// Winding state script - Handles the current winding condition 
// 
// Given: bt_wind is pressed and btn_unwind is not pressed -> Expected: continue winding
// Given: bt_wind is not pressed -> Expected: enter release state
// Given: bt_unwind is pressed and bt_wind has been released -> Expected: Safely unwind paddle (no collision)


movePaddle()  
createOutline()

if(o_inputController.btn_unwind){
	
	if(o_inputController.btn_wind_release){
		
		return p_state.unwinding
	}
	
}

if(!o_inputController.btn_wind){
	
	o_player._releaseSpeed = (o_player.image_angle / _windAngleMax)
	return p_state.releasing
}

else{

	o_player.image_angle += (o_player._windSpeed * (1 / o_player._windAngleMax)) * u_get_delta_time_millis()
	if(o_player.image_angle > o_player._windAngleMax){
		o_player.image_angle = o_player._windAngleMax
	}
	return p_state.winding
}


