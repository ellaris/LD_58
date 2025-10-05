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
	if((not collision_line(bbox_left+1,bbox_bottom-1,bbox_right-1,bbox_bottom-1,_o,true,false) /*or y < obj_cart.bbox_bottom-9*/) and abs(_o.hspeed) + abs(_o.vspeed) + abs(hspeed) + abs(vspeed) <= 0.1)
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
			var _push_ratio = 0.2;
			var _push_strength = 8;
			
			x += (_push_strength/(x-_o.x))*_push_ratio;
			y += (_push_strength/(y-_o.y))*_push_ratio;
		
			_o.x += (_push_strength/(_o.x-x))*_push_ratio;
			_o.y += (_push_strength/(_o.y-y))*_push_ratio;
		}
		
		var _vspd_ratio = 2/5;
		var _hspd_ratio = 2/4;
	
		vspeed = -vspeed * _vspd_ratio  -(sign(vspeed) *abs(_o.vspeed) * _vspd_ratio);
		hspeed = -hspeed * _hspd_ratio  -(sign(hspeed) *abs(_o.hspeed) *_hspd_ratio);
	
		_o.vspeed = -_o.vspeed * _vspd_ratio -(sign(_o.vspeed) *abs(vspeed) * _vspd_ratio);
		_o.hspeed = -_o.hspeed * _hspd_ratio -(sign(_o.vspeed) *abs(vspeed) *_hspd_ratio);
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
		if(x > obj_cart.bbox_right and x <= obj_cart.bbox_right+6)
		{
			hspeed = -hspeed+2.2;
			x = obj_cart.bbox_right+7;
			inside = false;
		}
		if(x < obj_cart.bbox_right and x >= obj_cart.bbox_right-6)
		{
			
			x = obj_cart.bbox_right-7;
		}
		
		if(x > obj_cart.bbox_left and x <= obj_cart.bbox_left+6)
		{
			//inside = true;
			x = obj_cart.bbox_left+7;
		}
		if(y < obj_cart.bbox_bottom and y >= obj_cart.bbox_bottom-8)
		{
			//inside = true;
			y = obj_cart.bbox_bottom-9;
			vspeed = -vspeed * 2/3;
			if(vspeed > 0.1)
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
		vspeed = -vspeed *1/3 -2.3;
		hspeed = hspeed*2/3;
		hspeed += -0.8;//(-1-irandom(3))*0.2;
		while(instance_place(x,y,obj_shield))
			y -= 1;
	}
}

hspeed = clamp(hspeed, -3, 4);
vspeed = clamp(vspeed, -6, 6);