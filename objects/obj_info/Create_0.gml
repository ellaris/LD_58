/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

help_layer = layer_get_id("help")
help_bg_layer = layer_get_id("help_bg")

show = 0;


show_layers = function(){
	layer_set_visible(help_layer,true);
	layer_set_visible(help_bg_layer,true);
	if(show < 1)
		show += 0.02;
}

hide_layers = function(){
	if(show <= 0)
	{
		layer_set_visible(help_layer,false);
		layer_set_visible(help_bg_layer,false);
	}
	if(show > 0)
		show -= 0.05;
}

adjust_layer_sprite_alpha = function(_v, _i){layer_sprite_alpha(_v,show)}