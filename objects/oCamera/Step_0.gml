/// @description Update camera
x += (xTo -x)/25;
y += (yTo -y)/25;

if follow != noone{
	if (follow.x+viewidth/2>room_width) xTo = room_width-viewidth/2;
	else if (follow.x-viewidth/2<0) xTo = 0+viewidth/2
	else xTo=follow.x;
	
	if (follow.y+viewheight/2>room_height) yTo = room_height-viewheight/2;
	else if (follow.y-viewheight/2<0) yTo = 0+viewheight/2
	else yTo=follow.y;
}

var vm = matrix_build_lookat(x,y,-10, x,y,0, 0,1,0);
camera_set_view_mat(camera,vm);

layer_x(hillsid, x/2-500);
layer_x(treesid, x/4);

move_wrap(true, false, sprite_width/2);