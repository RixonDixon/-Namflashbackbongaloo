/// @description Damage + push
if cooldown <= 0{
	cooldown = 60;
	with other{
	health -= 10;
	vspeed_-= 15;
	hspeed_+= 10*oMouth.image_angle;
	}
}
