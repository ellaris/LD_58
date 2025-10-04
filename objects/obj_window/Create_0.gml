/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod


plant = irandom(1)==0;
drop = irandom(2)>0;

ledge_x = 8-irandom(16);
ledge_y = 16+6;

standard_drop = round(obj_tax_collector.x + (obj_tax_collector.y - y) * (40/96)) // 385 x/y 65/96
plant_show_range = 32;

if(plant)
	image_blend = c_green;
	
if(plant and drop)
	image_blend = c_red;