/// @description Menu
draw_set_font(fnt_text_menu);
draw_set_halign(fa_left);
draw_set_color(c_white);

var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);
var left_click = mouse_check_button(mb_left);
if (point_in_rectangle(mousex,mousey,2300,725,2300 + string_width("play"), 725 + string_height("quit"))){
		draw_set_color(c_orange);
		
		if (left_click) {
			
			room_goto(rm_game);
			instance_destroy();
			}
		
		
}else {
	draw_set_color(c_white);
}

draw_text(2300, 725, "play");

if (point_in_rectangle(mousex,mousey,2300,875,2300 + string_width("Quit"), 875 + string_height("quit"))){
		draw_set_color(c_orange);
		
		if (left_click) {
			game_end();
			}
		
		
}else {
	draw_set_color(c_white);
}

draw_text(2300, 875, "Quit");

/*
draw_text(30, 300, "play");
draw_text(30, 350, "quit");

draw_set_color(c_red);
draw_set_alpha(0.5)
draw_rectangle(30,290,30 + string_width("play"), 290 + string_height("quit"), false)
draw_set_alpha(1);*/