//@Name - Wave function
//
//@Description - Returns a value that oscillates smoothly between a set min and max value.
//
//@dependencies -> 
//
//@Param num	_min			->	minimum value to be returned
//@Param num	_max			->	maximum value to be returned
//@param bool	_sin			->	select sin [true] or cos for oscillation calculations
//@param bool	_swingNeg		->	select oscillation direction start
//@param num	_speedFactor	->  factor by which the wave oscillates
//@param num	_startAtZero	->  starts oscillation at 'zero' point (sin) or max/min point (cos) if true
//
//@return		Returns a value between the set limits


//@example		wave(2,10,true,true,1,false) 
//					Wave oscillates between 2 and 10, using a sine wave format (returns midpoint at multiples pi)
//					At the start point (0, 2pi, 4pi, etc), value swings toward minimum
//					The start value is arbitrary
//
//@example		wave(-5.2,14.5,false,false,1,1000) 
//					Wave oscillates between -5.2 and 14.5, using a sine wave format (returns max or min at multiples pi)
//					At the start point (0, 2pi, 4pi, etc), value is at maximum
//					The start value is at maximum

_min = argument0 
_max = argument1
_sin = argument2
_swingNeg = argument3
_speedFactor = argument4
_startTime = argument5

var _val = 0

if (_sin) { 
	_val = sin((current_time - _startTime) *0.001 *_speedFactor)
}
else{
	_val = cos((current_time - _startTime)* 0.001 *_speedFactor)
}

if(_swingNeg){
	_val *= -1	
}

var _val = ( _val + 1 ) * 0.5  //clamps _val between 0 and 1
var _outputRange = _max - _min		
var _finalValue = (_outputRange * _val) + _min

return _finalValue