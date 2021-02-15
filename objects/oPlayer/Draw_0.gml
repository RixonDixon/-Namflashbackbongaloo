/// @description Insert description here
// You can write your code in this editor
var dir = point_direction(x,y,mouse_x,mouse_y);
var flipped = (mouse_x >x) * 2-1;
if(hspeed_!=0) flipped=sign(hspeed_);

//draw player

//Animations
	
if(!place_meeting(x,y+1,oWall)){
	draw_sprite_ext(sPlayerJump, 0,x,y, flipped, 1, 0, image_blend, image_alpha);
}
else{
	if(hspeed_==0){
		image_speed = 1;
		draw_sprite_ext(sPlayer, -1,x,y, flipped, 1, 0, image_blend, image_alpha);
	}
	else {
	draw_sprite_ext(sPlayerRun, -1,x,y, flipped, 1, 0, image_blend, image_alpha);
	image_speed = 3;
	}
}


draw_sprite_ext(sGun, 0, x+10*flipped,y, image_xscale, flipped, dir, image_blend, image_alpha);