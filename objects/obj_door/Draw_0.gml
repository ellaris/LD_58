/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

event_inherited();

draw_self();

//if(coins <= 0)
if(array_length(a_coins) == 0)
	draw_sprite(spr_door_crack,0,x,y);

if(obj_control.debug)
{
	var _c = 0;
	//if(array_length(a_coins) > 1)
	//	_c = array_reduce(a_coins,function(_p,_v,_i){return _v + _p})
	_c = coins;
	draw_text(x,bbox_top,string(_c));
}
