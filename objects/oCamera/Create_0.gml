/// @description Camera init & Layer ids
camera = camera_create();
viewidth = 1366;
viewheight = 768;


var vm = matrix_build_lookat(x,y,-10, x,y,0, 0,1,0);
var pm = matrix_build_projection_ortho(viewidth,viewheight,1,1000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;

follow = oPlayer;
xTo = x;
yTo = y;

if layer_exists("Hills"){
	hillsid = layer_get_id("Hills");
	treesid = layer_get_id("Trees");
}
