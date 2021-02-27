/// @description Spawning Mouth monsters
if room == rm_game {
	time++;
	if time%240==0{
		var Sy = room_height - 128;
		var Sx = choose(oCamera.x-oCamera.viewidth/2,oCamera.x+oCamera.viewidth/2)
		var m = instance_create_layer(Sx,Sy, "Instances", oMouth);
	}
}