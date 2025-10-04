/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

event_inherited();

image_speed = 0;
rotation = 0
vspeed = -2.5+irandom(15)*0.1;
hspeed = 2-irandom(40)*0.1;

life = game_get_speed(gamespeed_fps)*3;

random_rotate = function(){
	rotation = (20-irandom(10))*0.5;
}


