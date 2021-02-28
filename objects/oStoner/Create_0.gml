/// @description Variables and functions
hspeed_ = 0;
max_hspeed_ = 5;
vspeed_ = 0;
gravity_ = 0.2;
acceleration_ = 1;
friction_ = .3
jump_height_ = -12;
health_ = 60;
bulletspeed = 15;
cooldown = 60;

function getHit(xx,yy,dir,spd){
	health_ -=10;
	hspeed_+=cos(dir*pi/180)*spd/2
	vspeed_-=sin(dir*pi/180)*spd/2
	b = instance_create_layer(xx, yy, "Instances", oBlood);
	b.direction = dir;
	b.speed = spd;
}

function Shoot(xx,yy){
	var dir = point_direction(x,y,xx,yy);
	var b = instance_create_layer(x,y, "Instances", oEBullet);
	b.direction=dir;
	b.speed = bulletspeed;
}