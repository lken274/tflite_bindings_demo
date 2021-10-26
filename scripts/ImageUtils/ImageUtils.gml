// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reset_image_state(){
	for(var ypx = 0; ypx < global.YSIZE; ypx++) {
		for(var xpx = 0; xpx < global.XSIZE; xpx++) {
			image_state[ypx][xpx] = 0;
		}
	}
}

function generate_emnist_input() {
	emnist_input = "";
	for(var ypx = 0; ypx < global.YSIZE; ypx++) {
		for(var xpx = 0; xpx < global.XSIZE; xpx++) {
			emnist_input = emnist_input + string(image_state[ypx][xpx]) + ",";
		}
	}
	return emnist_input;
}