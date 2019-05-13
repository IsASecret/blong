//Keeps the angle	

angle = argument0

//Keeps angle with between -360 and +360
var tmp = angle div 360
angle = angle - (tmp * 360)

//If the angle is a negative number, add 360 degrees
if(angle < 0){
	angle+=360
}

return angle





