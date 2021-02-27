
if(room==rm_lose){
		draw_set_halign(fa_center);
		var c = c_red;
		draw_set_font(fnt_text);
		draw_text_transformed_color(
			room_width/2,100, "YOU LOSE!",
			3, 4, 0, c, c, c, c, 1
		);
		draw_text(
		room_width/2,200,
		@"



>> PRESS ENTER TO RESTART <<"
		);
		draw_set_halign(fa_left);
}
if(room==rm_win){
		draw_set_halign(fa_center);
		var c = c_red;
		draw_set_font(fnt_text);
		draw_text_transformed_color(
			room_width/2,100, "YOU WIN!",
			3, 4, 0, c, c, c, c, 1
		);
		draw_text(
		room_width/2,200,
		@"



>> PRESS ENTER TO RESTART <<"
		);
		draw_set_halign(fa_left);
}