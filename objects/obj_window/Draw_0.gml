/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod


draw_self();

if(plant and (x > standard_drop or not drop))
{
	var _r = ((x-standard_drop))/plant_show_range;// 16
	if (x < standard_drop)
		_r = 0;
	if(x < standard_drop+plant_show_range)
	//if(x+16 > standard_drop or not drop)
		draw_sprite_part(spr_pot,0,0,0,16,(1-_r)*16,x+ledge_x-8,y+ledge_y-8+(_r)*16);
}