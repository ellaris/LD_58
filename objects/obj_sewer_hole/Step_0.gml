/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

event_inherited();

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
			y -= 4 * (room_height - y)/(obj_cart.bbox_bottom-obj_cart.bbox_top) // * (obj_cart.bbox_bottom-y)/(obj_cart.bbox_bottom-obj_cart.bbox_top)
			vspeed = 2;
			hspeed = (irandom(1)-0.5)*0.8;
		}
			
}