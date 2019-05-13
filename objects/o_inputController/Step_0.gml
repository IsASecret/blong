/// @description Insert description here
// You can write your code in this editor
btn_wind			= global.GAMEPAD_VALUES_BUTTONS[gamepad.button_a]
btn_wind_release	= global.GAMEPAD_VALUES_BUTTONS_RELEASED[gamepad.button_a]
btn_unwind			= global.GAMEPAD_VALUES_BUTTONS[gamepad.button_bmpl]
btn_rotateL			= global.GAMEPAD_VALUES_BUTTONS[gamepad.button_triggerL]
btn_rotateR			= global.GAMEPAD_VALUES_BUTTONS[gamepad.button_triggerR]

axis_x = global.GAMEPAD_VALUES_AXES[axes.axis_lh]
axis_y = global.GAMEPAD_VALUES_AXES[axes.axis_lv]

var connected = input_ConnectionHandler()

if(connected >= 0){
	
	input_Handler(connected); //Check all buttons
		
}

else{
	if(global.DEBUG_INPUT){
	show_debug_message("o_input: Not Connected")
	}
	// Pause game... 
	// Wait for connection...
	//Prompt to unpause... 
	
}