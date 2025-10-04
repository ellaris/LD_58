/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

instance_create_depth(x,y+32+16,depth-1,obj_door);

instance_create_depth(x-32,y-16,depth-1,obj_window);
instance_create_depth(x+32,y-16,depth-1,obj_window);

if(irandom(2) == 0)
	instance_create_depth(x,y-32,depth-1,obj_window);
