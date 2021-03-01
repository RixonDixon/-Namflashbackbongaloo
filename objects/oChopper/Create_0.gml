/// @description Chopper variables and functions
xspeed = 0;
yspeed = 0;
acceleration_ = 1.5;
maxSpeed = 150;
health_ = 100;
gravity_ = 1;
seesPlayer = false;
bulletspeed = 15;
cTime = 0
flyX = irandom_range(384 + oCamera.x-oCamera.viewidth/2,
					-384 + oCamera.x+oCamera.viewidth/2);
FlyY = irandom_range(128 + oCamera.y-oCamera.viewheight/3,
					-128 + oCamera.y);


// Kopierat från Rikhards Player-objekt
var dir = point_direction(x,y,oPlayer.x,oPlayer.y);
var flipped = (oPlayer.x >x) * 2-1;


enum boss {
waiting,
circling,
attack1,
dropstoners
}

state = boss.circling;

function cyclestate(){
	if state == boss.attack1 || state == boss.dropstoners {
	state = boss.circling;
	}
	else if state == boss.circling {
		state = choose(boss.attack1, boss.attack1, boss.circling);
	
		flyX = irandom_range(oCamera.x-oCamera.viewidth/2 + sprite_width,
							 oCamera.x+oCamera.viewidth/2 - sprite_width);
		FlyY = irandom_range(oCamera.y-oCamera.viewheight/2 + sprite_height,
							 oCamera.y + sprite_height);
	}
	
	if state == boss.dropstoners {
		Spawn();
	}
}

function Spawn(){
	var stoner = instance_create_layer(x, y, "Instances", oStoner);
}

function Shoot(xx,yy){
	var spread = random_range(-5,5);
	var dir = point_direction(x,y,xx,yy);
	var b = instance_create_layer(x,y, "Instances", oEBullet);
	b.direction = dir + spread;
	b.speed = bulletspeed;
}

function FlyTo(xx,yy){
	var towards = point_direction(x,y,xx,yy);
	var stopdistance = (xspeed*xspeed + yspeed*yspeed)/acceleration_;
	var distance = point_distance(x,y,xx,yy);
	// accelerating
	if distance > stopdistance*1.5{
		xspeed+=cos(towards*2*pi/360)*acceleration_
		yspeed+=sin(towards*-2*pi/360)*acceleration_
	}
	// cruising
	else if distance > stopdistance {
		// Do nothing?
	}
	// deaccelerating
	else if abs(xspeed) > abs(xx-x)/25 and
	abs(yspeed) > abs(yy-y)/25 and
	sign(xspeed) == sign(cos(towards*2*pi/360)) and
	sign(yspeed) == sign(sin(towards*-2*pi/360)) {
		xspeed-=cos(towards*2*pi/360)*acceleration_
		yspeed-=sin(towards*-2*pi/360)*acceleration_
	}
	else {
		xspeed = (xx-x)/25;
		yspeed = (yy-y)/25;
		cyclestate()
	}	
}

function getHit(xx,yy,dir,spd){
	health_ -=5;
}