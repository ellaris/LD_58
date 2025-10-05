/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod


event_inherited();

//if(x == standard_drop)
//	show_debug_message(string("px{0} py{1} wx{2} wy{3}",obj_tax_collector.x,obj_tax_collector.y,x,y))

if(x == standard_drop and plant and drop)
	instance_create_depth(x+ledge_x,y+ledge_y,depth-1,obj_pot);