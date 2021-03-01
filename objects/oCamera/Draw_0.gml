/// @description Gui
if(room==rm_game){
		var c = c_red;
		
		draw_set_colour(c);
		draw_set_font(fnt_text);
		draw_text(oCamera.x-0.45*viewidth,oCamera.y-0.45*viewheight,"HEALTH: "+string(health));
		}
