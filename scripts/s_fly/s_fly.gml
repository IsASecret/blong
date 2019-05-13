var _x = xSpeed * u_get_delta_time_millis() * 0.02 * hitPower 
var _y = ySpeed * u_get_delta_time_millis() * 0.02 * hitPower

_x = collide_horizontal(_x)
_y = collide_vertical(_y)

x+= _x//xSpeed * u_get_delta_time_millis() * 0.02 * hitPower 
y+= _y//ySpeed * u_get_delta_time_millis() * 0.02 * hitPower


if(x > room_width + sprite_width || x < 0 - sprite_width || y > room_height + sprite_height || y < 0 - sprite_height){
	
	return b_state.destroyed
	
} else {

	return b_state.flying
}