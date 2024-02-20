// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.gameId = 20240108
global.gameName = "wandquest"
global.gameKey = "0cf0c7d5653e1b8477b410fa289cc19e"
global.categoryId = 1 // 1 is debugging
global.versionNumber = 1

global.prdUrl = "https://integration.centerforgamescience.org/cgs/apps/games/v2/index.php/"

global.currentUserId = ""
global.currentSessionId = ""
global.currentDqid = ""
global.currentLevelId = -1
	
global.currentLevelSeqInSession = -1
global.currentActionSeqInSession = -1
global.currentActionSeqInLevel = -1
	
global.timestampOfPrevLevelStart = -1
	
global.levelActionBuffer = []
global.levelActionTimer = 0
	
global.bufferedRequestsWaitingForSession = []

function http_testing(){
	http_request_ = http_get("https://yesno.wtf/api")
}

function generate_uuid() {
	var _uuid = ""
	for (var _i = 0; _i < 32; _i++) {
		if (_i == 8 or _i == 12 or _i == 16 or _i == 20) {
			_uuid += "-"
		}
		_uuid += dec_to_hex(floor(random(16)))
	}
	return _uuid
}

// Find the local storage file named "saved_userid" and return
// the contents as a string
function get_saved_user_id() {
    var savedUserId = undefined
    var _file = file_text_open_read("saved_userid")
    if (_file != -1) {
		savedUserId = file_text_read_string(_file)
		file_text_close(_file)
	}
    return savedUserId;
}

// Write the passed uuid to "saved_userid"
function set_saved_user_id(_uuid) {
	var _file = file_text_open_write("saved_userid")
	if (_file != -1) {
		file_text_write_string(_file, _uuid)
		file_text_close(_file)
	} else {
		show_message("set_saved_user_id: Failed to write to saved_userid")
	}
}

function start_new_session(_uuid, _callback) {
	global.currentUserId = _uuid
	global.currentLevelSeqInSession = 0
	global.currentActionSeqInSession = 0

	var _session_params = {
		eid: 0,
		cid: global.categoryId,
		pl_detail: {},
		client_ts: datetime_now(),
		uid: global.currentUserId,
		g_name: global.gameName,
		gid: global.gameId,
		svid: 2,
		vid: global.versionNumber
	}
	show_debug_message("1")
	var _url = add_params_to_request(compose_url("loggingpageload/set/"), _session_params)
	show_debug_message("Hello")
	global.new_session_request = http_post_string(_url, "")
	show_debug_message(global.new_session_request)
	show_debug_message(_url)
}

function compose_url(_suffix) {
	return global.prdUrl + _suffix
}

function getCommonData() {
	return {
		client_ts: floor(datetime_now()),
		cid: global.categoryId,
		svid: 2,
		lid: 0,
		vid: global.versionNumber,
		qid: global.currentLevelId,
		g_name: global.gameName,
		uid: global.currentUserId,
		g_s_id: global.gameId,
		tid: 0,
		gid: global.gameId
	}
}

/// Create URL with parameters
/// @param url The base URL
/// @param params A ds_map containing the parameters
/// @returns The complete URL with parameters
function createUrlWithParams(url, params) {
    var paramStr = "";
    var first = true;
    
    // Loop through each key-value pair in the map
    var keys = ds_map_keys_to_array(params);
    for (var i = 0; i < array_length(keys); i++)
    {
        var key = keys[i];
        var value = params[? key];
        
        // Append key-value pair to parameter string
        if (!first) paramStr += "&";
        paramStr += string(key) + "=" + string(value);
        
        first = false;
    }
    
    // Append parameters to URL
    if (string_length(paramStr) > 0)
    {
        url += "?" + paramStr;
    }
    
    return url;
}


function add_params_to_request(_request, _data) {
	var _json_data = json_stringify(_data)
	var params = ds_map_create()
	params[? "dl"] = "0";
	params[? "latency"] = "5";
	params[? "priority"] = "1";
	params[? "de"] = "0";
	params[? "noCache"] = "\"\"";
	params[? "cid"] = string(global.categoryId);
	params[? "gid"] = string(floor(global.gameId));
	params[? "data"] = _json_data;
	params[? "skey"] = encoded_data(_json_data);
	return createUrlWithParams(_request, params)
}

function datetime_now() {
	return date_second_span(date_create_datetime(1970,1,1,0,0,0),date_current_datetime())
}

function dec_to_hex(dec, len = 1) {
    var hex = "";
 
    if (dec < 0) {
        len = max(len, ceil(logn(16, 2 * abs(dec))));
    }
 
    var dig = "0123456789ABCDEF";
    while (len-- || dec) {
        hex = string_char_at(dig, (dec & $F) + 1) + hex;
        dec = dec >> 4;
    }
 
    return hex;
}

function encoded_data(_string) {
	if (_string == undefined) {
		_string = ""
	}
	return md5_string_unicode(_string + global.gameKey)
}