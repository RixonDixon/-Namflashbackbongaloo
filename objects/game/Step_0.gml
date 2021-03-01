/// @description Spawning enemies
if room == rm_game {
	time++;
	if time > 240{
		if time%240==0{
			var my = room_height - 128;
			var mx = choose(oCamera.x-oCamera.viewidth/2,oCamera.x+oCamera.viewidth/2)
			var m = instance_create_layer(mx,my, "Instances", oMouth);
		}
	}
	
		if time > 1800{
			if time%360==0{
				var sy = irandom_range(0,room_height - 128);
				var sx = choose(oCamera.x-oCamera.viewidth/2,oCamera.x+oCamera.viewidth/2)
				var s = instance_create_layer(sx,sy, "Instances", oStoner);
		}
	}
	if time > 2400 and !chopping{
		chopping = true;
		var cy = oCamera.y-oCamera.viewheight/2-128;
		var cx = irandom_range(oCamera.x-oCamera.viewidth/2,oCamera.x+oCamera.viewidth/2);
		var c = instance_create_layer(cx,cy, "Instances", oChopper);
	}
}
else {
	time = 0;
	chopping = false;
}