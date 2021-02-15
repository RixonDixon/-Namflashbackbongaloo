/// @description Player movement
var hInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
//smoother
if hInput != 0 {
	hspeed_ += hInput*acceleration_;
	hspeed_ = clamp(hspeed_, -max_hspeed_, max_hspeed_);
}else {
	hspeed_ = lerp(hspeed_ , 0, friction_)	
}

//collisons
if !place_meeting(x, y+1, oWall){
		vspeed_ += gravity_;	
	}
	
	else{
		if 
		keyboard_check(vk_space){
			vspeed_ = jump_height_;
	}
}
if place_meeting(x+hspeed_, y, oWall){
		
		while !place_meeting(x+sign(hspeed_), y, oWall) {
			x+= sign(hspeed_);
		}
		hspeed_= 0;
	}
	x += hspeed_;
if place_meeting(x, y+vspeed_, oWall){
		
		while !place_meeting(x, y+sign(vspeed_), oWall) {
			y+= sign(vspeed_);
		}
		vspeed_= 0;
	}
	//jump
	y += vspeed_
	
if delay >= 0 delay--;

move_wrap(true, false, sprite_width/2);

if health <= 0 room=rm_lose;

	



