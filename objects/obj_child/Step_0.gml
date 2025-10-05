/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

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
	audio_play_sound(snd_child_throw,3,false);
}
