/// @description bullet maker
var dir = point_direction(x,y,mouse_x,mouse_y);
var flipped = (mouse_x >x) * 2-1;
var gun_x = x-4*flipped;

var x_offset = lengthdir_x(30, dir);
var y_offset = lengthdir_y(30, dir);

if delay <= 0 {
	instance_create_layer(gun_x + x_offset,y + y_offset, "Instances", oBullet);
	delay = 15;
}