/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod



// Inherit the parent event
if(not inside)
event_inherited();


if(hspeed != 0)
	hspeed -= sign(hspeed)*0.01;
	
// bounce
if(y < 255)
	vspeed += 0.05;
else
{
	y = 255
	vspeed = -vspeed * 2/3;
	if(vspeed > 0.05)
		hspeed += (10-irandom(20))*0.1;
}

inside = false;
if(instance_place(x,y,obj_cart))
{
	inside = true;
	//obj_tax_collector.coins += 1;
	//instance_destroy();
	if(x > obj_cart.bbox_right and x < obj_cart.bbox_right+8)
	{
		hspeed = -hspeed+1.5;
		x = obj_cart.bbox_right+9;
	}
	if(x < obj_cart.bbox_right and x > obj_cart.bbox_right-8)
		x = obj_cart.bbox_right-8;
		
	if(x > obj_cart.bbox_left and x < obj_cart.bbox_left+8)
		x = obj_cart.bbox_left+8;
	if(y < obj_cart.bbox_bottom and y > obj_cart.bbox_bottom-8)
	{
		y = obj_cart.bbox_bottom-8;
		vspeed = -vspeed * 1/3;
		if(vspeed > 0.01)
			hspeed += (10-irandom(20))*0.2;
	}
	if(y > obj_cart.bbox_bottom and y < obj_cart.bbox_bottom+8)
	{
		y = obj_cart.bbox_bottom+8;
		vspeed = -vspeed * 1/3;
	}
}

var _o = collision_circle(x,y,5,obj_coin,true,true)
if(_o)//place_meeting(x,y,obj_coin))
{
	//if(point_distance(x,y,_o.x,_o.y) <= 6)
	{
		x += (6/(x-_o.x))*0.1;
		y += (6/(y-_o.y))*0.1;
	}
	vspeed = -vspeed * 3/4;
	hspeed = -hspeed * 3/4;
}

if(instance_position(x,y,obj_shield))
{
	vspeed = -vspeed -2;
	hspeed += (-1-irandom(3))*0.2;
	while(instance_position(x,y,obj_shield))
		y -= 1;
}