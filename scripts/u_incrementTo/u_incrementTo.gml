//@description - increments (or decrements) a value to another specified value over a time period in seconds
//
//@param num	_valToAdjust	->	value to increment/decrement
//@param num	_toValue		->  target final value 
//@param num	_seconds		->	seconds taken to reach final value

//@example		- given: val = 4
//			 	- u_incrementTo(val,100,3.4)
//				- Variable val will increment to 100 over 3.4 seconds

_valToAdjust = argument0
_fromValue = argument1
_toValue = argument2
_seconds = argument3

if(_valToAdjust == _toValue){

} else {

	_valToAdjust += u_get_delta_time_seconds() / _seconds * (_toValue - _fromValue)
	
	if(_fromValue > _toValue){
		
		if(_valToAdjust <= _toValue){
			
			_valToAdjust = _toValue
		}
	
	} else if( _valToAdjust >= _toValue ){
		
		_valToAdjust = _toValue
	}
}	

return _valToAdjust

