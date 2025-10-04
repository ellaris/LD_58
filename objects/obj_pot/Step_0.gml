/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod



// Inherit the parent event
event_inherited();

if(y < 255)
	vspeed += 0.01;
else
{
	create_pot_parts();
	instance_destroy();
}
	
if(instance_position(x,y,obj_shield))
{
	create_pot_parts();
	instance_destroy();
}