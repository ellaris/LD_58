/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod



// Inherit the parent event
event_inherited();

if(hspeed != 0)
	hspeed -= sign(hspeed)*0.01;

// bounce
if(y < 255)
	vspeed += 0.04;
else
{
	y = 255
	vspeed = -vspeed * 1/2;
	if(vspeed > 0.05)
	{
		hspeed += (10-irandom(20))*0.1;
		random_rotate();
	}
}

image_angle += rotation;

life -= 1;
if(life < 0)
	image_alpha -= 0.02;
if(image_alpha < 0)
	instance_destroy();