show_debug_message("game");

instance_create_layer(0,0,"Game",o_inputGlobals)	
instance_create_layer(0,0,"Game",o_inputController)

_startTime = current_time
_slowMo = false

_timeCycle = 0