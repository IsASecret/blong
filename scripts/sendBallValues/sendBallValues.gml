ball = argument0

ball.x_diff = ball.x - id.x
ball.y_diff = ball.y -id.y

ball.paddleAngle = id.image_angle 


ball.paddleAngle = fixAngle(ball.paddleAngle)

ball.state = b_state.launching

ball.hitPower = id._releaseSpeed

