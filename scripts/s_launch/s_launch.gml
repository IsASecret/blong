

// Get ball launch angle

if(id.paddleAngle >= 0){
	id.angle  = id.paddleAngle + 90
}
else{
	id.angle = id.paddleAngle * -1	
}

//Get ball velocity

launchFactor = sqrt( sqr(x_diff) + sqr(y_diff) )

xSpeed = lengthdir_x(launchFactor,id.angle)
ySpeed = lengthdir_y(launchFactor,id.angle)

return b_state.flying