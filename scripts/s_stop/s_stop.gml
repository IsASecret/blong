movePaddle()

self.image_angle = fixAngle(self.image_angle)

//Debug 
#macro __getX_offset sprite_get_xoffset(sprite_index)
#macro __getY_offset sprite_get_yoffset(sprite_index) 

sprite_set_offset(sprite_index,__getX_offset+o_debug._originMove,__getY_offset)


if(sprite_get_xoffset(sprite_index) > _originMax){
	sprite_set_offset(sprite_index,_originMax,__getY_offset)
	
}

else if(sprite_get_xoffset(sprite_index) < _originMin){
	sprite_set_offset(sprite_index,_originMin,__getY_offset)	
}

else{
	x += o_debug._originMove//sign(o_debug._originMove) * abs(o_debug._originMove)	
}

image_index = (_originMax - sprite_get_xoffset(sprite_index)) / 2
PositionPaddleEnd()

if(o_inputController.btn_wind){
	
	return p_state.winding	
}
	
else{
	return p_state.stopped				
}