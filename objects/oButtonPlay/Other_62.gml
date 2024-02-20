/// @description Insert description here
// You can write your code in this editor

show_message("E")

if(async_load[? "id"] == global.new_session_request) {
    if(async_load[? "status"] == 0 or async_load[? "http_status"] == 200) {
        // var response = json_parse(async_load[? "result"])
        var keysArray = ds_map_keys_to_array(async_load);
        var i;
        for (i = 0; i < array_length(keysArray); i++) {
            var key = keysArray[i];
            show_debug_message("Key: " + string(key));
            show_debug_message("Value: " + string(async_load[? key]))
        }

        // Process the response here
		// show_message(typeof(response))
        // show_message(variable_struct_get(response, "answer"));
    } else {
        show_message("HTTP request failed: " + string(async_load[? "status"]));
    }
}
