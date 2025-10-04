/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod


time += 1;

if (time mod 160 == 0)
{
	if(irandom(8) == 0)
		instance_create_layer(720,144,layer,obj_house);
	else
		time -= 1;
}