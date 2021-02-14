/// @description Follow Chopper
if !variable_instance_exists(id, "angle_") angle_ = 0;
y+=oChopper.yspeed - sin((angle_ - oChopper.image_angle) * 2*pi/360) * point_distance(x,y,oChopper.x,oChopper.y);
// Av någon orsak får jag inte försljutningen i x-led att bli rätt
// men den är så liten att man kan lämna bort den
x+=oChopper.xspeed // - cos((90 + angle_ - oChopper.image_angle) * 2*pi/360) * point_distance(x,y,oChopper.x,oChopper.y);
y+=sin(oChopper.cTime/5);

if oChopper.health_ <=0 instance_destroy();

angle_ = oChopper.image_angle;