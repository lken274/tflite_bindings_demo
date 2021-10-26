/// @description Insert description here
// You can write your code in this editor
var current_x_pos = mouse_x / 16;
var current_y_pos = mouse_y / 16;
if (current_x_pos >= 28 || current_x_pos < 0) return;
if (current_y_pos >= 28 || current_y_pos < 0) return;

for(var lx = -1; lx <= 1; lx ++) {
	for(var ly = -1; ly <= 1; ly ++) {
		if (lx == 0 && ly == 0) continue;
		if (current_y_pos+ly >= global.YSIZE || current_y_pos+ly<= 0 || current_x_pos+lx >= global.XSIZE || current_x_pos <= 0) continue;
		var current_val = image_state[current_y_pos+ly][current_x_pos+lx]
		if (current_val != 255)
			image_state[current_y_pos+ly][current_x_pos+lx] = 127;
	}
}
image_state[current_y_pos][current_x_pos] = 255;
