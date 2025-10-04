/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

event_inherited();


door_random = function(_door){
	var _ac = [];
	var _ao = [];
	var _c = irandom(6)
	repeat _c
	{
		array_push(_ac,1);
		repeat irandom(3)
			array_push(_ac,0);
	}
	repeat array_length(_ac)
		array_push(_ao,5-irandom(10))
		
	_ac = array_shuffle(_ac);
		
	_door.a_coins = _ac;
	_door.a_offsets = _ao;
	
	_door.thief = irandom(3) == 0;
	_door.coins = irandom(6);
	
}

door_preset_1 = function(_door){
	_door.a_coins = [];
	_door.a_offsets = [];
}

door_preset_2 = function(_door){
	_door.a_coins = [];
	_door.a_offsets = [];
}

door_preset_3 = function(_door){
	_door.a_coins = [];
	_door.a_offsets = [];
}

window_random = function(_window){
	_window.plant = irandom(1)==0;
	_window.drop = irandom(2)>0;

	_window.ledge_x = 8-irandom(16);
}




var _door = instance_create_depth(x,y+32+16+8,depth-1,obj_door);
//_door.thief = irandom(3) == 0;
//_door.coins = irandom(6);
door_random(_door);

var _window = instance_create_depth(x-32,y-16,depth-1,obj_window);
window_random(_window);
_window = instance_create_depth(x+32,y-16,depth-1,obj_window);
window_random(_window);

if(irandom(2) == 0)
{
	_window = instance_create_depth(x,y-32,depth-1,obj_window);
	window_random(_window);
}