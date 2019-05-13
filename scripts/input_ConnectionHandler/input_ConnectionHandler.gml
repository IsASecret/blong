/// Null --> Boolean
// Checks the connection status for all possible connected gamepads and returns whether or not at least
// one gamepad is connected
//___________________________
//
// Given: gp_num = 0  >> Expected: return -1;
// Given: gp_num = 4 >> Expected: return 0;
//



var gp_num = gamepad_get_device_count();	// Gets the number of possible gamepad connections 


for(var i = 0; i < gp_num; i++;){		//For each possible connection, store the connection status
										
	if (gamepad_is_connected(i)){
		global.GAMEPAD_CONNECTIONS[i] = true 
	} else {
		global.GAMEPAD_CONNECTIONS[i] = false;
	}
}

for(var i = 0; i <  array_length_1d(global.GAMEPAD_CONNECTIONS); i++){
	
	if(global.GAMEPAD_CONNECTIONS[i]){
		return i; 
	}
	
}


return -1;


