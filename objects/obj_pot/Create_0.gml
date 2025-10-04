/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

event_inherited();

vspeed = 1;


create_pot_parts = function()
{
	for(var i = 0; i < 4; i++)
	{
		var _part = instance_create_depth(x,y,depth-1,obj_pot_part);
		_part.image_index = i;
	}
}