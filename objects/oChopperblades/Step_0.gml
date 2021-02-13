/// @description Follow Chopper
y+=oChopper.yspeed;
x+=oChopper.xspeed;
y+=sin(oChopper.cTime/5);

if oChopper.health_ <=0 instance_destroy();
