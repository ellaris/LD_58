/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod



// Inherit the parent event
event_inherited();


if(y > 255)
	y = 255;
else
	vspeed += 0.1;
	
image_alpha -= 0.01;

if(image_alpha <= 0)
	instance_destroy();