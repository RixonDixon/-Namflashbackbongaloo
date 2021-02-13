/// @description Chopper scripts

cTime+=1;

y+=yspeed;
x+=xspeed;
y+=sin(cTime/5);

if health_ <=0 instance_destroy();

if cTime%60==0{
	cyclestate();	
}

if state == boss.attack1{
	if cTime%30==0{
		Shoot(oPlayer.x,oPlayer.y)
	}
}

if state == boss.circling{
	FlyTo(flyX,FlyY);
}