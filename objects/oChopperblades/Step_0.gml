/// @description Follow Chopper
y+=oChopper.yspeed;
x+=oChopper.xspeed;
y+=sin(oChopper.cTime/5);
image_angle=oChopper.image_angle;

if oChopper.health_ <=0 instance_destroy();
