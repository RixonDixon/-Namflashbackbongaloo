/// @description Variables and functions
hspeed_ = 0;
max_hspeed_ = 7;
vspeed_ = 0;
gravity_ = 1;
acceleration_ = 0.7;
friction_ = .1
jump_height_ = -24;
health_ = 60;
cooldown = 0;

function getHit(xx,yy,dir,spd){
	health_ -=10;
	hspeed_+=cos(dir*pi/180)*spd/2
	b = instance_create_layer(xx, yy, "Instances", oBlood);
	b.direction = dir;
	b.speed = spd;
}