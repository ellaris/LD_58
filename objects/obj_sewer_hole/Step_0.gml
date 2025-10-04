/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

event_inherited();

if(obj_control.debug and image_index == 0)
	image_blend = c_red;
else
	image_blend = c_white;

if(instance_place(x,y,obj_shield) and not closed)
{
	image_index = 1;
	closed = true;
}

if(instance_place(x,y,obj_cart) and not closed)
{
	image_index = 1;
	closed = true;
	with obj_coin
		if (inside)
		{
			y -= 2 * (obj_cart.bbox_bottom-y)/(obj_cart.bbox_bottom-obj_cart.bbox_top)
			vspeed = 3;
			hspeed = (4-2)*0.2;
		}
			
}