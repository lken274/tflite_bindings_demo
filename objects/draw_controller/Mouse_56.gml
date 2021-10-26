/// @description Insert description here
// You can write your code in this editor
csv_string = generate_emnist_input();

load_direct_inputs(csv_string);
run_inference_on_next();
results = get_results_string();
var toks = split_string(results, ":");

toks = split_string(toks[1], " ");

best_index = -1;
highest_confidence = 0.0;
ds_list_clear(other_possibilities)
for(var i = 0; i < global.XOUT; i++) {
	var val = real(toks[i]);
	if (val > 0.02) ds_list_add(other_possibilities,ds_map_find_value(char_map, i));
	if (val > highest_confidence) {
		best_index = i;
		highest_confidence = val;
	}
}

//show_debug_message(best_index)
show_debug_message(results);
estimated_char = ds_map_find_value(char_map,round(best_index));

