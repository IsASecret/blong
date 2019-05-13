var _rotate = 0
if(o_inputController.btn_rotateL) { _rotate -= 1 }
if(o_inputController.btn_rotateR) { _rotate += 1 }

image_angle += _rotate * _rotateSpeed * u_get_delta_time_seconds()