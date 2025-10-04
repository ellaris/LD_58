/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod


image_alpha -= 0.001;
offset_y += 0.1;

if(offset_y >= room_height or image_alpha <= 0)
	instance_destroy();