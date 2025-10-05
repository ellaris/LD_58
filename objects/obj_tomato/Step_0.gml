/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod



// Inherit the parent event
event_inherited();

vspeed += 0.1;
if(y > 255)
{
	instance_create_depth(x,y,depth,obj_tomato_goop)
	audio_play_sound(snd_tomato_impact,3,false);
	instance_destroy();
}
	
if(instance_place(x,y,obj_tax_collector))
{
	instance_create_depth(x,y,depth,obj_tomato_goop);
	instance_create_depth(x,y,-10,obj_screen_goop);
	audio_play_sound(snd_tomato_impact,3,false);
	instance_destroy();
}

if(instance_place(x,y,obj_shield))
{
	instance_create_depth(x,y,depth,obj_tomato_goop);
	audio_play_sound(snd_tomato_impact,3,false);
	instance_destroy();
}