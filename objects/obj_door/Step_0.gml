/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

event_inherited();

if(obj_control.debug and  thief)
	image_blend = c_red;
else
	image_blend = c_white;

if(moving and cd <= 0 and array_length(a_coins) > 0 and mouse_check_button(mb_left) and point_in_rectangle(mouse_x,mouse_y,bbox_left,bbox_top,bbox_right,bbox_bottom))
{
	var _c = array_pop(a_coins)
	var _o = array_pop(a_offsets)
	if(_c )
	{
		instance_create_depth(x+_o,y-16,depth-1,obj_coin);
		//coins -= 1;
	}
	cd = max_cd;
}

if (cd > 0)
	cd -= 1;
	
if(x < obj_tax_collector.x+32+32 and thief and not thieving)
{
	thieving = true;
	image_index = 1;
	instance_create_depth(bbox_right,y+8,depth-1,obj_thief);
}