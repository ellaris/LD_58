/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

image_index = 0;
if(point_in_rectangle(mouse_x,mouse_y,bbox_left,bbox_top,bbox_right,bbox_bottom))
{
	image_index = 1
	
	if(mouse_check_button(mb_left))
		image_index = 2;
	if(mouse_check_button_released(mb_left))
	{
		var _a = action;
		if(is_string(_a))
			_a = variable_instance_get(id,_a);
		method_call(_a,[]);
	}
}