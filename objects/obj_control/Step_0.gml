/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod


time += 1;
child_cd -= 1;

if (time mod 160 == 0)
{
	if(irandom(8) == 0)
		instance_create_layer(720,144,layer,obj_house);
	else
		time -= 1;
		
	if(irandom(4) == 0 and child_cd  <= 0)
	{
		instance_create_depth(720,230,depth-2,obj_child);
		child_cd = 30;
	}
}