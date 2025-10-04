/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

if(obj_control.debug and tomato)
	image_blend = c_red;
else
	image_blend = c_white;

if(can_throw)
	x -= 1;
else
	x += 1;
	
if(x < 444 and irandom(10) == 0 and can_throw)
{
	can_throw = false;
	
	var _inst;
	if(tomato)
		_inst = instance_create_depth(x,y,depth-1,obj_tomato);
	else
		_inst = instance_create_depth(x,y,depth-1,obj_coin);
	_inst.vspeed = -1.9;
	_inst.hspeed = -2.4;
}
