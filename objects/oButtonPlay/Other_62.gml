/// @description Insert description here
// You can write your code in this editor

show_message("Hello")
if(async_load[? "id"] == http_request_) {
    if(async_load[? "status"] == 0) {
        var response = json_parse(async_load[? "result"])
        // Process the response here
		show_message(typeof(response))
        show_message(variable_struct_get(response, "answer"));
    } else {
        show_message("HTTP request failed: " + string(async_load[? "status"]));
    }
}
