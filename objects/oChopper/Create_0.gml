/// @description Chopper variables and functions
xspeed = 0;
yspeed = 0;
acceleration_ = 2;
maxSpeed = 10;
health_ = 100;
gravity_ = 1;
seesPlayer = false;
cTime = 0
flyX = irandom_range(oPlayer.x-100,oPlayer.x+100);
FlyY = irandom_range(oPlayer.y-200,oPlayer.y-100);


// Kopierat från Rikhards Player-objekt
var dir = point_direction(x,y,oPlayer.x,oPlayer.y);
var flipped = (oPlayer.x >x) * 2-1;
var gun_x = oChoppergun.x*flipped;

enum boss {
waiting,
circling,
attack1
}

state = boss.circling;

function cyclestate(){
	if state == boss.attack1 {
	state = boss.circling;
	}
	else if state == boss.circling state = choose(boss.attack1);
	
	if state == boss.circling{
		flyX = irandom_range(oCamera.x-oCamera.viewidth/2,oCamera.x+oCamera.viewidth/2);
		FlyY=irandom_range(50+oCamera.y-oCamera.viewheight/2,oCamera.y-100);
	}
}

function Shoot(xx,yy){
	with oChoppergun{
		var dir = point_direction(x,y,xx,yy);
		var b = instance_create_layer(oChoppergun.x,oChoppergun.y, "Instances", oEBullet);
		b.direction=dir;
	}
}

function FlyTo(xx,yy){
	var towards = point_direction(x,y,xx,yy);
	stopdistance = (xspeed*xspeed + yspeed*yspeed)/acceleration_;
	// accelerating
	if point_distance(x,y,xx,yy)>stopdistance{
		xspeed+=cos(towards*2*pi/360)*acceleration_
		yspeed+=sin(towards*-2*pi/360)*acceleration_
	}
	// deaccelerating
	else if point_distance(x,y,xx,yy)>sprite_height{
		xspeed-=cos(towards*2*pi/360)*acceleration_
		yspeed-=sin(towards*-2*pi/360)*acceleration_
	}
	else {
		if abs(x-xx)<sprite_width xspeed=0;
		yspeed=0;
		cyclestate()
	}	
}

function getHit(){
	health_ -=5;
}