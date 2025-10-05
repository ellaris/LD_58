/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod



// Inherit the parent event
if(not inside)
event_inherited();


if(hspeed != 0)
	hspeed -= sign(hspeed)*0.01;

// bounce
if(y < 255 and not (instance_position(x,y+9,obj_coin)))
	vspeed += 0.05;
else if (y >= 255)
{
	y = 255;
	vspeed = -vspeed * 2/3;
	hspeed = hspeed * 2/3;
	if(vspeed > 0.05)
		hspeed += (10-irandom(20))*0.2;
}

if(inside and y >= obj_cart.bbox_bottom-9 and abs(vspeed) <= 0.1)
	vspeed = 0;


var _o = collision_circle(x,y,5,obj_coin,true,true)
if(_o)//place_meeting(x,y,obj_coin))
{
	// collision_circle(x,y,5,_o,true,true)
	if(not collision_line(bbox_left+1,bbox_bottom-1,bbox_right-1,bbox_bottom-1,_o,true,false) and abs(_o.hspeed) + abs(_o.vspeed) + abs(hspeed) + abs(vspeed) <= 0.2)
	{
		vspeed = 0;
		hspeed = 0;
		
		_o.vspeed = 0;
		_o.hspeed = 0;
	}
	else
	{
		//if(point_distance(x,y,_o.x,_o.y) <= 6)
		{
			x += (7/(x-_o.x))*0.2;
			y += (7/(y-_o.y))*0.2;
		
			_o.x += (7/(_o.x-x))*0.2;
			_o.y += (7/(_o.y-y))*0.2;
		}
	
		vspeed = -vspeed * 1/2  -(sign(vspeed) *abs(_o.vspeed) * 1/2);
		hspeed = -hspeed * 1/2  -(sign(hspeed) *abs(_o.hspeed) * 1/2);
	
		_o.vspeed = -_o.vspeed * 1/2 -(sign(_o.vspeed) *abs(vspeed) * 1/2);
		_o.hspeed = -_o.hspeed * 1/2 -(sign(_o.vspeed) *abs(vspeed) * 1/2);
	}
}

inside = false;
if(x < obj_tax_collector.x+32 and y > 130 )//and (abs(vspeed) + abs(hspeed) > 0.1))
{
	if(instance_place(x,y,obj_cart))
	{
		inside = true;
		//obj_tax_collector.coins += 1;
		//instance_destroy();
		if(x > obj_cart.bbox_right and x <= obj_cart.bbox_right+8)
		{
			hspeed = -hspeed+2.2;
			x = obj_cart.bbox_right+9;
			inside = false;
		}
		if(x < obj_cart.bbox_right and x >= obj_cart.bbox_right-8)
		{
			
			x = obj_cart.bbox_right-8;
		}
		
		if(x > obj_cart.bbox_left and x <= obj_cart.bbox_left+8)
		{
			//inside = true;
			x = obj_cart.bbox_left+9;
		}
		if(y < obj_cart.bbox_bottom and y >= obj_cart.bbox_bottom-8)
		{
			//inside = true;
			y = obj_cart.bbox_bottom-9;
			vspeed = -vspeed * 1/3;
			if(vspeed > 0.02)
				hspeed += (10-irandom(20))*0.1;
		}
		if(y > obj_cart.bbox_bottom and y <= obj_cart.bbox_bottom+8)
		{
			if(yprevious < obj_cart.bbox_bottom)
				y = obj_cart.bbox_bottom-9;
			else
			{
				inside = false;
				y = obj_cart.bbox_bottom+9;
				vspeed = -vspeed * 1/3;
			}
		}
	}
	else
	if(instance_place(x,y,obj_shield))
	{
		vspeed = -vspeed *1/3 -2.0;
		hspeed = hspeed*2/3;
		hspeed += -0.8;//(-1-irandom(3))*0.2;
		while(instance_place(x,y,obj_shield))
			y -= 1;
	}
}

hspeed = clamp(hspeed, -3, 4);
vspeed = clamp(vspeed, -6, 6);