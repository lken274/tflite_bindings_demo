/// @description Insert description here
// You can write your code in this editor
value = check_dll_connected()
//show_message(value)
global.BATCH = "1";
global.XSIZE = "28";
global.YSIZE = "28";
global.ZSIZE = "1";

global.XOUT = "47"
global.YOUT = "1"
global.ZOUT = "1"

init_model("./emnist.tflite");
set_input_size(global.BATCH, global.XSIZE, global.YSIZE, global.ZSIZE);
set_output_size(global.BATCH, global.XOUT, global.YOUT, global.ZOUT);
set_data_type("float", "true"); //data type, normalise

//load_csv_inputs("C:\\msys64\\home\\Logan\\tflite_test\\model_data\\emnist-balanced-test.csv");
//run_inference_on_next();
//message_out = get_results_string();
//show_debug_message(message_out)
//show_message(message_out);