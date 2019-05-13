// 

/* Checks all buttons and axes of gamepad and stores values in global arrays
// 
// GAMEPAD_VALUES_BUTTONS			-->		Button's current state this frame
// GAMEPAD_VALUES_BUTTONS_PRESSED	-->		Button is pressed this frame and was not pressed previous frame
// GAMEPAD_VALUES_BUTTONS_RELEASED	-->		Button is not pressed this frame and was pressed previous frame
// GAMEPAD_VALUES_AXES				-->		Value of all axes on the gamepad


 Stores all variables in object 'o_inputGlobals' >> variable 'gamepadValues

	Gamepad Values[i] -->
		0	= gp_face1		= button A
		1	= gp_face2		= button B
		2	= gp_face3		= button X
		3	= gp_face4		= button Y
		
		4	= gp_shoulderl	= bumper L
		5	= gp_shoulderr	= bumper R
		6	= gp_select		= select
		7	= gp_start		= start
		
		8	= gp_padu		= up
		9	= gp_padd		= down
		10	= gp_padr		= right
		11	= gp_padl		= left
		
		12	= gp_stickl		= stick click left
		13	= gp_stickr		= stick click right
	
		
		0	= gp_axislv		= Left Stick Vertical Axis
		1	= gp_axislh		= Left Stick Horizontal Axis
		
		2	= gp_axisrv		= Right Stick Vertical Axis
		3	= gp_axisrh		= Right Stick Vertical Axis
		
		4	= gp_shoulderlb	= Right Trigger
		5	= gp_shoulderrb	= Left Trigger
*/

thisGamepad = argument0 

var num_buttons = array_length_1d(global.GAMEPAD_BUTTONS)

for(var i = 0; i < num_buttons; i++){

	global.GAMEPAD_VALUES_BUTTONS[i] = gamepad_button_check(thisGamepad,global.GAMEPAD_BUTTONS[i])
	global.GAMEPAD_VALUES_BUTTONS_PRESSED[i] = gamepad_button_check(thisGamepad,global.GAMEPAD_BUTTONS[i])
	global.GAMEPAD_VALUES_BUTTONS_RELEASED[i] = gamepad_button_check_released(thisGamepad,global.GAMEPAD_BUTTONS[i])

}


//Check gamepad Axes

var num_axes = array_length_1d(global.GAMEPAD_AXES)

for(var i = 0; i < num_axes; i++){
	
	global.GAMEPAD_VALUES_AXES[i] = gamepad_axis_value(thisGamepad,global.GAMEPAD_AXES[i])
	
}


if(global.DEBUG_INPUT)
{
var debugString = ""

for(var i = 0; i < num_buttons; i++){
	debugString += string(global.GAMEPAD_VALUES_BUTTONS[i]) + " | "

}

for(var i = 0; i < num_axes; i++){
	debugString += string(global.GAMEPAD_VALUES_AXES[i]) 	
	
	if(i < (num_axes -1)){
		debugString += " | "	
	}
}

show_debug_message(debugString)
}