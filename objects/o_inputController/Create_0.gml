
/// Game input -- Reads the state of the gamepad, holds controller options 
///					and button assignments

/* Checks all buttons and axes of gamepad

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
		
		4	= gp_shoulderlb	= Left Trigger
		5	= gp_shoulderrb	= Right Trigger
*/

enum gamepad {
	button_a,
	button_b,
	button_x,
	button_y,
	button_bmpl,
	button_bmpr,
	button_select,
	button_start,
	button_up,
	button_down,
	button_right,
	button_left,
	button_stickl,
	button_stickr
}

enum axes {
	axis_lv,
	axis_lh,
	axis_rv,
	axis_rh,
	axis_lb,
	axis_rb
}


gamepad_set_axis_deadzone(0,0.1)

btn_wind = 0;
btn_wind_release = 0
btn_unwind = 0
axis_x= 0
axis_y=0

