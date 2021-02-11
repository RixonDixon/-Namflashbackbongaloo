/// @description Insert description here
// You can write your code in this editor
var dir = point_direction(x,y,mouse_x,mouse_y);
var flipped = (mouse_x >x) * 2-1;


//draw player

draw_sprite_ext(sPlayer, 0,x,y, flipped, 1, 0, image_blend, image_alpha);

draw_sprite_ext(sGun, 0, x-4*flipped,y, image_xscale, flipped, dir, image_blend, image_alpha);