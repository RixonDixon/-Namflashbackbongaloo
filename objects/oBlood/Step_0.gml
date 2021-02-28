/// @description Blood physics
if time > 60 instance_destroy();

if !place_meeting(x, y+1, oWall){
		vspeed += gravity_;	
	}
	
if place_meeting(x+hspeed, y, oWall){
		
		while !place_meeting(x+sign(hspeed), y, oWall) {
			x+= sign(hspeed);
		}
		hspeed= 0;
	}
if place_meeting(x, y+vspeed, oWall){
		
		while !place_meeting(x, y+sign(vspeed), oWall) {
			y+= sign(vspeed);
		}
		vspeed= 0;
	}
