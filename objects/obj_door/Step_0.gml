/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

event_inherited();

if(coins > 0 and mouse_check_button(mb_left) and point_in_rectangle(mouse_x,mouse_y,bbox_left,bbox_top,bbox_right,bbox_bottom))
{
	if(irandom(3) == 0 and cd <= 0)
	{
		instance_create_depth(x+irandom(10)-5,y-16,depth-1,obj_coin);
		coins -= 1;
		cd = max_cd;
	}
}
if (cd > 0)
	cd -= 1;