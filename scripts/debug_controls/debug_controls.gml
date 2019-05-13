if(gamepad_button_check(0,gp_face2)){
	if(!instance_exists(o_ball)){
		instance_create_layer(room_width/2,room_height * 0.7,"Instances",o_ball)
	}
}

if(gamepad_button_check(0,gp_face4)){
	if(instance_exists(o_ball)){
		instance_destroy(o_ball)
	}
}

