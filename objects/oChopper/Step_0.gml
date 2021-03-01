/// @description Chopper behavior

cTime+=1;

y+=yspeed;
x+=xspeed;
y+=sin(cTime/5);

if health_ <=0 {
	instance_destroy();
	room = rm_win;
}

image_angle=xspeed*-1;

if cTime%120==0{
	cyclestate();	
}

if state == boss.attack1{
	if xspeed > 0 xspeed--;
	if xspeed < 0 xspeed++;
	if yspeed > 0 yspeed--;
	if yspeed < 0 yspeed++;
	if cTime%15==0{
		
		//Attempts at leading - tricky!
			var Px = oPlayer.x + 
			point_distance(x,y,oPlayer.x,oPlayer.y)/bulletspeed *
			oPlayer.hspeed_;
			
			var Py = oPlayer.y +
			point_distance(x,y,oPlayer.x,oPlayer.y)/bulletspeed *
			oPlayer.vspeed_;

			
		Shoot(Px,oPlayer.y);
	}
}

if state == boss.circling{
	FlyTo(flyX,FlyY);
}
