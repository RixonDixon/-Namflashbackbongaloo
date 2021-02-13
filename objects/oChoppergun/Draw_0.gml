/// @description Kopierat från Rikhards Player-objekt
var dir = point_direction(x,y,oPlayer.x,oPlayer.y);
var flipped = (oPlayer.x >x) * 2-1;
draw_sprite_ext(sChoppergun, 0, x-1*flipped,y, image_xscale, flipped, dir, image_blend, image_alpha);
