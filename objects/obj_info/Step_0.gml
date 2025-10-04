/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

var _in = false;
if(point_in_circle(mouse_x,mouse_y,x,y,16))
{
	show_layers();
	_in = true;
}
else
	hide_layers();
	
layer_background_alpha(layer_background_get_id(help_bg_layer),show*0.4);


var _a = array_shuffle(layer_get_all_elements(help_layer))
for(var i = 0; i < array_length(_a); i++)
{
	var _e = _a[i];
	var _v = layer_sprite_get_alpha(_e);
	if(abs(show - _v) > 0.05)
	{
		layer_sprite_alpha(_e, clamp(_v + (_in ? 0.1 : -0.2),0,1));
		
		break
	}

}

//array_foreach( layer_get_all_elements(help_layer) , adjust_layer_sprite_alpha);