/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

var _t = obj_tax_collector;
if(obj_control.moving or not obj_control.game_start)
	target_dir = point_direction(_t.x,_t.y,mouse_x,mouse_y);

direction += clamp(angle_difference(target_dir,direction),-rotate_speed,rotate_speed);
image_angle = direction;

x = _t.x + lengthdir_x(range,direction);
y = _t.y + lengthdir_y(range,direction);