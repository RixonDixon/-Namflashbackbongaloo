/// @description 

//collisons
y += vspeed_
cooldown--;
if !place_meeting(x, y+1, oWall){
		vspeed_ += gravity_;
		if place_meeting(x, y+vspeed_, oWall){
		while !place_meeting(x, y+sign(vspeed_), oWall) {
			y+= sign(vspeed_);
		}
		vspeed_= 0;
	}
}
if abs(oPlayer.x-x) > 0 {
	var sign_ = sign(oPlayer.x-x);
	image_xscale = sign_;
	hspeed_ += sign_*acceleration_;
	hspeed_ = clamp(hspeed_, -max_hspeed_, max_hspeed_);
}else {
	hspeed_ = lerp(hspeed_ , 0, friction_)	
}
x += hspeed_;

if health_ <= 0 instance_destroy();

