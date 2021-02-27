/// @description Variables and functions
hspeed_ = 0;
max_hspeed_ = 5;
vspeed_ = 0;
gravity_ = 1;
acceleration_ = 1;
friction_ = .3
jump_height_ = -24;
health_ = 30;
cooldown = 0;

function getHit(xx,yy,dir,spd){
	health_ -=10;
	b = instance_create_layer(xx, yy, "Instances", oBlood);
	b.direction = dir;
	b.speed = spd;
}