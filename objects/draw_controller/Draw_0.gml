/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_textarea, 0, 448, 0);
for(var i = 0; i < 28; i += 1) {
	for (var j = 0; j < 28; j += 1) {
		if (image_state[i][j] > 0) {
			draw_set_alpha(image_state[i][j] / 255);
			draw_sprite(spr_pixel, 0, j*16, i*16);
			draw_set_alpha(1);
		}
	}
}

draw_text(448+5, 30, "Drawn char: ");
draw_set_color(c_green);
if(estimated_char != -1)
	draw_text(448+110, 30, chr(estimated_char));
draw_set_color(c_black);
draw_text(448+5, 50, "Other possibilities");
draw_set_color(c_green);
var spaces_used = 0;
for(var i = 0; i < ds_list_size(other_possibilities); i++) {
	possible_char = ds_list_find_value(other_possibilities,i)
	if(possible_char == estimated_char) continue;
	draw_text(448+5+spaces_used*12, 70, chr(possible_char));
	spaces_used++;
}
draw_set_color(c_maroon)
if (highest_confidence < 0.35 && estimated_char != -1) {
	draw_text(448+5, 10, "Low Confidence");
}
draw_set_color(c_black)
draw_text(448+5, 400, "Press SPACE to clear");