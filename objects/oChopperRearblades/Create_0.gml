/// @description Insert description here
function cyclestate(){
	if state == boss.attack1 {
	state = boss.circling;
	}
	else if state == boss.circling state = boss.attack1;
	
	if state == boss.circling{
		flyX = oChopper.FlyX;
		FlyY = oChopper.FlyY;
	}
}
