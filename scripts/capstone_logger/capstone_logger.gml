// Generated at 2024-02-19 17:11:32 (1614ms) for v2.3.1+
/// @lint nullToAny true
// Feather disable all
exit
#region metatype
globalvar haxe_type_markerValue; haxe_type_markerValue = [];
globalvar mt_Array;
globalvar mt_CapstoneLogger;
globalvar mt_Date;
globalvar mt_EReg;
globalvar mt_IntIterator;
globalvar mt_string;
globalvar mt_StringBuf;
globalvar mt_ValueType;
globalvar mt_haxe_class;
globalvar mt_haxe_enum;
globalvar mt_gml_ds_GridIterator;
globalvar mt_haxe_StackItem;
globalvar mt_haxe_Exception;
globalvar mt_haxe_Timer;
globalvar mt_haxe_crypto_Md5;
globalvar mt_haxe_ds_BasicMap;
globalvar mt_haxe_ds_BasicMapIterator;
globalvar mt_haxe_ds_BasicMapKeyValueIterator;
globalvar mt_haxe_ds_IntMap;
globalvar mt_haxe_ds_StringMap;
globalvar mt_haxe_exceptions_PosException;
globalvar mt_haxe_exceptions_NotImplementedException;
globalvar mt_haxe_http_HttpBase;
globalvar mt_haxe_io_Bytes;
globalvar mt_haxe_io_BytesBuffer;
globalvar mt_haxe_io_Output;
globalvar mt_haxe_io_BytesOutput;
globalvar mt_haxe_io_Eof;
globalvar mt_haxe_io_Error;
globalvar mt_haxe_io_Input;
globalvar mt_haxe_iterators_ArrayIterator;
globalvar mt_haxe_iterators_DynamicAccessIterator;
globalvar mt_haxe_iterators_DynamicAccessKeyValueIterator;
globalvar mt_haxe_iterators_StringIterator;
globalvar mt_haxe_iterators_StringKeyValueIterator;
globalvar mt_sys_Http;
(function() {
mt_Array = new haxe_class(6, "Array");
mt_CapstoneLogger = new haxe_class(-1, "CapstoneLogger");
mt_Date = new haxe_class(-1, "Date");
mt_EReg = new haxe_class(-1, "EReg");
mt_IntIterator = new haxe_class(-1, "IntIterator");
mt_string = new haxe_class(5, "string");
mt_StringBuf = new haxe_class(-1, "StringBuf");
mt_ValueType = new haxe_enum(-1, "ValueType");
mt_haxe_class = new haxe_class(-1, "haxe_class");
mt_haxe_enum = new haxe_class(-1, "haxe_enum");
mt_gml_ds_GridIterator = new haxe_class(-1, "gml_ds_GridIterator");
mt_haxe_StackItem = new haxe_enum(-1, "haxe_StackItem");
mt_haxe_Exception = new haxe_class(-1, "haxe_Exception");
mt_haxe_Timer = new haxe_class(-1, "haxe_Timer");
mt_haxe_crypto_Md5 = new haxe_class(-1, "haxe_crypto_Md5");
mt_haxe_ds_BasicMap = new haxe_class(-1, "haxe_ds_BasicMap");
mt_haxe_ds_BasicMapIterator = new haxe_class(-1, "haxe_ds_BasicMapIterator");
mt_haxe_ds_BasicMapKeyValueIterator = new haxe_class(-1, "haxe_ds_BasicMapKeyValueIterator");
mt_haxe_ds_IntMap = new haxe_class(-1, "haxe_ds_IntMap");
mt_haxe_ds_IntMap.superClass = mt_haxe_ds_BasicMap;
mt_haxe_ds_StringMap = new haxe_class(-1, "haxe_ds_StringMap");
mt_haxe_ds_StringMap.superClass = mt_haxe_ds_BasicMap;
mt_haxe_exceptions_PosException = new haxe_class(-1, "haxe_exceptions_PosException");
mt_haxe_exceptions_PosException.superClass = mt_haxe_Exception;
mt_haxe_exceptions_NotImplementedException = new haxe_class(-1, "haxe_exceptions_NotImplementedException");
mt_haxe_exceptions_NotImplementedException.superClass = mt_haxe_exceptions_PosException;
mt_haxe_http_HttpBase = new haxe_class(-1, "haxe_http_HttpBase");
mt_haxe_io_Bytes = new haxe_class(-1, "haxe_io_Bytes");
mt_haxe_io_BytesBuffer = new haxe_class(-1, "haxe_io_BytesBuffer");
mt_haxe_io_Output = new haxe_class(-1, "haxe_io_Output");
mt_haxe_io_BytesOutput = new haxe_class(-1, "haxe_io_BytesOutput");
mt_haxe_io_BytesOutput.superClass = mt_haxe_io_Output;
mt_haxe_io_Eof = new haxe_class(-1, "haxe_io_Eof");
mt_haxe_io_Error = new haxe_enum(-1, "haxe_io_Error");
mt_haxe_io_Input = new haxe_class(-1, "haxe_io_Input");
mt_haxe_iterators_ArrayIterator = new haxe_class(-1, "haxe_iterators_ArrayIterator");
mt_haxe_iterators_DynamicAccessIterator = new haxe_class(-1, "haxe_iterators_DynamicAccessIterator");
mt_haxe_iterators_DynamicAccessKeyValueIterator = new haxe_class(-1, "haxe_iterators_DynamicAccessKeyValueIterator");
mt_haxe_iterators_StringIterator = new haxe_class(-1, "haxe_iterators_StringIterator");
mt_haxe_iterators_StringKeyValueIterator = new haxe_class(-1, "haxe_iterators_StringKeyValueIterator");
mt_sys_Http = new haxe_class(-1, "sys_Http");
mt_sys_Http.superClass = mt_haxe_http_HttpBase;
})();
#endregion
function enum_toString() {
	return Std.stringify(self);
}
function enum_getIndex() {
	return __enumIndex__;
}
enum gml_gpu_VertexFormatData { Color, Pos2d, Pos3d, TexCoord, Normal, Custom }

#region CapstoneLogger

function mc_CapstoneLogger(_gameId, _gameName, _gameKey, _categoryId) constructor {
	// CapstoneLogger(gameId:int, gameName:string, gameKey:string, categoryId:int)
	/// @ignore
	static gameId = undefined; /// @is {int}
	static gameName = undefined; /// @is {string}
	static gameKey = undefined; /// @is {string}
	static categoryId = undefined; /// @is {int}
	static versionNumber = undefined; /// @is {int}
	static currentUserId = undefined; /// @is {string}
	static currentSessionId = undefined; /// @is {string}
	static currentDqid = undefined; /// @is {string}
	static currentLevelId = undefined; /// @is {int}
	static currentLevelSeqInSession = undefined; /// @is {int}
	static currentActionSeqInSession = undefined; /// @is {int}
	static currentActionSeqInLevel = undefined; /// @is {int}
	static timestampOfPrevLevelStart = undefined; /// @is {number}
	static levelActionBuffer = undefined; /// @is {array<any>}
	static levelActionTimer = undefined; /// @is {haxe_Timer}
	static bufferedRequestsWaitingForSession = undefined; /// @is {array<haxe_Http>}
	static generateUuid = function() {
		var _uuid = "";
		for (var _characterIndex = 0; _characterIndex < 32; _characterIndex++) {
			if (_characterIndex == 8 || _characterIndex == 12 || _characterIndex == 16 || _characterIndex == 20) _uuid += "-";
			_uuid += StringTools.hex(floor(random(1) * 16));
		}
		return _uuid;
	}
	static getSavedUserId = function() {
		var _savedUserId = undefined;
		_savedUserId = Storage_getItem(window[152/* localStorage */], "saved_userid");
		return _savedUserId;
	}
	static setSavedUserId = function(_value) {
		Storage_setItem(window[152/* localStorage */], "saved_userid", _value);
	}
	static startNewSession = function(_userId, _callback) {
		var __gthis = self;
		self.currentUserId = _userId;
		self.currentLevelSeqInSession = 0;
		self.currentActionSeqInSession = 0;
		var _sessionRequest = new sys_Http(self.composeUrl("loggingpageload/set/"));
		self.addParamsToRequest(_sessionRequest, {
			eid: 0,
			cid: self.categoryId,
			pl_detail: { },
			client_ts: Date.now().getTime(),
			uid: self.currentUserId,
			g_name: self.gameName,
			gid: self.gameId,
			svid: 2,
			vid: self.versionNumber
		});
		_sessionRequest.onData = function(_data) {
			var _sessionSuccess = false;
			if (_data != undefined) {
				_data = string_substr(_data, 5);
				var _parsedResults = JSON_parse(_data);
				if (_parsedResults.tstatus == "t") {
					__gthis.currentSessionId = _parsedResults.r_data.sessionid;
					_sessionSuccess = true;
				}
			}
			if (_callback != undefined) _callback(_sessionSuccess);
		}
		_sessionRequest.onError = function(_message) {
			_callback(false)
		}
		_sessionRequest.request(true);
	}
	static logLevelStart = function(_levelId, _details) {
		if (false) show_debug_message(argument[1]);
		var __gthis = self;
		self.flushBufferedLevelActions();
		if (self.levelActionTimer != undefined) self.levelActionTimer.stop();
		self.levelActionTimer = new haxe_Timer(3000);
		self.levelActionTimer.run = method(self, self.flushBufferedLevelActions);
		self.timestampOfPrevLevelStart = Date.now().getTime();
		self.currentActionSeqInLevel = 0;
		self.currentLevelId = _levelId;
		self.currentDqid = undefined;
		var _levelStartRequest = new sys_Http(self.composeUrl("quest/start/"));
		var _startData = self.getCommonData();
		_startData.sessionid = self.currentSessionId;
		_startData.sid = self.currentSessionId;
		_startData.quest_seqid = ++self.currentLevelSeqInSession;
		_startData.qaction_seqid = ++self.currentActionSeqInLevel;
		_startData.q_detail = _details;
		_startData.q_s_id = 1;
		_startData.session_seqid = ++self.currentActionSeqInSession;
		self.addParamsToRequest(_levelStartRequest, _startData);
		_levelStartRequest.onData = function(_data) {
			if (_data != undefined) {
				_data = string_substr(_data, 5);
				__gthis.currentDqid = JSON_parse(_data).dqid;
			}
		}
		_levelStartRequest.request(true);
	}
	static logLevelEnd = function(_details) {
		if (false) show_debug_message(argument[0]);
		self.flushBufferedLevelActions();
		if (self.levelActionTimer != undefined) self.levelActionTimer.stop();
		var _levelEndRequest = new sys_Http(self.composeUrl("quest/end"));
		var _endData = self.getCommonData();
		_endData.sessionid = self.currentSessionId;
		_endData.sid = self.currentSessionId;
		_endData.qaction_seqid = ++self.currentActionSeqInLevel;
		_endData.q_detail = _details;
		_endData.q_s_id = 0;
		_endData.dqid = self.currentDqid;
		_endData.session_seqid = ++self.currentActionSeqInSession;
		self.addParamsToRequest(_levelEndRequest, _endData);
		_levelEndRequest.request(true);
		self.currentDqid = undefined;
	}
	static logLevelAction = function(_actionId, _details) {
		if (false) show_debug_message(argument[1]);
		var _timestampOfAction = Date.now().getTime();
		var _relativeTime = _timestampOfAction - self.timestampOfPrevLevelStart;
		array_push(self.levelActionBuffer, {
			detail: _details,
			client_ts: _timestampOfAction,
			ts: _relativeTime,
			te: _relativeTime,
			session_seqid: ++self.currentActionSeqInSession,
			qaction_seqid: ++self.currentActionSeqInLevel,
			aid: _actionId
		});
	}
	static logActionWithNoLevel = function(_actionId, _details) {
		if (false) show_debug_message(argument[1]);
		var _actionNoLevelRequest = new sys_Http(self.composeUrl("loggingactionnoquest/set/"));
		self.addParamsToRequest(_actionNoLevelRequest, {
			session_seqid: ++self.currentActionSeqInSession,
			cid: self.categoryId,
			client_ts: Date.now().getTime(),
			aid: _actionId,
			vid: self.versionNumber,
			uid: self.currentUserId,
			g_name: self.gameName,
			a_detail: _details,
			gid: self.gameId,
			svid: 2,
			sessionid: self.currentSessionId
		});
		_actionNoLevelRequest.request(true);
	}
	static flushBufferedLevelActions = function() {
		if (array_length(self.levelActionBuffer) > 0 && self.currentDqid != undefined) {
			var _levelActionRequest = new sys_Http(self.composeUrl("logging/set"));
			var _bufferedActionsData = self.getCommonData();
			_bufferedActionsData.actions = self.levelActionBuffer;
			_bufferedActionsData.dqid = self.currentDqid;
			self.addParamsToRequest(_levelActionRequest, _bufferedActionsData);
			_levelActionRequest.request(true);
			self.levelActionBuffer = [];
		}
	}
	static composeUrl = function(_suffix) {
		return CapstoneLogger.prdUrl + _suffix;
	}
	static getCommonData = function() {
		return {
			client_ts: Date.now().getTime(),
			cid: self.categoryId,
			svid: 2,
			lid: 0,
			vid: self.versionNumber,
			qid: self.currentLevelId,
			g_name: self.gameName,
			uid: self.currentUserId,
			g_s_id: self.gameId,
			tid: 0,
			gid: self.gameId
		}
	}
	static addParamsToRequest = function(_request, _data) {
		var _stringifiedData = (_data != undefined ? JSON_stringify(_data) : undefined);
		var _requestBlob = {
			dl: "0",
			latency: "5",
			priority: "1",
			de: "0",
			noCache: "",
			cid: Std.stringify(self.categoryId),
			gid: Std.stringify(self.gameId),
			data: _stringifiedData,
			skey: self.encodedData(_stringifiedData)
		}
		var __g = 0;
		var __g1 = Reflect.fields(_requestBlob);
		while (__g < array_length(__g1)) {
			var _prop = __g1[__g];
			__g++;
			_request.addParameter(_prop, Reflect.field(_requestBlob, _prop));
		}
	}
	static encodedData = function(_value) {
		if (_value == undefined) _value = "";
		return haxe_crypto_Md5.encode((_value + self.gameKey));
	}
	self.gameId = _gameId;
	self.gameName = _gameName;
	self.gameKey = _gameKey;
	self.categoryId = _categoryId;
	self.versionNumber = 1;
	self.levelActionBuffer = [];
	static __class__ = mt_CapstoneLogger;
}
globalvar CapstoneLogger; CapstoneLogger = method(undefined, mc_CapstoneLogger);
mt_CapstoneLogger.i_constructor = CapstoneLogger;
/// @hint {string} CapstoneLogger.prdUrl

#endregion

#region Date

function mc_Date(_year, _month, _day, _hour, _min1, _sec) constructor {
	// Date(year:int, month:int, day:int, hour:int, min:int, sec:int)
	/// @ignore
	static date = undefined; /// @is {date}
	static getTime = function() {
		return (self.date - 25569) * 86400000;
	}
	static getHours = function() {
		return date_get_hour(self.date);
	}
	static getMinutes = function() {
		return date_get_minute(self.date);
	}
	static getSeconds = function() {
		return date_get_second(self.date);
	}
	static getFullYear = function() {
		return date_get_year(self.date);
	}
	static getMonth = function() {
		return date_get_month(self.date) - 1;
	}
	static getDate = function() {
		return date_get_day(self.date);
	}
	static getDay = function() {
		return date_get_weekday(self.date);
	}
	static toString = function() {
		return date_datetime_string(self.date);
	}
	static getTimezoneOffset = function() {
		throw string("not implemented");
	}
	static getUTCHours = function() {
		throw string("not implemented");
	}
	static getUTCMinutes = function() {
		throw string("not implemented");
	}
	static getUTCSeconds = function() {
		throw string("not implemented");
	}
	static getUTCFullYear = function() {
		throw string("not implemented");
	}
	static getUTCMonth = function() {
		throw string("not implemented");
	}
	static getUTCDate = function() {
		throw string("not implemented");
	}
	static getUTCDay = function() {
		throw string("not implemented");
	}
	self.date = date_create_datetime(_year, _month + 1, _day, _hour, _min1, _sec);
	static __class__ = mt_Date;
}
globalvar Date; Date = method(undefined, mc_Date);
mt_Date.i_constructor = Date;
/// @hint Date.createEmpty()->Date
Date.createEmpty = method(Date, function() {
	return new Date(2000, 0, 1, 0, 0, 0);
});
/// @hint Date.now()->Date Returns a Date representing the current local time.
Date.now = method(Date, function() {
	var _d = new Date(2000, 0, 1, 0, 0, 0);
	_d.date = date_current_datetime();
	return _d;
});
/// @hint Date.fromTime(t:number)->Date Creates a Date from the timestamp (in milliseconds) `t`.
Date.fromTime = method(Date, function(_t) {
	var _d = new Date(2000, 0, 1, 0, 0, 0);
	_d.date = 25569 + _t / 86400000.;
	return _d;
});
/// @hint Date.fromString(s:string)->Date
Date.fromString = method(Date, function(_s) {
	var _args1, _d, _nd;
	if (string_length(_s) == 8) {
		var _tz = date_get_timezone();
		date_set_timezone(timezone_utc);
		_nd = 25569;
		_nd = date_inc_hour(_nd, Std.parseInt(string_substring(_s, 0, 2)));
		_nd = date_inc_minute(_nd, Std.parseInt(string_substring(_s, 3, 2)));
		_nd = date_inc_second(_nd, Std.parseInt(string_substring(_s, 5, 2)));
		date_set_timezone(_tz);
		_d = new Date(2000, 0, 1, 0, 0, 0);
		_d.date = _nd;
		return _d;
	} else throw string("Invalid date format : " + _s);
});

#endregion

#region EReg

function mc_EReg(_r, _opt) constructor {
	// EReg(r:string, opt:string)
	/// @ignore
	static r = undefined; /// @is {RegExp}
	static match = function(_s) {
		if (self.r[1/* global */]) self.r[@5/* lastIndex */] = 0;
		self.r[@6/* m */] = RegExp_exec(self.r, _s);
		self.r[@7/* s */] = _s;
		return self.r[6/* m */] != undefined;
	}
	static matched = function(_n) {
		if (self.r[6/* m */] != undefined && _n >= 0 && _n < array_length(self.r[6/* m */])) return self.r[6/* m */][_n]; else throw string("EReg::matched");
	}
	static matchedPos = function() {
		if (self.r[6/* m */] == undefined) throw string("No string matched");
		return { pos: self.r[6/* m */][2/* index */], len: string_length(self.r[6/* m */][0]) }
	}
	self.r = RegExp_create(_r, gml_internal_ArrayImpl.join(string_split(_opt, "u"), ""));
	static __class__ = mt_EReg;
}
globalvar EReg; EReg = method(undefined, mc_EReg);
mt_EReg.i_constructor = EReg;

#endregion

#region HxOverrides
globalvar HxOverrides; HxOverrides = {}
/// @hint HxOverrides.dateStr(date1:Date)->string
HxOverrides.dateStr = method(HxOverrides, function(_date1) {
	return date_datetime_string(_date1.date);
});
/// @hint HxOverrides.now()->number
HxOverrides.now = method(HxOverrides, function() {
	return current_time;
});
/// @hint HxOverrides.cca(s:string, index:int)->int?
HxOverrides.cca = method(HxOverrides, function(_s, _index) {
	return string_ord_at(_s, _index + 1);
});
/// @hint HxOverrides.substr(s:string, pos:int, ?len:int?)->string
HxOverrides.substr = method(HxOverrides, function(_s, _pos, _len) {
	if (false) show_debug_message(argument[2]);
	return string_substr(_s, _pos, _len);
});
/// @hint HxOverrides.indexOf(a:array<T>, obj:T, i:int)->int
HxOverrides.indexOf = method(HxOverrides, function(_a, _obj, _i) {
	var _len = array_length(_a);
	if (_i < 0) {
		_i += _len;
		if (_i < 0) _i = 0;
	}
	while (_i < _len) {
		if (_a[_i] == _obj) return _i;
		_i++;
	}
	return -1;
});
/// @hint HxOverrides.lastIndexOf(a:array<T>, obj:T, i:int)->int
HxOverrides.lastIndexOf = method(HxOverrides, function(_a, _obj, _i) {
	var _len = array_length(_a);
	if (_i >= _len) {
		_i = _len - 1;
	} else if (_i < 0) {
		_i += _len;
	}
	while (_i >= 0) {
		if (_a[_i] == _obj) return _i;
		_i--;
	}
	return -1;
});
/// @hint HxOverrides.remove(a:array<T>, obj:T)->bool
HxOverrides.remove = method(HxOverrides, function(_a, _obj) {
	var _i = gml_internal_ArrayImpl.indexOf(_a, _obj);
	if (_i == -1) return false;
	gml_internal_ArrayImpl.splice(_a, _i, 1);
	return true;
});
/// @hint HxOverrides.iter(a:array<T>)->Iterator<T>
HxOverrides.iter = method(HxOverrides, function(_a) {
	return undefined;
});

#endregion

#region IntIterator

function mc_IntIterator(_min1, _max1) constructor {
	// IntIterator(min:int, max:int)
	/// @ignore
	static i_min = undefined; /// @is {int}
	static i_max = undefined; /// @is {int}
	self.i_min = _min1;
	self.i_max = _max1;
	static __class__ = mt_IntIterator;
}
globalvar IntIterator; IntIterator = method(undefined, mc_IntIterator);
mt_IntIterator.i_constructor = IntIterator;

#endregion

#region Lambda
globalvar Lambda; Lambda = {}
/// @hint Lambda.exists(it:Iterable<A>, f:function<item:A;bool>)->bool
Lambda.exists = method(Lambda, function(_it, _f) {
	var _x = _it.iterator();
	while (_x.hasNext()) {
		if (_f(_x.next())) return true;
	}
	return false;
});

#endregion

#region _Map.Map_Impl_
globalvar _Map_Map_Impl_; _Map_Map_Impl_ = {}
/// @hint _Map_Map_Impl_.destroy(this1:haxe_IMap<K; V>)->void
_Map_Map_Impl_.destroy = method(_Map_Map_Impl_, function(_this1) {
	
});
/// @hint _Map_Map_Impl_.clear(this1:haxe_IMap<K; V>)->void
_Map_Map_Impl_.clear = method(_Map_Map_Impl_, function(_this1) {
	_this1.clear();
});
/// @hint _Map_Map_Impl_.set(this1:haxe_IMap<K; V>, key:K, value:V)->void
_Map_Map_Impl_.set = method(_Map_Map_Impl_, function(_this1, _key, _value) {
	_this1.set(_key, _value);
});
/// @hint _Map_Map_Impl_.get(this1:haxe_IMap<K; V>, key:K)->V?
_Map_Map_Impl_.get = method(_Map_Map_Impl_, function(_this1, _key) {
	return _this1.get(_key);
});
/// @hint _Map_Map_Impl_.exists(this1:haxe_IMap<K; V>, key:K)->bool
_Map_Map_Impl_.exists = method(_Map_Map_Impl_, function(_this1, _key) {
	return _this1.exists(_key);
});
/// @hint _Map_Map_Impl_.remove(this1:haxe_IMap<K; V>, key:K)->bool
_Map_Map_Impl_.remove = method(_Map_Map_Impl_, function(_this1, _key) {
	return _this1.remove(_key);
});
/// @hint _Map_Map_Impl_.keys(this1:haxe_IMap<K; V>)->Iterator<K>
_Map_Map_Impl_.keys = method(_Map_Map_Impl_, function(_this1) {
	return _this1.keys();
});
/// @hint _Map_Map_Impl_.iterator(this1:haxe_IMap<K; V>)->Iterator<V>
_Map_Map_Impl_.iterator = method(_Map_Map_Impl_, function(_this1) {
	return _this1.iterator();
});
/// @hint _Map_Map_Impl_.keyValueIterator(this1:haxe_IMap<K; V>)->KeyValueIterator<K; V>
_Map_Map_Impl_.keyValueIterator = method(_Map_Map_Impl_, function(_this1) {
	return _this1.keyValueIterator();
});
/// @hint _Map_Map_Impl_.copy(this1:haxe_IMap<K; V>)->Map<K; V>
_Map_Map_Impl_.copy = method(_Map_Map_Impl_, function(_this1) {
	return _this1.copy();
});
/// @hint _Map_Map_Impl_.toString(this1:haxe_IMap<K; V>)->string
_Map_Map_Impl_.toString = method(_Map_Map_Impl_, function(_this1) {
	return _this1.toString();
});
/// @hint _Map_Map_Impl_.arrayWrite(this1:haxe_IMap<K; V>, k:K, v:V)->V
_Map_Map_Impl_.arrayWrite = method(_Map_Map_Impl_, function(_this1, _k, _v) {
	_this1.set(_k, _v);
	return _v;
});
/// @hint _Map_Map_Impl_.toStringMap(t:IMap<K; V>)->haxe_ds_StringMap<V>
_Map_Map_Impl_.toStringMap = method(_Map_Map_Impl_, function(_t) {
	return new haxe_ds_StringMap();
});
/// @hint _Map_Map_Impl_.toIntMap(t:IMap<K; V>)->haxe_ds_IntMap<V>
_Map_Map_Impl_.toIntMap = method(_Map_Map_Impl_, function(_t) {
	return new haxe_ds_IntMap();
});
/// @hint _Map_Map_Impl_.fromStringMap(map:haxe_ds_StringMap<V>)->Map<string; V>
_Map_Map_Impl_.fromStringMap = method(_Map_Map_Impl_, function(_map) {
	return _map;
});
/// @hint _Map_Map_Impl_.fromIntMap(map:haxe_ds_IntMap<V>)->Map<int; V>
_Map_Map_Impl_.fromIntMap = method(_Map_Map_Impl_, function(_map) {
	return _map;
});

#endregion

#region mathnf
globalvar mathnf; mathnf = {}
/// @hint {number} mathnf.not_a_number
/// @hint {number} mathnf.pos_infinity
/// @hint {number} mathnf.neg_infinity
/// @hint mathnf.init(a:number, b:number)->number
mathnf.init = method(mathnf, function(_a, _b) {
	return _a / _b;
});
/// @hint mathnf.isNaN(v:number)->bool
mathnf.isNaN = method(mathnf, function(_v) {
	return _v != _v;
});
/// @hint mathnf.isFinite(v:number)->bool
mathnf.isFinite = method(mathnf, function(_v) {
	return _v == _v && _v != _v + 1;
});

#endregion

#region Reflect
globalvar Reflect; Reflect = {}
/// @hint Reflect.hasField(o:any, field:string)->bool
Reflect.hasField = method(Reflect, function(_o, _field) {
	if (is_struct(_o)) return variable_struct_exists(_o, _field); else throw string("This method can only be used with struct values.");
});
/// @hint Reflect.field(o:any, field:string)->any
Reflect.field = method(Reflect, function(_o, _field) {
	if (is_struct(_o)) return _o[$ _field]; else throw string("This method can only be used with struct values.");
});
/// @hint Reflect.setField(o:any, field:string, value:any)->void
Reflect.setField = method(Reflect, function(_o, _field, _value) {
	if (is_struct(_o)) {
		_o[$ _field] = _value;
		return 0;
	} else throw string("This method can only be used with struct values.");
});
/// @hint Reflect.getProperty(o:any, field:string)->any
Reflect.getProperty = method(Reflect, function(_o, _field) {
	if (is_struct(_o)) {
		var _getter = _o[$ "get_" + _field];
		if (is_method(_getter)) return method(_o, _getter)();
		return _o[$ _field];
	} else throw string("This method can only be used with struct values.");
});
/// @hint Reflect.setProperty(o:any, field:string, value:any)->void
Reflect.setProperty = method(Reflect, function(_o, _field, _value) {
	if (is_struct(_o)) {
		var _setter = _o[$ "set_" + _field];
		if (is_method(_setter)) method(_o, _setter)(_value); else _o[$ _field] = _value;
	} else throw string("This method can only be used with struct values.");
});
/// @hint Reflect.callMethod(o:any, func:haxe_Function, args1:array<any>)->any
Reflect.callMethod = method(Reflect, function(_o, _func, _args1) {
	var _mt = method(_o, _func);
	var _argc = array_length(_args1);
	if (_argc == undefined) _argc = array_length(_args1);
	if (_argc > 32) throw string("Too many arguments!");
	return gml_internal_NativeFunctionInvoke.funcs[_argc](_mt, _args1);
});
/// @hint Reflect.fields(o:any)->array<string>
Reflect.fields = method(Reflect, function(_o) {
	if (is_struct(_o)) return variable_struct_get_names(_o); else throw string("This method can only be used with struct values.");
});
/// @hint Reflect.isFunction(f:any)->bool
Reflect.isFunction = method(Reflect, function(_f) {
	if (is_method(_f)) return true; else return gml_NativeTypeHelper.isNumber(_f) && script_exists(_f);
});
/// @hint {ds_grid<any>} Reflect.compare_1
/// @hint Reflect.compare(a:T, b:T)->int
Reflect.compare = method(Reflect, function(_a, _b) {
	if (_a != _b) {
		var _g = self.compare_1;
		_g[#0, 0] = _a;
		_g[#0, 1] = _b;
		ds_grid_sort(_g, 0, false);
		var _z = _g[#0, 0] == _a;
		ds_grid_clear(_g, undefined);
		if (_z) return 1; else return -1;
	} else return 0;
});
/// @hint Reflect.compareMethods(f1:any, f2:any)->bool
Reflect.compareMethods = method(Reflect, function(_f1, _f2) {
	if (is_method(_f1)) return is_method(_f2) && method_get_self(_f1) == method_get_self(_f2) && method_get_index(_f1) == method_get_index(_f2);
	return _f1 == _f2;
});
/// @hint Reflect.isObject(v:any)->bool
Reflect.isObject = method(Reflect, function(_v) {
	return is_struct(_v) || is_array(_v);
});
/// @hint Reflect.isEnumValue(v:any)->bool
Reflect.isEnumValue = method(Reflect, function(_v) {
	return is_array(_v);
});
/// @hint Reflect.deleteField(o:any, field:string)->bool
Reflect.deleteField = method(Reflect, function(_o, _field) {
	if (is_struct(_o)) {
		variable_struct_remove(_o, _field);
		return true;
	} else throw string("This method can only be used with struct values.");
});
/// @hint Reflect.copy(o:T)->T
Reflect.copy = method(Reflect, function(_o) {
	if (is_struct(_o)) {
		var _fields = variable_struct_get_names(_o);
		var _r = { }
		var _i = 0;
		for (var __g1 = array_length(_fields); _i < __g1; _i++) {
			var _fd = _fields[_i];
			_r[$ _fd] = _o[$ _fd];
		}
		return _r;
	} else if (is_array(_o)) {
		var _a = _o;
		if (array_length(_a) > 0) {
			_a[0] = _a[0];
		} else {
			var _k = array_height_2d(_a) - 1;
			if (_k >= 0) _a[_k, 0] = _a[_k, 0]; else return [];
		}
		return _a;
	} else return _o;
});
/// @hint Reflect.makeVarArgs(f:function<array<any>;any>)->any
Reflect.makeVarArgs = method(Reflect, function(_f) {
	return method(_f, function() {
		if (false) show_debug_message(argument[argument_count - 1]);
		var _argc = argument_count;
		var _args1 = array_create(_argc, 0);
		var _i = -1;
		while (++_i < _argc) {
			_args1[@_i] = argument[_i];
		}
		var _fn = self;
		return _fn();
	});
});

#endregion

#region _SfRestMixed.SfRestMixed_Impl_
globalvar _SfRestMixed_SfRestMixed_Impl_; _SfRestMixed_SfRestMixed_Impl_ = {}
/// @hint _SfRestMixed_SfRestMixed_Impl_.create(args1:array<any>)->SfRestMixed
_SfRestMixed_SfRestMixed_Impl_.create = method(_SfRestMixed_SfRestMixed_Impl_, function(_args1) {
	return _args1;
});
/// @hint _SfRestMixed_SfRestMixed_Impl_.get(...this1:any, i:int)->any
_SfRestMixed_SfRestMixed_Impl_.get = method(_SfRestMixed_SfRestMixed_Impl_, function() {
	if (false) show_debug_message(argument[argument_count - 1]);
	return argument[_i];
});
/// @hint _SfRestMixed_SfRestMixed_Impl_.arrayWrite(...this1:any, i:int, v:any)->any
_SfRestMixed_SfRestMixed_Impl_.arrayWrite = method(_SfRestMixed_SfRestMixed_Impl_, function() {
	if (false) show_debug_message(argument[argument_count - 1]);
	argument[_i] = _v;
	return _v;
});

#endregion

#region Std
globalvar Std; Std = {}
/// @hint Std.downcast(value:T, c:Class<S>)->S
Std.downcast = method(Std, function(_value, _c) {
	if (gml_internal_StdTypeImpl.is(_value, _c)) return _value; else return undefined;
});
/// @hint Std.stringify(value:any)->string
Std.stringify = method(Std, function(_value) {
	if (_value == undefined) return "null";
	if (is_string(_value)) return _value;
	var _n, _i, _s;
	if (is_struct(_value)) {
		var _e = _value[$"__enum__"];
		if (_e == undefined) return string(_value);
		var _ects = _e.constructors;
		if (_ects != undefined) {
			_i = _value.__enumIndex__;
			if (_i >= 0 && _i < array_length(_ects)) _s = _ects[_i]; else _s = "?";
		} else {
			_s = instanceof(_value);
			if (string_copy(_s, 1, 3) == "mc_") _s = string_delete(_s, 1, 3);
			_n = string_length(_e.name);
			if (string_copy(_s, 1, _n) == _e.name) _s = string_delete(_s, 1, _n + 1);
		}
		_s += "(";
		var _fields = _value.__enumParams__;
		_n = array_length(_fields);
		for (_i = -1; ++_i < _n; _s += Std.stringify(_value[$ _fields[_i]])) {
			if (_i > 0) _s += ", ";
		}
		return _s + ")";
	}
	if (is_real(_value)) {
		_s = string_format(_value, 0, 16);
		if (os_browser != browser_not_a_browser) {
			_n = string_length(_s);
			_i = _n;
			while (_i > 0) {
				switch (string_ord_at(_s, _i)) {
					case 48:
						_i--;
						continue;
					case 46: _i--; break;
				}
				break;
			}
		} else {
			_n = string_byte_length(_s);
			_i = _n;
			while (_i > 0) {
				switch (string_byte_at(_s, _i)) {
					case 48:
						_i--;
						continue;
					case 46: _i--; break;
				}
				break;
			}
		}
		return string_copy(_s, 1, _i);
	}
	return string(_value);
});
/// @hint Std.parseFloat(s:string)->number
Std.parseFloat = method(Std, function(_s) {
	var _l = string_length(_s);
	var _n = string_length(string_digits(_s));
	var _p = string_pos(".", _s);
	var _e = string_pos("e", _s);
	if (_e == 0) _e = string_pos("E", _s);
	switch (_e) {
		case 0: break;
		case 1: return NaN;
		case 2: if (_p > 0) return NaN; break;
		default: if (_p > 0 && _e < _p) return NaN;
	}
	if (_e != 0 && _e < _l - 1) switch (string_ord_at(_s, _e + 1)) {
		case 43: case 45: _l--; break;
	}
	if (_n && _n == _l - (string_ord_at(_s, 1) == 45) - (_p != 0) - (_e != 0)) return real(_s); else return NaN;
});
/// @hint Std.parseInt(value:string)->int?
Std.parseInt = method(Std, function(_value) {
	var _n = string_length(string_digits(_value));
	if (_n && _n == string_length(_value) - (string_ord_at(_value, 1) == 45)) return real(_value); else return undefined;
});

#endregion

#region string

function string_fromCharCode(_i) {
	// string_fromCharCode(i:int)->string
	/// @ignore
	return chr(_i);
}

function string_get_length(_this) {
	// string_get_length(this:string)->int
	/// @ignore
	return string_length(_this);
}

function string_charAt(_this, _i) {
	// string_charAt(this:string, i:int)->string
	/// @ignore
	return string_char_at(_this, _i + 1);
}

function string_charCodeAt(_this, _i) {
	// string_charCodeAt(this:string, i:int)->int
	/// @ignore
	return string_ord_at(_this, _i + 1);
}

function string_pos_ext_haxe(_this, _sub, _startPos) {
	// string_pos_ext_haxe(this:string, sub:string, startPos:int = 0)->int
	/// @ignore
	if (_startPos == undefined) _startPos = 0;
	if (false) show_debug_message(argument[1]);
	var _out = string_pos(_sub, (_startPos > 0 ? string_delete(_this, 1, _startPos) : _this));
	if (_out > 0) return _out + _startPos - 1; else return -1;
}

function string_last_pos_haxe(_this, _sub, _startPos) {
	// string_last_pos_haxe(this:string, sub:string, ?startPos:int)->int
	/// @ignore
	if (false) show_debug_message(argument[1]);
	var _out = -1;
	if (_startPos == undefined) _startPos = string_length(_this);
	while (true) {
		var _p = string_pos_ext_haxe(_this, _sub, _out + 1);
		if (_p == -1 || _p > _startPos) break;
		_out = _p;
	}
	return _out;
}

function string_split(_this, _del) {
	// string_split(this:string, del:string)->array<string>
	/// @ignore
	var _str = _this;
	var _num = 0;
	var _arr = array_create(string_count(_del, _str) + 1, 0);
	for (var _pos = string_pos(_del, _str); _pos > 0; _pos = string_pos(_del, _str)) {
		_arr[@_num] = string_copy(_str, 1, _pos - 1);
		_num++;
		_str = string_delete(_str, 1, _pos);
	}
	_arr[@_num] = _str;
	return _arr;
}

function string_substr(_this, _pos, _len) {
	// string_substr(this:string, pos:int, ?len:int)->string
	/// @ignore
	if (false) show_debug_message(argument[1]);
	if (_pos < 0) _pos += string_length(_this);
	if (_len == undefined) return string_delete(_this, 1, _pos); else return string_copy(_this, 1 + _pos, _len);
}

function string_substring(_this, _start, _end) {
	// string_substring(this:string, start:int, ?end:int)->string
	/// @ignore
	if (false) show_debug_message(argument[1]);
	if (_end == undefined) {
		if (_start > 0) return string_delete(_this, 1, _start); else return _this;
	}
	if (_start < 0) _start = 0;
	if (_end < 0) _end = 0;
	if (_start > _end) {
		var _tmp = _start;
		_start = _end;
		_end = _tmp;
	}
	var _len = string_length(_this);
	if (_start >= _len) {
		return "";
	} else if (_end >= _len) {
		if (_start > 0) return string_delete(_this, 1, _start); else return _this;
	} else return string_copy(_this, _start + 1, _end - _start);
}

function string_toLowerCase(_this) {
	// string_toLowerCase(this:string)->string
	/// @ignore
	return string_lower(_this);
}

function string_toUpperCase(_this) {
	// string_toUpperCase(this:string)->string
	/// @ignore
	return string_upper(_this);
}

#endregion

#region StringBuf

function mc_StringBuf() constructor {
	// StringBuf()
	/// @ignore
	static str = undefined; /// @is {string}
	static strLen = undefined; /// @is {int}
	static arr = undefined; /// @is {array<string>}
	static arrLen = undefined; /// @is {int}
	static arrMax = undefined; /// @is {int}
	static length = undefined; /// @is {int}
	static store = function() {
		var _i = self.arrLen++;
		var _m = self.arrMax;
		var _arr = self.arr;
		if (_i >= _m) {
			_m *= 2;
			_arr[@_m - 1] = undefined;
			self.arrMax = _m;
		}
		_arr[@_i] = self.str;
		self.str = "";
		self.strLen = 0;
	}
	static addChar = function(_c) {
		self.str += chr(_c);
		self.length += 1;
		if (++self.strLen >= 128) self.store();
	}
	static add = function(_val) {
		var _s = Std.stringify(_val);
		var _n = string_byte_length(_s);
		self.str += _s;
		self.length += _n;
		self.strLen += _n;
		if (self.strLen >= 128) self.store();
	}
	static addSub = function(_s, _pos, _len) {
		if (false) show_debug_message(argument[2]);
		var _s1 = (_len != undefined ? string_substr(_s, _pos, _len) : string_substr(_s, _pos));
		var _n = string_byte_length(_s1);
		self.str += _s1;
		self.length += _n;
		self.strLen += _n;
		if (self.strLen >= 128) self.store();
	}
	static toString = function() {
		var _arr = self.arr;
		var _buf = StringBuf.buffer;
		buffer_seek(_buf, buffer_seek_start, 0);
		var _i = 0;
		for (var __g1 = self.arrLen; _i < __g1; _i++) {
			buffer_write(_buf, buffer_text, _arr[_i]);
		}
		buffer_write(_buf, buffer_string, self.str);
		buffer_seek(_buf, buffer_seek_start, 0);
		return buffer_read(_buf, buffer_string);
	}
	self.length = 0;
	self.arrMax = 4;
	self.arrLen = 0;
	self.arr = array_create(4, 0);
	self.strLen = 0;
	self.str = "";
	static __class__ = mt_StringBuf;
}
globalvar StringBuf; StringBuf = method(undefined, mc_StringBuf);
mt_StringBuf.i_constructor = StringBuf;
/// @hint {buffer} StringBuf.buffer

#endregion

#region haxe.SysTools
globalvar haxe_SysTools; haxe_SysTools = {}
/// @hint {haxe_ds_ReadOnlyArray<int>} haxe_SysTools.winMetaCharacters Character codes of the characters that will be escaped by `quoteWinArg(_, true)`.

#endregion

#region StringTools
globalvar StringTools; StringTools = {}
/// @hint StringTools.unsafeCodeAt(s:string, index:int)->int
StringTools.unsafeCodeAt = method(StringTools, function(_s, _index) {
	return string_ord_at(_s, _index);
});
/// @hint {buffer} StringTools.urlEncode_in
/// @hint {buffer} StringTools.urlEncode_out
/// @hint {array<bool>} StringTools.urlEncode_esc
/// @hint {array<int>} StringTools.urlEncode_hex
/// @hint StringTools.urlEncode_init()->buffer
StringTools.urlEncode_init = method(StringTools, function() {
	var _arr = array_create(256, true);
	var _i = 65;
	while (_i <= 90) {
		_arr[@_i++] = false;
	}
	_i = 97;
	while (_i <= 122) {
		_arr[@_i++] = false;
	}
	_i = 48;
	while (_i <= 57) {
		_arr[@_i++] = false;
	}
	_arr[@45] = false;
	_arr[@95] = false;
	_arr[@46] = false;
	_arr[@33] = false;
	_arr[@126] = false;
	_arr[@42] = false;
	_arr[@39] = false;
	_arr[@40] = false;
	_arr[@41] = false;
	self.urlEncode_esc = _arr;
	var _hex = array_create(256, 0);
	for (var _i = 0; _i < 256; _i++) {
		var _h = (_i >> 4);
		var _v = 0;
		if (_h < 10) _v += 48 + _h; else _v += 55 + _h;
		_h = (_i & 15);
		if (_h < 10) _v += (48 + _h) * 256; else _v += (55 + _h) * 256;
		_hex[@_i] = _v;
	}
	self.urlEncode_hex = _hex;
	self.urlEncode_out = buffer_create(1024, buffer_grow, 1);
	return buffer_create(1024, buffer_grow, 1);
});
/// @hint StringTools.urlEncode(s:string)->string Encode an URL by using the standard format.
StringTools.urlEncode = method(StringTools, function(_s) {
	var _inb = self.urlEncode_in;
	if (_inb == -1) _inb = StringTools.urlEncode_init();
	var _outb = self.urlEncode_out;
	var _esc = self.urlEncode_esc;
	var _hex = self.urlEncode_hex;
	buffer_seek(_inb, buffer_seek_start, 0);
	buffer_write(_inb, buffer_text, _s);
	var _n = buffer_tell(_inb);
	buffer_seek(_inb, buffer_seek_start, 0);
	buffer_seek(_outb, buffer_seek_start, 0);
	repeat (_n) {
		var _b = buffer_read(_inb, buffer_u8);
		if (_esc[_b]) {
			buffer_write(_outb, buffer_u8, 37);
			buffer_write(_outb, buffer_u16, _hex[_b]);
		} else buffer_write(_outb, buffer_u8, _b);
	}
	buffer_write(_outb, buffer_u8, 0);
	buffer_seek(_outb, buffer_seek_start, 0);
	return buffer_read(_outb, buffer_string);
});
/// @hint StringTools.urlDecode(s:string)->string Decode an URL using the standard format.
StringTools.urlDecode = method(StringTools, function(_s) {
	throw string("Not implemented");
});
/// @hint StringTools.htmlEscape(s:string, ?quotes:bool)->string
StringTools.htmlEscape = method(StringTools, function(_s, _quotes) {
	if (_quotes == undefined) _quotes = false;
	if (false) show_debug_message(argument[1]);
	_s = string_replace_all(_s, "&", "&amp;");
	_s = string_replace_all(_s, "<", "&lt;");
	_s = string_replace_all(_s, ">", "&gt;");
	if (_quotes) {
		_s = string_replace_all(_s, "\"", "&quot;");
		_s = string_replace_all(_s, "'", "&#039;");
	}
	return _s;
});
/// @hint StringTools.htmlUnescape(s:string)->string
StringTools.htmlUnescape = method(StringTools, function(_s) {
	_s = string_replace_all(_s, "&gt;", ">");
	_s = string_replace_all(_s, "&lt;", "<");
	_s = string_replace_all(_s, "&quot;", "\"");
	_s = string_replace_all(_s, "&#039;", "'");
	_s = string_replace_all(_s, "&amp;", "&");
	return _s;
});
/// @hint StringTools.contains(s:string, value:string)->bool
StringTools.contains = method(StringTools, function(_s, _value) {
	return string_pos_ext_haxe(_s, _value) != -1;
});
/// @hint StringTools.startsWith(s:string, start:string)->bool
StringTools.startsWith = method(StringTools, function(_s, _start) {
	var _n = string_length(_start);
	return string_length(_s) >= _n && string_copy(_s, 1, _n) == _start;
});
/// @hint StringTools.endsWith(s:string, end:string)->bool
StringTools.endsWith = method(StringTools, function(_s, _end) {
	var _n = string_length(_s);
	var _i = string_length(_end);
	return _n >= _i && string_copy(_s, _n + 1 - _i, _i) == _end;
});
/// @hint StringTools.isSpace(s:string, pos:int)->bool
StringTools.isSpace = method(StringTools, function(_s, _pos) {
	var _c = string_ord_at(_s, _pos + 1);
	return (_c > 8 && _c < 14) || _c == 32;
});
/// @hint StringTools.ltrim(s:string)->string
StringTools.ltrim = method(StringTools, function(_s) {
	var _l = string_length(_s);
	var _i = 1;
	while (_i <= _l) {
		var _c = string_ord_at(_s, _i);
		if (_c == 32 || _c > 8 && _c < 14) _i++; else break;
	}
	if (_i > 1) return string_delete(_s, 1, _i - 1); else return _s;
});
/// @hint StringTools.rtrim(s:string)->string
StringTools.rtrim = method(StringTools, function(_s) {
	var _l = string_length(_s);
	var _i = _l;
	while (_i > 0) {
		var _c = string_ord_at(_s, _i);
		if (_c == 32 || _c > 8 && _c < 14) _i--; else break;
	}
	if (_i < _l) return string_copy(_s, 1, _i); else return _s;
});
/// @hint StringTools.trim(s:string)->string
StringTools.trim = method(StringTools, function(_s) {
	var _char;
	var _len = string_length(_s);
	var _till = _len;
	while (_till > 0) {
		_char = string_ord_at(_s, _till);
		if (_char == 32 || _char > 8 && _char < 14) _till--; else break;
	}
	if (_till < _len) _s = string_copy(_s, 1, _till);
	var _start = 1;
	while (_start <= _till) {
		_char = string_ord_at(_s, _start);
		if (_char == 32 || _char > 8 && _char < 14) _start++; else break;
	}
	if (_start > 1) _s = string_delete(_s, 1, _start - 1);
	return _s;
});
/// @hint StringTools.lpad(s:string, c:string, l:int)->string
StringTools.lpad = method(StringTools, function(_s, _c, _l) {
	var _cl = string_length(_c);
	if (_cl <= 0) return _s;
	return string_repeat(_c, ((_l - string_length(_s)) div _cl)) + _s;
});
/// @hint StringTools.rpad(s:string, c:string, l:int)->string
StringTools.rpad = method(StringTools, function(_s, _c, _l) {
	var _cl = string_length(_c);
	if (_cl <= 0) return _s;
	return _s + string_repeat(_c, ((_l - string_length(_s)) div _cl));
});
/// @hint StringTools.hex(n:int, ?digits:int?)->string
StringTools.hex = method(StringTools, function(_n, _digits) {
	if (false) show_debug_message(argument[1]);
	var _s = "";
	var _h = "0123456789ABCDEF";
	if (_n < 0) _n += 4294967295;
	while (_n > 0) {
		_s = string_char_at(_h, 1 + (_n & 15)) + _s;
		_n = _n >> 4;
	}
	if (_digits != undefined) {
		_digits -= string_length(_s);
		if (_digits > 0) _s = string_repeat("0", _digits) + _s;
	}
	return _s;
});
/// @hint StringTools.fastCodeAt(s:string, index:int)->int
StringTools.fastCodeAt = method(StringTools, function(_s, _index) {
	return string_ord_at(_s, _index + 1);
});
/// @hint StringTools.iterator(s:string)->haxe_iterators_StringIterator
StringTools.iterator = method(StringTools, function(_s) {
	return new haxe_iterators_StringIterator(_s);
});
/// @hint StringTools.keyValueIterator(s:string)->haxe_iterators_StringKeyValueIterator
StringTools.keyValueIterator = method(StringTools, function(_s) {
	return new haxe_iterators_StringKeyValueIterator(_s);
});
/// @hint StringTools.isEof(c:int)->bool Tells if `c` represents the end-of-file (EOF) character.
StringTools.isEof = method(StringTools, function(_c) {
	return _c < 0;
});
/// @hint StringTools.quoteUnixArg(argument:string)->string
StringTools.quoteUnixArg = method(StringTools, function(_argument) {
	if (_argument == "") {
		return "''";
	} else if (new EReg("[^a-zA-Z0-9_@%+=:,./-]", "").match(_argument)) {
		return "'" + string_replace_all(_argument, "'", "'\"'\"'") + "'";
	} else return _argument;
});
/// @hint {array<int>} StringTools.winMetaCharacters Character codes of the characters that will be escaped by `quoteWinArg(_, true)`.
/// @hint StringTools.quoteWinArg(argument:string, escapeMetaCharacters:bool)->string
StringTools.quoteWinArg = method(StringTools, function(_argument, _escapeMetaCharacters) {
	var _argument1 = _argument;
	if (!new EReg("^(/)?[^ \t/\\\\\"]+$", "").match(_argument1)) {
		var _result = new StringBuf();
		var _needquote = string_pos_ext_haxe(_argument1, " ") != -1 || string_pos_ext_haxe(_argument1, "\t") != -1 || _argument1 == "" || string_pos_ext_haxe(_argument1, "/") > 0;
		if (_needquote) _result.add("\"");
		var _bs_buf = new StringBuf();
		var _i = 0;
		for (var __g1 = string_length(_argument1); _i < __g1; _i++) {
			var __g2 = string_ord_at(_argument1, _i + 1);
			switch (__g2) {
				case 92: _bs_buf.add("\\"); break;
				case 34:
					var _bs = _bs_buf.toString();
					_result.add(_bs);
					_result.add(_bs);
					_bs_buf = new StringBuf();
					_result.add("\\\"");
					break;
				default:
					if (_bs_buf.length > 0) {
						_result.add(_bs_buf.toString());
						_bs_buf = new StringBuf();
					}
					_result.addChar(__g2);
			}
		}
		_result.add(_bs_buf.toString());
		if (_needquote) {
			_result.add(_bs_buf.toString());
			_result.add("\"");
		}
		_argument1 = _result.toString();
	}
	if (_escapeMetaCharacters) {
		var _result = new StringBuf();
		var _i = 0;
		for (var __g1 = string_length(_argument1); _i < __g1; _i++) {
			var _c = string_ord_at(_argument1, _i + 1);
			if (gml_internal_ArrayImpl.indexOf(haxe_SysTools.winMetaCharacters, _c) >= 0) _result.addChar(94);
			_result.addChar(_c);
		}
		return _result.toString();
	} else return _argument1;
});
/// @hint StringTools.utf16CodePointAt(s:string, index:int)->int
StringTools.utf16CodePointAt = method(StringTools, function(_s, _index) {
	var _c = string_ord_at(_s, _index + 1);
	if (_c >= 55296 && _c <= 56319) _c = ((_c - 55232 << 10) | (string_ord_at(_s, _index + 1 + 1) & 1023));
	return _c;
});

#endregion

#region ValueType

/// @interface {ValueType}
function mc_ValueType() constructor {
	/// @hint {array} ValueType:__enumParams__
	/// @hint {int} ValueType:__enumIndex__
	static getIndex = method(undefined, enum_getIndex);
	static toString = method(undefined, enum_toString);
	static __enum__ = mt_ValueType;
}

global.__mp_ValueType_TNull = [];
/// @implements {ValueType}
function mc_ValueType_TNull() : mc_ValueType() constructor {
	static __enumParams__ = global.__mp_ValueType_TNull;
	static __enumIndex__ = 0;
}
globalvar ValueType_TNull; ValueType_TNull = new mc_ValueType_TNull(); /// @is {ValueType}

global.__mp_ValueType_TInt = [];
/// @implements {ValueType}
function mc_ValueType_TInt() : mc_ValueType() constructor {
	static __enumParams__ = global.__mp_ValueType_TInt;
	static __enumIndex__ = 1;
}
globalvar ValueType_TInt; ValueType_TInt = new mc_ValueType_TInt(); /// @is {ValueType}

global.__mp_ValueType_TFloat = [];
/// @implements {ValueType}
function mc_ValueType_TFloat() : mc_ValueType() constructor {
	static __enumParams__ = global.__mp_ValueType_TFloat;
	static __enumIndex__ = 2;
}
globalvar ValueType_TFloat; ValueType_TFloat = new mc_ValueType_TFloat(); /// @is {ValueType}

global.__mp_ValueType_TBool = [];
/// @implements {ValueType}
function mc_ValueType_TBool() : mc_ValueType() constructor {
	static __enumParams__ = global.__mp_ValueType_TBool;
	static __enumIndex__ = 3;
}
globalvar ValueType_TBool; ValueType_TBool = new mc_ValueType_TBool(); /// @is {ValueType}

global.__mp_ValueType_TObject = [];
/// @implements {ValueType}
function mc_ValueType_TObject() : mc_ValueType() constructor {
	static __enumParams__ = global.__mp_ValueType_TObject;
	static __enumIndex__ = 4;
}
globalvar ValueType_TObject; ValueType_TObject = new mc_ValueType_TObject(); /// @is {ValueType}

global.__mp_ValueType_TFunction = [];
/// @implements {ValueType}
function mc_ValueType_TFunction() : mc_ValueType() constructor {
	static __enumParams__ = global.__mp_ValueType_TFunction;
	static __enumIndex__ = 5;
}
globalvar ValueType_TFunction; ValueType_TFunction = new mc_ValueType_TFunction(); /// @is {ValueType}

global.__mp_ValueType_TClass = ["c"];
/// @implements {ValueType}
function mc_ValueType_TClass() : mc_ValueType() constructor {
	/// @hint {Class<any>} :c
	static __enumParams__ = global.__mp_ValueType_TClass;
	static __enumIndex__ = 6;
}

function ValueType_TClass(_c) {
	// ValueType_TClass(c:Class<any>)->ValueType
	/// @ignore
	var _this = new mc_ValueType_TClass();
	_this.c = _c;
	return _this
}

global.__mp_ValueType_TEnum = ["e"];
/// @implements {ValueType}
function mc_ValueType_TEnum() : mc_ValueType() constructor {
	/// @hint {Enum<any>} :e
	static __enumParams__ = global.__mp_ValueType_TEnum;
	static __enumIndex__ = 7;
}

function ValueType_TEnum(_e) {
	// ValueType_TEnum(e:Enum<any>)->ValueType
	/// @ignore
	var _this = new mc_ValueType_TEnum();
	_this.e = _e;
	return _this
}

global.__mp_ValueType_TUnknown = [];
/// @implements {ValueType}
function mc_ValueType_TUnknown() : mc_ValueType() constructor {
	static __enumParams__ = global.__mp_ValueType_TUnknown;
	static __enumIndex__ = 8;
}
globalvar ValueType_TUnknown; ValueType_TUnknown = new mc_ValueType_TUnknown(); /// @is {ValueType}

#endregion

#region Type
globalvar Type; Type = {}
/// @hint Type.getClass(o:T)->Class<T>
Type.getClass = method(Type, function(_o) {
	return haxe_boot.get_class(_o);
});
/// @hint Type.getEnum(o:any)->Enum<any>
Type.getEnum = method(Type, function(_o) {
	if (is_struct(_o)) return _o[$"__enum__"]; else throw string("This method can only be used with struct values.");
});
/// @hint Type.getSuperClass(c:Class<any>)->Class<any>
Type.getSuperClass = method(Type, function(_c) {
	return _c.superClass;
});
/// @hint Type.getClassName(c:Class<any>)->string
Type.getClassName = method(Type, function(_c) {
	return _c.name;
});
/// @hint Type.getEnumName(e:Enum<any>)->string
Type.getEnumName = method(Type, function(_e) {
	return _e.name;
});
/// @hint Type.resolveClass(name:string)->Class<any>
Type.resolveClass = method(Type, function(_name) {
	return haxe_boot.resolveClassMap[?_name];
});
/// @hint Type.resolveEnum(name:string)->Enum<any>
Type.resolveEnum = method(Type, function(_name) {
	return haxe_boot.resolveEnumMap[?_name];
});
/// @hint Type.createInstance(cl:Class<T>, args1:array<any>)->T
Type.createInstance = method(Type, function(_cl, _args1) {
	if (_cl.index < 0) {
		var _ctr = _cl.i_constructor;
		if (_ctr == undefined) throw string("Class does not have a constructor");
		return gml_internal_NativeConstructorInvoke.call(_ctr, _args1);
	}
	throw string("This method can only be used with struct values.");
});
/// @hint Type.createEmptyInstance(cl:Class<T>)->T
Type.createEmptyInstance = method(Type, function(_cl) {
	throw string("Type.createEmptyInstance is not supported.");
});
/// @hint Type.getInstanceFields(c:Class<any>)->array<string>
Type.getInstanceFields = method(Type, function(_c) {
	throw string("Type.getInstanceFields is not supported.");
});
/// @hint Type.getClassFields(c:Class<any>)->array<string>
Type.getClassFields = method(Type, function(_c) {
	throw string("Type.getClassFields is not supported.");
});
/// @hint Type.typeof(v:any)->ValueType
Type.typeof_ = method(Type, function(_v) {
	if (_v == undefined) return ValueType_TNull;
	if (is_bool(_v)) return ValueType_TBool;
	if (is_int32(_v) || is_int64(_v)) return ValueType_TInt;
	if (is_real(_v)) {
		if ((_v | 0) == _v) return ValueType_TInt; else return ValueType_TFloat;
	}
	if (is_string(_v)) return ValueType_TClass(mt_string);
	if (is_struct(_v)) {
		var _q = _v[$"__enum__"];
		if (_q != undefined) return ValueType_TEnum(_q);
		_q = _v[$"__class__"];
		if (_q != undefined) return ValueType_TClass(_q);
		return ValueType_TObject;
	}
	if (is_method(_v)) return ValueType_TFunction;
	return ValueType_TUnknown;
});
/// @hint Type.enumEq(a:T, b:T)->bool
Type.enumEq = method(Type, function(_a, _b) {
	if (_a == _b) return true;
	var _i, _n;
	if (is_struct(_a)) {
		if (!is_struct(_b)) return false;
		_i = _a[$"__enumIndex__"];
		if (_i == undefined || _i != _b[$"__enumIndex__"]) return false;
		var _params = _a.__enumParams__;
		_n = array_length(_params);
		_i = -1;
		while (++_i < _n) {
			var _p = _params[_i];
			if (!Type.enumEq(_a[$ _p], _b[$ _p])) return false;
		}
		return true;
	}
	if (is_array(_a) && is_array(_b)) {
		_n = array_length(_a);
		_i = -1;
		while (++_i < _n) {
			if (!Type.enumEq(_a[_i], _b[_i])) return false;
		}
		return true;
	}
	return false;
});
/// @hint Type.enumParameters(e:any)->array<any>
Type.enumParameters = method(Type, function(_e) {
	var _n, _r;
	if (is_struct(_e)) {
		var _fields = _e.__enumParams__;
		_n = array_length(_fields);
		_r = array_create(_n, 0);
		var _i = -1;
		while (++_i < _n) {
			_r[@_i] = _e[$ _fields[_i]];
		}
		return _r;
	}
	if (is_array(_e)) {
		var _m = _e;
		_n = array_length(_m) - 1;
		_r = array_create(_n, 0);
		array_copy(_r, 0, _m, 1, _n);
		return _r;
	} else return [];
});
/// @hint Type.allEnums(e:Enum<T>)->array<T>
Type.allEnums = method(Type, function(_e) {
	show_error("Type.allEnums is not supported.", true);
	return undefined;
});

#endregion

#region gml._Instance.InstanceAlarms_Impl_
globalvar gml__Instance_InstanceAlarms_Impl_; gml__Instance_InstanceAlarms_Impl_ = {}
/// @hint gml__Instance_InstanceAlarms_Impl_._new(q:instance)->gml_InstanceAlarms
gml__Instance_InstanceAlarms_Impl_._new = method(gml__Instance_InstanceAlarms_Impl_, function(_q) {
	return _q;
});
/// @hint gml__Instance_InstanceAlarms_Impl_.get(this1:instance, i:int)->int
gml__Instance_InstanceAlarms_Impl_.get = method(gml__Instance_InstanceAlarms_Impl_, function(_this1, _i) {
	return _this1.alarm[_i];
});
/// @hint gml__Instance_InstanceAlarms_Impl_.set(this1:instance, i:int, v:int)->void
gml__Instance_InstanceAlarms_Impl_.set = method(gml__Instance_InstanceAlarms_Impl_, function(_this1, _i, _v) {
	_this1.alarm[_i] = _v;
});
/// @hint gml__Instance_InstanceAlarms_Impl_.rset(this1:instance, i:int, v:int)->int
gml__Instance_InstanceAlarms_Impl_.rset = method(gml__Instance_InstanceAlarms_Impl_, function(_this1, _i, _v) {
	_this1.alarm[_i] = _v;
	return _v;
});

#endregion

#region gml._Lib.Arguments_Impl_
globalvar gml__Lib_Arguments_Impl_; gml__Lib_Arguments_Impl_ = {}
/// @hint {int} gml__Lib_Arguments_Impl_.length

#endregion

#region haxe.type

function haxe_type_has(_obj) {
	// haxe_type_has(obj:any)->bool
	/// @ignore
	if (is_struct(_obj)) return variable_struct_exists(_obj, "__class__");
	if (array_length_1d(_obj) < 1) return false;
	var _meta = _obj[0];
	return is_struct(_meta) && _meta[$"marker"] == haxe_type_markerValue;
}

function haxe_type_get(_obj) {
	// haxe_type_get(obj:T)->haxe_type<T>
	/// @ignore
	if (is_struct(_obj)) return _obj.__class__; else return _obj[0];
}

#endregion

#region haxe.class

function haxe_class(_id, _name) constructor {
	// haxe_class(id:int, name:string)
	/// @ignore
	static superClass = undefined; /// @is {haxe_class<any>}
	static i_constructor = undefined; /// @is {any}
	static marker = undefined; /// @is {any}
	static index = undefined; /// @is {int}
	static name = undefined; /// @is {string}
	self.superClass = undefined;
	self.marker = haxe_type_markerValue;
	self.index = _id;
	self.name = _name;
	static __class__ = "class";
}
mt_haxe_class.i_constructor = haxe_class;

#endregion

#region haxe.enum

function haxe_enum(_id, _name, _constructors, _functions) constructor {
	// haxe_enum(id:int, name:string, ?constructors:array<string>, ?functions:array<haxe_Function>)
	/// @ignore
	static constructors = undefined; /// @is {array<string>}
	static functions = undefined; /// @is {array<haxe_Function>}
	static marker = undefined; /// @is {any}
	static index = undefined; /// @is {int}
	static name = undefined; /// @is {string}
	if (false) show_debug_message(argument[3]);
	self.marker = haxe_type_markerValue;
	self.index = _id;
	self.name = _name;
	self.constructors = _constructors;
	self.functions = _functions;
	static __class__ = "enum";
}
mt_haxe_enum.i_constructor = haxe_enum;

#endregion

#region gml.NativeTypeHelper
globalvar gml_NativeTypeHelper; gml_NativeTypeHelper = {}
/// @hint gml_NativeTypeHelper.isNumber(v:any)->bool
gml_NativeTypeHelper.isNumber = method(gml_NativeTypeHelper, function(_v) {
	return (is_real(_v) || is_bool(_v) || is_int32(_v)) || is_int64(_v);
});
/// @hint gml_NativeTypeHelper.isIntNumber(value:any)->bool
gml_NativeTypeHelper.isIntNumber = method(gml_NativeTypeHelper, function(_value) {
	if (is_real(_value)) return (_value | 0) == _value;
	return (is_int64(_value) || is_int32(_value)) || is_bool(_value);
});
/// @hint gml_NativeTypeHelper.isNonFinite(value:any)->bool
gml_NativeTypeHelper.isNonFinite = method(gml_NativeTypeHelper, function(_value) {
	return is_nan(_value) || is_infinity(_value);
});

#endregion

#region gml.Syntax
globalvar gml_Syntax; gml_Syntax = {}
/// @hint gml_Syntax.i_div(a:number, b:number)->int
gml_Syntax.i_div = method(gml_Syntax, function(_a, _b) {
	return (_a div _b);
});
/// @hint gml_Syntax.i_delete(x:any)->void
gml_Syntax.i_delete = method(gml_Syntax, function(_x) {
	delete _x;
});

#endregion

#region gml.assets._Sprite.SpriteTextures_Impl_
globalvar gml_assets__Sprite_SpriteTextures_Impl_; gml_assets__Sprite_SpriteTextures_Impl_ = {}
/// @hint gml_assets__Sprite_SpriteTextures_Impl_.get(this1:sprite, i:int)->texture
gml_assets__Sprite_SpriteTextures_Impl_.get = method(gml_assets__Sprite_SpriteTextures_Impl_, function(_this1, _i) {
	return sprite_get_texture(_this1, _i);
});

#endregion

#region ds.list
globalvar ds_list; ds_list = {}
/// @hint ds_list.isValid(list:ds_list<T>)->bool
ds_list.isValid = method(ds_list, function(_list) {
	return ds_exists(_list, ds_type_list);
});
/// @hint ds_list._new()->ds_list<T>
ds_list._new = method(ds_list, function() {
	return ds_list_create();
});
/// @hint ds_list.arrayRead(this1:ds_list<T>, index:int)->T
ds_list.arrayRead = method(ds_list, function(_this1, _index) {
	return _this1[|_index];
});
/// @hint ds_list.arrayWrite(this1:ds_list<T>, index:int, value:T)->T
ds_list.arrayWrite = method(ds_list, function(_this1, _index, _value) {
	_this1[|_index] = _value;
	return _value;
});
/// @hint ds_list.copyFrom(this1:ds_list<T>, source:ds_list<T>)->void
ds_list.copyFrom = method(ds_list, function(_this1, _source) {
	ds_list_copy(_this1, _source);
});
/// @hint ds_list.copyTo(this1:ds_list<T>, destination:ds_list<T>)->void
ds_list.copyTo = method(ds_list, function(_this1, _destination) {
	ds_list_copy(_destination, _this1);
});
/// @hint ds_list.iterator(this1:ds_list<T>)->gml_ds__ArrayList_ArrayListIterator<T>
ds_list.iterator = method(ds_list, function(_this1) {
	return new gml_ds__ArrayList_ArrayListIterator(_this1);
});
/// @hint ds_list.keys(this1:ds_list<T>)->IntIterator
ds_list.keys = method(ds_list, function(_this1) {
	return new IntIterator(0, ds_list_size(_this1));
});
/// @hint ds_list.toString(this1:ds_list<T>)->string
ds_list.toString = method(ds_list, function(_this1) {
	var _n = ds_list_size(_this1);
	var _r = "[";
	var _i = 0;
	for (var __g1 = _n; _i < __g1; _i++) {
		if (_i > 0) _r += ", ";
		_r += Std.stringify(_this1[|_i]);
	}
	return _r + "]";
});

#endregion

#region gml.ds._ArrayList.ArrayListIterator

function mc_gml_ds__ArrayList_ArrayListIterator(_subject) constructor {
	// gml_ds__ArrayList_ArrayListIterator(subject:ds_list<T>)
	/// @ignore
	static list = undefined; /// @is {ds_list<T>}
	static index = undefined; /// @is {int}
	static hasNext = function() {
		return self.index < ds_list_size(self.list);
	}
	static next = function() {
		return self.list[|self.index++];
	}
	self.list = _subject;
	self.index = 0;
	//
}
globalvar gml_ds__ArrayList_ArrayListIterator; gml_ds__ArrayList_ArrayListIterator = method(undefined, mc_gml_ds__ArrayList_ArrayListIterator);

#endregion

#region gml.ds._Color.Color_Impl_
globalvar gml_ds__Color_Color_Impl_; gml_ds__Color_Color_Impl_ = {}
/// @hint {int} gml_ds__Color_Color_Impl_.red
/// @hint gml_ds__Color_Color_Impl_.get_red(this1:int)->int
gml_ds__Color_Color_Impl_.get_red = method(gml_ds__Color_Color_Impl_, function(_this1) {
	return (_this1 & 255);
});
/// @hint gml_ds__Color_Color_Impl_.set_red(this1:int, i:int)->int
gml_ds__Color_Color_Impl_.set_red = method(gml_ds__Color_Color_Impl_, function(_this1, _i) {
	_this1 = ((_this1 & 16776960) | (_i & 255));
	return _i;
});
/// @hint {int} gml_ds__Color_Color_Impl_.green
/// @hint gml_ds__Color_Color_Impl_.get_green(this1:int)->int
gml_ds__Color_Color_Impl_.get_green = method(gml_ds__Color_Color_Impl_, function(_this1) {
	return ((_this1 >> 8) & 255);
});
/// @hint gml_ds__Color_Color_Impl_.set_green(this1:int, i:int)->int
gml_ds__Color_Color_Impl_.set_green = method(gml_ds__Color_Color_Impl_, function(_this1, _i) {
	_this1 = ((_this1 & 16711935) | ((_i & 255) << 8));
	return _i;
});
/// @hint {int} gml_ds__Color_Color_Impl_.blue
/// @hint gml_ds__Color_Color_Impl_.get_blue(this1:int)->int
gml_ds__Color_Color_Impl_.get_blue = method(gml_ds__Color_Color_Impl_, function(_this1) {
	return ((_this1 >> 16) & 255);
});
/// @hint gml_ds__Color_Color_Impl_.set_blue(this1:int, i:int)->int
gml_ds__Color_Color_Impl_.set_blue = method(gml_ds__Color_Color_Impl_, function(_this1, _i) {
	_this1 = ((_this1 & 65535) | ((_i & 255) << 16));
	return _i;
});
/// @hint {number} gml_ds__Color_Color_Impl_.hue
/// @hint gml_ds__Color_Color_Impl_.get_hue(this1:int)->number
gml_ds__Color_Color_Impl_.get_hue = method(gml_ds__Color_Color_Impl_, function(_this1) {
	return color_get_hue(_this1);
});
/// @hint gml_ds__Color_Color_Impl_.set_hue(this1:int, v:number)->number
gml_ds__Color_Color_Impl_.set_hue = method(gml_ds__Color_Color_Impl_, function(_this1, _v) {
	_this1 = gml_ds__Color_Color_Impl_.change_hue(_this1, _v);
	return _v;
});
/// @hint gml_ds__Color_Color_Impl_.change_hue(c:int, v:number)->int
gml_ds__Color_Color_Impl_.change_hue = method(gml_ds__Color_Color_Impl_, function(_c, _v) {
	return make_colour_hsv(_v, color_get_saturation(_c), color_get_value(_c));
});
/// @hint {number} gml_ds__Color_Color_Impl_.saturation
/// @hint gml_ds__Color_Color_Impl_.get_saturation(this1:int)->number
gml_ds__Color_Color_Impl_.get_saturation = method(gml_ds__Color_Color_Impl_, function(_this1) {
	return color_get_saturation(_this1);
});
/// @hint gml_ds__Color_Color_Impl_.set_saturation(this1:int, v:number)->number
gml_ds__Color_Color_Impl_.set_saturation = method(gml_ds__Color_Color_Impl_, function(_this1, _v) {
	_this1 = gml_ds__Color_Color_Impl_.change_saturation(_this1, _v);
	return _v;
});
/// @hint gml_ds__Color_Color_Impl_.change_saturation(c:int, v:number)->int
gml_ds__Color_Color_Impl_.change_saturation = method(gml_ds__Color_Color_Impl_, function(_c, _v) {
	return make_colour_hsv(color_get_hue(_c), _v, color_get_value(_c));
});
/// @hint {number} gml_ds__Color_Color_Impl_.value
/// @hint gml_ds__Color_Color_Impl_.get_value(this1:int)->number
gml_ds__Color_Color_Impl_.get_value = method(gml_ds__Color_Color_Impl_, function(_this1) {
	return color_get_value(_this1);
});
/// @hint gml_ds__Color_Color_Impl_.set_value(this1:int, v:number)->number
gml_ds__Color_Color_Impl_.set_value = method(gml_ds__Color_Color_Impl_, function(_this1, _v) {
	_this1 = gml_ds__Color_Color_Impl_.change_value(_this1, _v);
	return _v;
});
/// @hint gml_ds__Color_Color_Impl_.change_value(c:int, v:number)->int
gml_ds__Color_Color_Impl_.change_value = method(gml_ds__Color_Color_Impl_, function(_c, _v) {
	return make_colour_hsv(color_get_hue(_c), color_get_saturation(_c), _v);
});
/// @hint gml_ds__Color_Color_Impl_.fromRGB(r:number, g:number, b:number)->int
gml_ds__Color_Color_Impl_.fromRGB = method(gml_ds__Color_Color_Impl_, function(_r, _g, _b) {
	return make_colour_rgb(_r, _g, _b);
});
/// @hint gml_ds__Color_Color_Impl_.fromHSV(h:number, s:number, v:number)->int
gml_ds__Color_Color_Impl_.fromHSV = method(gml_ds__Color_Color_Impl_, function(_h, _s, _v) {
	return make_colour_hsv(_h, _s, _v);
});
/// @hint gml_ds__Color_Color_Impl_.fromHex(h:int)->int Converts from a RGB constant to GameMaker's BGR
gml_ds__Color_Color_Impl_.fromHex = method(gml_ds__Color_Color_Impl_, function(_h) {
	return ((((_h & 16711680) >> 16) | (_h & 65280)) | ((_h & 255) << 16));
});
/// @hint gml_ds__Color_Color_Impl_.merge(c1:int, c2:int, f:number)->int
gml_ds__Color_Color_Impl_.merge = method(gml_ds__Color_Color_Impl_, function(_c1, _c2, _f) {
	return merge_colour(_c1, _c2, _f);
});

#endregion

#region gml.ds.GridIterator

function mc_gml_ds_GridIterator(_grid) constructor {
	// gml_ds_GridIterator(grid:ds_grid<T>)
	/// @ignore
	static grid = undefined; /// @is {ds_grid<T>}
	static col = undefined; /// @is {int}
	static row = undefined; /// @is {int}
	static cols = undefined; /// @is {int}
	static rows = undefined; /// @is {int}
	self.row = 0;
	self.col = 0;
	self.grid = _grid;
	self.cols = ds_grid_width(_grid);
	self.rows = ds_grid_height(_grid);
	static __class__ = mt_gml_ds_GridIterator;
}
globalvar gml_ds_GridIterator; gml_ds_GridIterator = method(undefined, mc_gml_ds_GridIterator);
mt_gml_ds_GridIterator.i_constructor = gml_ds_GridIterator;

#endregion

#region gml.ds._HashTable.HashTable_Impl_
globalvar gml_ds__HashTable_HashTable_Impl_; gml_ds__HashTable_HashTable_Impl_ = {}
/// @hint gml_ds__HashTable_HashTable_Impl_.isValid(map:ds_map<K; V>)->bool
gml_ds__HashTable_HashTable_Impl_.isValid = method(gml_ds__HashTable_HashTable_Impl_, function(_map) {
	return ds_exists(_map, ds_type_map);
});
/// @hint gml_ds__HashTable_HashTable_Impl_._new()->ds_map<K; V>
gml_ds__HashTable_HashTable_Impl_._new = method(gml_ds__HashTable_HashTable_Impl_, function() {
	return ds_map_create();
});
/// @hint gml_ds__HashTable_HashTable_Impl_.arrayRead(this1:ds_map<K; V>, key:K)->V
gml_ds__HashTable_HashTable_Impl_.arrayRead = method(gml_ds__HashTable_HashTable_Impl_, function(_this1, _key) {
	return _this1[?_key];
});
/// @hint gml_ds__HashTable_HashTable_Impl_.arrayWrite(this1:ds_map<K; V>, key:K, value:V)->V
gml_ds__HashTable_HashTable_Impl_.arrayWrite = method(gml_ds__HashTable_HashTable_Impl_, function(_this1, _key, _value) {
	_this1[?_key] = _value;
	return _value;
});
/// @hint gml_ds__HashTable_HashTable_Impl_.parse(json:string)->ds_map<string; any>
gml_ds__HashTable_HashTable_Impl_.parse = method(gml_ds__HashTable_HashTable_Impl_, function(_json) {
	return json_decode(_json);
});

#endregion

#region ds_map_key_iterator

function mc_ds_map_key_iterator(_map) constructor {
	// ds_map_key_iterator(map:ds_map<K; V>)
	/// @ignore
	static map = undefined; /// @is {ds_map<K; V>}
	static keys = undefined; /// @is {array<K>}
	static index = undefined; /// @is {int}
	static count = undefined; /// @is {int}
	static hasNext = function() {
		return self.index < self.count;
	}
	static next = function() {
		return self.keys[self.index++];
	}
	self.map = _map;
	self.keys = [];
	ds_map_keys_to_array(self.map, self.keys);
	self.index = 0;
	self.count = array_length(self.keys);
	//
}
globalvar ds_map_key_iterator; ds_map_key_iterator = method(undefined, mc_ds_map_key_iterator);

#endregion

#region ds_map_value_iterator

function mc_ds_map_value_iterator(_map) constructor {
	// ds_map_value_iterator(map:ds_map<K; V>)
	/// @ignore
	static map = undefined; /// @is {ds_map<K; V>}
	static key = undefined; /// @is {K}
	static hasNext = function() {
		return self.key != undefined;
	}
	static next = function() {
		var _out = self.map[?self.key];
		self.key = ds_map_find_next(self.map, self.key);
		return _out;
	}
	self.map = _map;
	self.key = ds_map_find_first(self.map);
	//
}
globalvar ds_map_value_iterator; ds_map_value_iterator = method(undefined, mc_ds_map_value_iterator);

#endregion

#region vertex_format_hx
globalvar vertex_format_hx; vertex_format_hx = {}
/// @hint vertex_format_hx.create(...data:gml_gpu_VertexFormatData)->vertex_format_hx
vertex_format_hx.create = method(vertex_format_hx, function() {
	if (false) show_debug_message(argument[argument_count - 1]);
	vertex_format_begin();
	var __g = 0;
	while (__g < argument_count) {
		var _item = argument[__g];
		__g++;
		switch (_item[0]) {
			case gml_gpu_VertexFormatData.Color: vertex_format_add_color(); break;
			case gml_gpu_VertexFormatData.Pos2d: vertex_format_add_position(); break;
			case gml_gpu_VertexFormatData.Pos3d: vertex_format_add_position_3d(); break;
			case gml_gpu_VertexFormatData.TexCoord: vertex_format_add_texcoord(); break;
			case gml_gpu_VertexFormatData.Normal: vertex_format_add_normal(); break;
			case gml_gpu_VertexFormatData.Custom: vertex_format_add_custom(_item[1/* type */], _item[2/* usage */]); break;
		}
	}
	return vertex_format_end();
});
/// @hint vertex_format_hx.i_end()->vertex_format_hx
vertex_format_hx.i_end = method(vertex_format_hx, function() {
	return vertex_format_end();
});

#endregion

#region gml.internal.ArrayImpl
globalvar gml_internal_ArrayImpl; gml_internal_ArrayImpl = {}
/// @hint gml_internal_ArrayImpl.shift(arr:array<T>)->T?
gml_internal_ArrayImpl.shift = method(gml_internal_ArrayImpl, function(_arr) {
	if (array_length(_arr) == 0) return undefined;
	var _result = _arr[0];
	array_delete(_arr, 0, 1);
	return _result;
});
/// @hint gml_internal_ArrayImpl.splice(arr:array<T>, pos:int, len:int)->array<T>
gml_internal_ArrayImpl.splice = method(gml_internal_ArrayImpl, function(_arr, _pos, _len) {
	if (_pos < 0) {
		_pos += array_length(_arr);
		if (_pos < 0) _pos = 0;
	}
	var _n = array_length(_arr);
	if (_pos + _len > _n) _len = _n - _pos;
	if (_len <= 0) return [];
	var _r = array_create(_len, 0);
	array_copy(_r, 0, _arr, _pos, _len);
	array_delete(_arr, _pos, _len);
	return _r;
});
/// @hint gml_internal_ArrayImpl.indexOf(arr:array<T>, v:T, ?i:int)->int
gml_internal_ArrayImpl.indexOf = method(gml_internal_ArrayImpl, function(_arr, _v, _i) {
	if (_i == undefined) _i = 0;
	if (false) show_debug_message(argument[2]);
	var _len = array_length(_arr);
	if (_i < 0) {
		_i += _len;
		if (_i < 0) _i = 0;
	}
	while (_i < _len) {
		if (_arr[_i] == _v) return _i;
		_i++;
	}
	return -1;
});
/// @hint {buffer} gml_internal_ArrayImpl.join_buf
/// @hint gml_internal_ArrayImpl.join(arr:array<T>, sep:string)->string
gml_internal_ArrayImpl.join = method(gml_internal_ArrayImpl, function(_arr, _sep) {
	var _len = array_length(_arr);
	if (_len == 0) return "";
	var _buf = self.join_buf;
	if (_buf == undefined) {
		_buf = buffer_create(1024, buffer_grow, 1);
		self.join_buf = _buf;
	}
	buffer_seek(_buf, buffer_seek_start, 0);
	buffer_write(_buf, buffer_text, Std.stringify(_arr[0]));
	var _i = 1;
	for (var __g1 = _len; _i < __g1; _i++) {
		buffer_write(_buf, buffer_text, _sep);
		buffer_write(_buf, buffer_text, Std.stringify(_arr[_i]));
	}
	buffer_write(_buf, buffer_u8, 0);
	buffer_seek(_buf, buffer_seek_start, 0);
	return buffer_read(_buf, buffer_string);
});
/// @hint gml_internal_ArrayImpl.slice(arr:array<T>, pos:int, ?end:int?)->array<T>
gml_internal_ArrayImpl.slice = method(gml_internal_ArrayImpl, function(_arr, _pos, _end) {
	if (false) show_debug_message(argument[2]);
	var _len = array_length(_arr);
	if (_pos < 0) {
		_pos += _len;
		if (_pos < 0) _pos = 0;
	}
	if (_end == undefined || _end > _len) _end = _len;
	var _len = _end - _pos;
	var _out = array_create(_len, 0);
	array_copy(_out, 0, _arr, _pos, _len);
	return _out;
});
/// @hint gml_internal_ArrayImpl.copy(arr:array<T>)->array<T>
gml_internal_ArrayImpl.copy = method(gml_internal_ArrayImpl, function(_arr) {
	var _out;
	var _len = array_length(_arr);
	if (_len > 0) {
		_out = array_create(_len, 0);
		array_copy(_out, 0, _arr, 0, _len);
	} else _out = [];
	return _out;
});
/// @hint gml_internal_ArrayImpl.sort(arr:array<T>, fn:function<T;T;int>)->void
gml_internal_ArrayImpl.sort = method(gml_internal_ArrayImpl, function(_arr, _fn) {
	var _i = 0;
	for (var _l = array_length(_arr); _i < _l; _i++) {
		var _swap = false;
		var _j = 0;
		for (var _max1 = _l - _i - 1; _j < _max1; _j++) {
			if (_fn(_arr[_j], _arr[_j + 1]) > 0) {
				var _tmp = _arr[_j + 1];
				_arr[@_j + 1] = _arr[_j];
				_arr[@_j] = _tmp;
				_swap = true;
			}
		}
		if (!_swap) break;
	}
});

#endregion

#region gml.internal.NativeConstructorInvoke
globalvar gml_internal_NativeConstructorInvoke; gml_internal_NativeConstructorInvoke = {}
/// @hint gml_internal_NativeConstructorInvoke.call(ctr:any, args1:array<any>, ?argc:int?)->any
gml_internal_NativeConstructorInvoke.call = method(gml_internal_NativeConstructorInvoke, function(_ctr, _args1, _argc) {
	if (false) show_debug_message(argument[2]);
	if (_argc == undefined) _argc = array_length(_args1);
	if (_argc > 32) throw string("Too many arguments!");
	return self.funcs[_argc](_ctr, _args1);
});
/// @hint {array<function<ctr:any;args:array<any>;any>>} gml_internal_NativeConstructorInvoke.funcs

#endregion

#region gml.internal.NativeFunctionInvoke
globalvar gml_internal_NativeFunctionInvoke; gml_internal_NativeFunctionInvoke = {}
/// @hint gml_internal_NativeFunctionInvoke.call(fn:any, args1:array<any>, ?argc:int?)->any
gml_internal_NativeFunctionInvoke.call = method(gml_internal_NativeFunctionInvoke, function(_fn, _args1, _argc) {
	if (false) show_debug_message(argument[2]);
	if (_argc == undefined) _argc = array_length(_args1);
	if (_argc > 32) throw string("Too many arguments!");
	return self.funcs[_argc](_fn, _args1);
});
/// @hint {array<function<fn:any;args:array<any>;any>>} gml_internal_NativeFunctionInvoke.funcs

#endregion

#region gml.internal.StdTypeImpl
globalvar gml_internal_StdTypeImpl; gml_internal_StdTypeImpl = {}
/// @hint gml_internal_StdTypeImpl.is(value:any, type:any)->bool
gml_internal_StdTypeImpl.is = method(gml_internal_StdTypeImpl, function(_value, _type) {
	if (_type == undefined) return false;
	switch (_type) {
		case mt_Array: return is_array(_value);
		case mt_string: return is_string(_value);
		default:
			if (_value == undefined) return false;
			if (!is_struct(_type)) return false;
			var _mt;
			if (is_struct(_value)) {
				_mt = _value[$"__class__"];
				if (_mt == undefined) {
					_mt = _value[$"__enum__"];
					if (_mt == undefined) return false;
				}
			} else if (haxe_type_has(_value)) {
				_mt = haxe_type_get(_value);
			} else if (gml_NativeTypeHelper.isNumber(_value)) {
				_mt = undefined;
				with (_value) _mt = variable_instance_get(self, "__class__");
				if (_mt == undefined) return false;
			} else return false;
			if (_mt == _type) return true;
			if (is_struct(_mt) && variable_struct_exists(_mt, "superClass")) for (var _mc = _mt.superClass; is_struct(_mc); _mc = _mc.superClass) {
				if (_mc == _type) return true;
			}
			return false;
	}
});

#endregion

#region gml.io._Buffer.BufferImpl
globalvar gml_io__Buffer_BufferImpl; gml_io__Buffer_BufferImpl = {}
/// @hint gml_io__Buffer_BufferImpl.readBuffer(src:buffer, dst:buffer, dstPos:int, len:int)->int
gml_io__Buffer_BufferImpl.readBuffer = method(gml_io__Buffer_BufferImpl, function(_src, _dst, _dstPos, _len) {
	var _srcPos = buffer_tell(_src);
	var _srcLen = min(_len, buffer_get_size(_src) - _srcPos);
	var _dstLen = min(_srcLen, buffer_get_size(_dst) - _dstPos);
	if (_srcLen < 0) return 0;
	if (_dstLen < 0) {
		buffer_seek(_src, buffer_seek_relative, _srcLen);
		return 0;
	}
	buffer_copy(_src, _srcPos, _dstLen, _dst, _dstPos);
	buffer_seek(_src, buffer_seek_relative, _srcLen);
	return _dstLen;
});
/// @hint gml_io__Buffer_BufferImpl.writeBuffer(dst:buffer, src:buffer)->bool
gml_io__Buffer_BufferImpl.writeBuffer = method(gml_io__Buffer_BufferImpl, function(_dst, _src) {
	var _dstPos = buffer_tell(_dst);
	var _srcLen = buffer_get_size(_src);
	var _dstNext = _dstPos + _srcLen;
	var _dstSize = buffer_get_size(_dst);
	if (_dstNext > _dstSize) {
		if (buffer_get_type(_dst) == buffer_grow) {
			do {
				_dstSize *= 2;
			} until (_dstNext <= _dstSize);
			buffer_resize(_dst, _dstSize);
		} else return false;
	}
	buffer_copy(_src, 0, _srcLen, _dst, _dstPos);
	buffer_seek(_dst, buffer_seek_start, _dstNext);
	return true;
});
/// @hint gml_io__Buffer_BufferImpl.writeBufferExt(dst:buffer, src:buffer, srcPos:int, srcLen:int)->bool
gml_io__Buffer_BufferImpl.writeBufferExt = method(gml_io__Buffer_BufferImpl, function(_dst, _src, _srcPos, _srcLen) {
	var _dstPos = buffer_tell(_dst);
	var _dstNext = _dstPos + _srcLen;
	var _dstSize = buffer_get_size(_dst);
	if (_dstNext > _dstSize) {
		if (buffer_get_type(_dst) == buffer_grow) {
			do {
				_dstSize *= 2;
			} until (_dstNext <= _dstSize);
			buffer_resize(_dst, _dstSize);
		} else return false;
	}
	buffer_copy(_src, _srcPos, _srcLen, _dst, _dstPos);
	buffer_seek(_dst, buffer_seek_start, _dstNext);
	return true;
});
/// @hint gml_io__Buffer_BufferImpl.bufferSurfaceFunctionsHave3args_init()->bool
gml_io__Buffer_BufferImpl.bufferSurfaceFunctionsHave3args_init = method(gml_io__Buffer_BufferImpl, function() {
	var _rt = GM_runtime_version;
	if (string_pos("2.3.0.", _rt) == 1) return false;
	if (string_pos("23.1.1.", _rt) != 1) return true;
	var _buildStr = string_delete(_rt, 1, string_length("23.1.1."));
	if (string_digits(_buildStr) != _buildStr) return true;
	return real(_buildStr) >= 186;
});
/// @hint {bool} gml_io__Buffer_BufferImpl.bufferSurfaceFunctionsHave3args
/// @hint gml_io__Buffer_BufferImpl.getSetSurface_init(fn:any)->function<buf:buffer;surf:surface;offset:int;void>
gml_io__Buffer_BufferImpl.getSetSurface_init = method(gml_io__Buffer_BufferImpl, function(_fn) {
	var _ctx = { fn: _fn }
	if (self.bufferSurfaceFunctionsHave3args) return method(_ctx, function(_buf, _surf, _offset) {
		self.fn(_buf, _surf, _offset)
	}); else return method(_ctx, function(_buf, _surf, _offset) {
		self.fn(_buf, _surf, 0, _offset, 0)
	});
});
/// @hint gml_io__Buffer_BufferImpl.getSurface(buf:buffer, surf:surface, offset:int)->void
/// @hint gml_io__Buffer_BufferImpl.setSurface(buf:buffer, surf:surface, offset:int)->void

#endregion

#region haxe.StackItem

/// @interface {haxe_StackItem}
function mc_haxe_StackItem() constructor {
	/// @hint {array} haxe_StackItem:__enumParams__
	/// @hint {int} haxe_StackItem:__enumIndex__
	static getIndex = method(undefined, enum_getIndex);
	static toString = method(undefined, enum_toString);
	static __enum__ = mt_haxe_StackItem;
}

global.__mp_haxe_StackItem_CFunction = [];
/// @implements {haxe_StackItem}
function mc_haxe_StackItem_CFunction() : mc_haxe_StackItem() constructor {
	static __enumParams__ = global.__mp_haxe_StackItem_CFunction;
	static __enumIndex__ = 0;
}
globalvar haxe_StackItem_CFunction; haxe_StackItem_CFunction = new mc_haxe_StackItem_CFunction(); /// @is {haxe_StackItem}

global.__mp_haxe_StackItem_Module = ["m"];
/// @implements {haxe_StackItem}
function mc_haxe_StackItem_Module() : mc_haxe_StackItem() constructor {
	/// @hint {string} :m
	static __enumParams__ = global.__mp_haxe_StackItem_Module;
	static __enumIndex__ = 1;
}

function haxe_StackItem_Module(_m) {
	// haxe_StackItem_Module(m:string)->haxe_StackItem
	/// @ignore
	var _this = new mc_haxe_StackItem_Module();
	_this.m = _m;
	return _this
}

global.__mp_haxe_StackItem_FilePos = ["s", "file", "line", "column"];
/// @implements {haxe_StackItem}
function mc_haxe_StackItem_FilePos() : mc_haxe_StackItem() constructor {
	/// @hint {haxe_StackItem?} :s
	/// @hint {string} :file
	/// @hint {int} :line
	/// @hint {int?} :column
	static __enumParams__ = global.__mp_haxe_StackItem_FilePos;
	static __enumIndex__ = 2;
}

function haxe_StackItem_FilePos(_s, _file, _line, _column) {
	// haxe_StackItem_FilePos(s:haxe_StackItem?, file:string, line:int, ?column:int)->haxe_StackItem
	/// @ignore
	var _this = new mc_haxe_StackItem_FilePos();
	_this.s = _s;
	_this.file = _file;
	_this.line = _line;
	_this.column = _column;
	if (false) return argument[3];
	return _this
}

global.__mp_haxe_StackItem_Method = ["classname", "i_method"];
/// @implements {haxe_StackItem}
function mc_haxe_StackItem_Method() : mc_haxe_StackItem() constructor {
	/// @hint {string?} :classname
	/// @hint {string} :i_method
	static __enumParams__ = global.__mp_haxe_StackItem_Method;
	static __enumIndex__ = 3;
}

function haxe_StackItem_Method(_classname, _i_method) {
	// haxe_StackItem_Method(classname:string?, i_method:string)->haxe_StackItem
	/// @ignore
	var _this = new mc_haxe_StackItem_Method();
	_this.classname = _classname;
	_this.i_method = _i_method;
	return _this
}

global.__mp_haxe_StackItem_LocalFunction = ["v"];
/// @implements {haxe_StackItem}
function mc_haxe_StackItem_LocalFunction() : mc_haxe_StackItem() constructor {
	/// @hint {int?} :v
	static __enumParams__ = global.__mp_haxe_StackItem_LocalFunction;
	static __enumIndex__ = 4;
}

function haxe_StackItem_LocalFunction(_v) {
	// haxe_StackItem_LocalFunction(?v:int)->haxe_StackItem
	/// @ignore
	var _this = new mc_haxe_StackItem_LocalFunction();
	_this.v = _v;
	if (false) return argument[0];
	return _this
}

#endregion

#region haxe._CallStack.CallStack_Impl_
globalvar haxe__CallStack_CallStack_Impl_; haxe__CallStack_CallStack_Impl_ = {}
/// @hint haxe__CallStack_CallStack_Impl_.get_length(this1:array<haxe_StackItem>)->int
haxe__CallStack_CallStack_Impl_.get_length = method(haxe__CallStack_CallStack_Impl_, function(_this1) {
	return array_length(_this1);
});
/// @hint haxe__CallStack_CallStack_Impl_.copy(this1:array<haxe_StackItem>)->haxe_CallStack
haxe__CallStack_CallStack_Impl_.copy = method(haxe__CallStack_CallStack_Impl_, function(_this1) {
	return gml_internal_ArrayImpl.copy(_this1);
});
/// @hint haxe__CallStack_CallStack_Impl_.get(this1:array<haxe_StackItem>, index:int)->haxe_StackItem
haxe__CallStack_CallStack_Impl_.get = method(haxe__CallStack_CallStack_Impl_, function(_this1, _index) {
	return _this1[_index];
});
/// @hint haxe__CallStack_CallStack_Impl_.asArray(this1:array<haxe_StackItem>)->array<haxe_StackItem>
haxe__CallStack_CallStack_Impl_.asArray = method(haxe__CallStack_CallStack_Impl_, function(_this1) {
	return _this1;
});
/// @hint haxe__CallStack_CallStack_Impl_.subtract(this1:array<haxe_StackItem>, stack:haxe_CallStack)->haxe_CallStack
haxe__CallStack_CallStack_Impl_.subtract = method(haxe__CallStack_CallStack_Impl_, function(_this1, _stack) {
	var _startIndex = -1;
	var _i = -1;
	while (++_i < array_length(_this1)) {
		var _j = 0;
		for (var __g1 = array_length(_stack); _j < __g1; _j++) {
			if (haxe__CallStack_CallStack_Impl_.equalItems(_this1[_i], _stack[_j])) {
				if (_startIndex < 0) _startIndex = _i;
				_i++;
				if (_i >= array_length(_this1)) break;
			} else _startIndex = -1;
		}
		if (_startIndex >= 0) break;
	}
	if (_startIndex >= 0) return gml_internal_ArrayImpl.slice(_this1, 0, _startIndex); else return _this1;
});
/// @hint haxe__CallStack_CallStack_Impl_.equalItems(item1:haxe_StackItem?, item2:haxe_StackItem?)->bool
haxe__CallStack_CallStack_Impl_.equalItems = method(haxe__CallStack_CallStack_Impl_, function(_item1, _item2) {
	if (_item1 == undefined) {
		return _item2 == undefined && true;
	} else switch (_item1.__enumIndex__/* haxe_StackItem */) {
		case 0/* CFunction */: if (_item2 == undefined) return false; else return _item2.__enumIndex__ == 0 && true;
		case 1/* Module */:
			if (_item2 == undefined) {
				return false;
			} else if (_item2.__enumIndex__/* haxe_StackItem */ == 1/* Module */) {
				return _item1.m == _item2.m;
			} else return false;
		case 2/* FilePos */:
			if (_item2 == undefined) {
				return false;
			} else if (_item2.__enumIndex__/* haxe_StackItem */ == 2/* FilePos */) {
				var _item21 = _item2.s;
				var _file2 = _item2.file;
				var _line2 = _item2.line;
				var _col2 = _item2.column;
				var _col1 = _item1.column;
				var _line1 = _item1.line;
				var _file1 = _item1.file;
				var _item11 = _item1.s;
				return _file1 == _file2 && _line1 == _line2 && _col1 == _col2 && haxe__CallStack_CallStack_Impl_.equalItems(_item11, _item21);
			} else return false;
		case 3/* Method */:
			if (_item2 == undefined) {
				return false;
			} else if (_item2.__enumIndex__/* haxe_StackItem */ == 3/* Method */) {
				var _class2 = _item2.classname;
				var _method2 = _item2.i_method;
				var _method1 = _item1.i_method;
				return _item1.classname == _class2 && _method1 == _method2;
			} else return false;
		case 4/* LocalFunction */:
			if (_item2 == undefined) {
				return false;
			} else if (_item2.__enumIndex__/* haxe_StackItem */ == 4/* LocalFunction */) {
				return _item1.v == _item2.v;
			} else return false;
	}
});
/// @hint {buffer} haxe__CallStack_CallStack_Impl_.toString_buf
/// @hint haxe__CallStack_CallStack_Impl_.toString(s:haxe_CallStack)->string
haxe__CallStack_CallStack_Impl_.toString = method(haxe__CallStack_CallStack_Impl_, function(_s) {
	var _b = self.toString_buf;
	if (_b == -1) {
		_b = buffer_create(1024, buffer_grow, 1);
		self.toString_buf = _b;
	}
	buffer_seek(_b, buffer_seek_start, 0);
	var _n = array_length(_s);
	var _i = -1;
	while (++_i < _n) {
		if (_i > 0) buffer_write(_b, buffer_u8, 10);
		var _item = _s[_i];
		if (_item.__enumIndex__/* haxe_StackItem */ == 1/* Module */) buffer_write(_b, buffer_text, _item.m); else buffer_write(_b, buffer_text, "???");
	}
	buffer_write(_b, buffer_u8, 0);
	buffer_seek(_b, buffer_seek_start, 0);
	return buffer_read(_b, buffer_string);
});
/// @hint haxe__CallStack_CallStack_Impl_.callStack()->array<haxe_StackItem>
haxe__CallStack_CallStack_Impl_.callStack = method(haxe__CallStack_CallStack_Impl_, function() {
	var _raw1 = debug_get_callstack();
	var _n = array_length(_raw1) - 1;
	var _arr = array_create(_n, 0);
	var _i = -1;
	while (++_i < _n) {
		_arr[@_i] = haxe_StackItem_Module(_raw1[_i + 1]);
	}
	return _arr;
});
/// @hint haxe__CallStack_CallStack_Impl_.exceptionStack()->array<haxe_StackItem>
haxe__CallStack_CallStack_Impl_.exceptionStack = method(haxe__CallStack_CallStack_Impl_, function() {
	var _raw1 = debug_get_callstack();
	var _n = array_length(_raw1) - 1;
	var _arr = array_create(_n, 0);
	var _i = -1;
	while (++_i < _n) {
		_arr[@_i] = haxe_StackItem_Module(_raw1[_i + 1]);
	}
	return _arr;
});
/// @hint haxe__CallStack_CallStack_Impl_.exceptionToString(e:haxe_Exception)->string
haxe__CallStack_CallStack_Impl_.exceptionToString = method(haxe__CallStack_CallStack_Impl_, function(_e) {
	if (_e.previous == undefined) return "Exception: " + _e.message + ((_e.stack == undefined ? "null" : haxe__CallStack_CallStack_Impl_.toString(_e.stack)));
	var _result = "";
	var _e1 = _e;
	var _prev = undefined;
	while (_e1 != undefined) {
		if (_prev == undefined) {
			_result = "Exception: " + _e1.message + ((_e1.stack == undefined ? "null" : haxe__CallStack_CallStack_Impl_.toString(_e1.stack))) + _result;
		} else {
			var _prevStack = haxe__CallStack_CallStack_Impl_.subtract(_e1.stack, _prev.stack);
			_result = "Exception: " + _e1.message + ((_prevStack == undefined ? "null" : haxe__CallStack_CallStack_Impl_.toString(_prevStack))) + "\n\nNext " + _result;
		}
		_prev = _e1;
		_e1 = _e1.previous;
	}
	return _result;
});

#endregion

#region haxe._DynamicAccess.DynamicAccess_Impl_
globalvar haxe__DynamicAccess_DynamicAccess_Impl_; haxe__DynamicAccess_DynamicAccess_Impl_ = {}
/// @hint haxe__DynamicAccess_DynamicAccess_Impl_._new()->haxe_DynamicAccess<T>
haxe__DynamicAccess_DynamicAccess_Impl_._new = method(haxe__DynamicAccess_DynamicAccess_Impl_, function() {
	return { }
});
/// @hint haxe__DynamicAccess_DynamicAccess_Impl_.get(this1:any, key:string)->T?
haxe__DynamicAccess_DynamicAccess_Impl_.get = method(haxe__DynamicAccess_DynamicAccess_Impl_, function(_this1, _key) {
	return _this1[$ _key];
});
/// @hint haxe__DynamicAccess_DynamicAccess_Impl_.set(this1:any, key:string, value:T)->T
haxe__DynamicAccess_DynamicAccess_Impl_.set = method(haxe__DynamicAccess_DynamicAccess_Impl_, function(_this1, _key, _value) {
	_this1[$ _key] = _value;
	return _value;
});
/// @hint haxe__DynamicAccess_DynamicAccess_Impl_.exists(this1:any, key:string)->bool
haxe__DynamicAccess_DynamicAccess_Impl_.exists = method(haxe__DynamicAccess_DynamicAccess_Impl_, function(_this1, _key) {
	return variable_struct_exists(_this1, _key);
});
/// @hint haxe__DynamicAccess_DynamicAccess_Impl_.remove(this1:any, key:string)->bool
haxe__DynamicAccess_DynamicAccess_Impl_.remove = method(haxe__DynamicAccess_DynamicAccess_Impl_, function(_this1, _key) {
	var _result = variable_struct_exists(_this1, _key);
	variable_struct_remove(_this1, _key);
	return _result;
});
/// @hint haxe__DynamicAccess_DynamicAccess_Impl_.keys(this1:any)->array<string>
haxe__DynamicAccess_DynamicAccess_Impl_.keys = method(haxe__DynamicAccess_DynamicAccess_Impl_, function(_this1) {
	return variable_struct_get_names(_this1);
});
/// @hint haxe__DynamicAccess_DynamicAccess_Impl_.copy(this1:any)->haxe_DynamicAccess<T>
haxe__DynamicAccess_DynamicAccess_Impl_.copy = method(haxe__DynamicAccess_DynamicAccess_Impl_, function(_this1) {
	var _fields = variable_struct_get_names(_this1);
	var _r = { }
	var _i = 0;
	for (var __g1 = array_length(_fields); _i < __g1; _i++) {
		var _fd = _fields[_i];
		_r[$ _fd] = _this1[$ _fd];
	}
	return _r;
});
/// @hint haxe__DynamicAccess_DynamicAccess_Impl_.iterator(this1:any)->haxe_iterators_DynamicAccessIterator<T>
haxe__DynamicAccess_DynamicAccess_Impl_.iterator = method(haxe__DynamicAccess_DynamicAccess_Impl_, function(_this1) {
	return new haxe_iterators_DynamicAccessIterator(_this1);
});
/// @hint haxe__DynamicAccess_DynamicAccess_Impl_.keyValueIterator(this1:any)->haxe_iterators_DynamicAccessKeyValueIterator<T>
haxe__DynamicAccess_DynamicAccess_Impl_.keyValueIterator = method(haxe__DynamicAccess_DynamicAccess_Impl_, function(_this1) {
	return new haxe_iterators_DynamicAccessKeyValueIterator(_this1);
});

#endregion

#region haxe.Exception

function haxe_Exception_new(_message, _previous, _native) {
	// haxe_Exception_new(message:string, ?previous:haxe_Exception, ?native:any)
	/// @ignore
	if (false) show_debug_message(argument[2]);
	self.native = (_native != undefined ? _native : self);
}

function mc_haxe_Exception(_message, _previous, _native) constructor {
	// haxe_Exception(message:string, ?previous:haxe_Exception, ?native:any)
	/// @ignore
	static message = undefined; /// @is {string}
	static stack = undefined; /// @is {haxe_CallStack}
	static previous = undefined; /// @is {haxe_Exception?}
	static native = undefined; /// @is {any}
	static longMessage = undefined; /// @is {string}
	static script = undefined; /// @is {string}
	static stacktrace = undefined; /// @is {array<string>}
	static details = method(undefined, haxe_Exception_details);
	static unwrap = method(undefined, haxe_Exception_unwrap);
	static toString = method(undefined, haxe_Exception_toString);
	switch (argument_count) {
		case 1: method(self, haxe_Exception_new)(argument[0]); break;
		case 2: method(self, haxe_Exception_new)(argument[0], argument[1]); break;
		case 3: method(self, haxe_Exception_new)(argument[0], argument[1], argument[2]); break;
		default: show_error("Expected 1..3 arguments.", true);
	}
	static __class__ = mt_haxe_Exception;
}
globalvar haxe_Exception; haxe_Exception = method(undefined, mc_haxe_Exception);
mt_haxe_Exception.i_constructor = haxe_Exception;
/// @hint haxe_Exception.caught(value:any)->any
haxe_Exception.caught = method(haxe_Exception, function(_value) {
	return _value;
});
/// @hint haxe_Exception.thrown(value:any)->any
haxe_Exception.thrown = method(haxe_Exception, function(_value) {
	return string(_value);
});

function haxe_Exception_details() {
	// haxe_Exception_details()->string
	/// @ignore
	return "???";
}

function haxe_Exception_unwrap() {
	// haxe_Exception_unwrap()->any
	/// @ignore
	return self.native;
}

function haxe_Exception_toString() {
	// haxe_Exception_toString()->string
	/// @ignore
	return self.message;
}

#endregion

#region haxe._Int32.Int32_Impl_
globalvar haxe__Int32_Int32_Impl_; haxe__Int32_Int32_Impl_ = {}
/// @hint haxe__Int32_Int32_Impl_.preIncrement(this1:int)->haxe_Int32
haxe__Int32_Int32_Impl_.preIncrement = method(haxe__Int32_Int32_Impl_, function(_this1) {
	_this1 = ++_this1;
	return _this1;
});
/// @hint haxe__Int32_Int32_Impl_.postIncrement(this1:int)->haxe_Int32
haxe__Int32_Int32_Impl_.postIncrement = method(haxe__Int32_Int32_Impl_, function(_this1) {
	var _ret = _this1++;
	return _ret;
});
/// @hint haxe__Int32_Int32_Impl_.preDecrement(this1:int)->haxe_Int32
haxe__Int32_Int32_Impl_.preDecrement = method(haxe__Int32_Int32_Impl_, function(_this1) {
	_this1 = --_this1;
	return _this1;
});
/// @hint haxe__Int32_Int32_Impl_.postDecrement(this1:int)->haxe_Int32
haxe__Int32_Int32_Impl_.postDecrement = method(haxe__Int32_Int32_Impl_, function(_this1) {
	var _ret = _this1--;
	return _ret;
});
/// @hint haxe__Int32_Int32_Impl_.add(a:haxe_Int32, b:haxe_Int32)->haxe_Int32
haxe__Int32_Int32_Impl_.add = method(haxe__Int32_Int32_Impl_, function(_a, _b) {
	return _a + _b;
});
/// @hint haxe__Int32_Int32_Impl_.addInt(a:haxe_Int32, b:int)->haxe_Int32
haxe__Int32_Int32_Impl_.addInt = method(haxe__Int32_Int32_Impl_, function(_a, _b) {
	return _a + _b;
});
/// @hint haxe__Int32_Int32_Impl_.sub(a:haxe_Int32, b:haxe_Int32)->haxe_Int32
haxe__Int32_Int32_Impl_.sub = method(haxe__Int32_Int32_Impl_, function(_a, _b) {
	return _a - _b;
});
/// @hint haxe__Int32_Int32_Impl_.subInt(a:haxe_Int32, b:int)->haxe_Int32
haxe__Int32_Int32_Impl_.subInt = method(haxe__Int32_Int32_Impl_, function(_a, _b) {
	return _a - _b;
});
/// @hint haxe__Int32_Int32_Impl_.intSub(a:int, b:haxe_Int32)->haxe_Int32
haxe__Int32_Int32_Impl_.intSub = method(haxe__Int32_Int32_Impl_, function(_a, _b) {
	return _a - _b;
});
/// @hint haxe__Int32_Int32_Impl_.mul(a:haxe_Int32, b:haxe_Int32)->haxe_Int32
haxe__Int32_Int32_Impl_.mul = method(haxe__Int32_Int32_Impl_, function(_a, _b) {
	return _a * (_b & 65535) + (_a * (((_b & $FFFFFFFF) >> 16)) << 16);
});
/// @hint haxe__Int32_Int32_Impl_.mulInt(a:haxe_Int32, b:int)->haxe_Int32
haxe__Int32_Int32_Impl_.mulInt = method(haxe__Int32_Int32_Impl_, function(_a, _b) {
	return haxe__Int32_Int32_Impl_.mul(_a, _b);
});
/// @hint haxe__Int32_Int32_Impl_.toFloat(this1:int)->number
haxe__Int32_Int32_Impl_.toFloat = method(haxe__Int32_Int32_Impl_, function(_this1) {
	return _this1;
});
/// @hint haxe__Int32_Int32_Impl_.ucompare(a:haxe_Int32, b:haxe_Int32)->int Compare `a` and `b` in unsigned mode.
haxe__Int32_Int32_Impl_.ucompare = method(haxe__Int32_Int32_Impl_, function(_a, _b) {
	if (_a < 0) {
		if (_b < 0) return ~_b - ~_a; else return 1;
	}
	if (_b < 0) return -1; else return _a - _b;
});
/// @hint haxe__Int32_Int32_Impl_.i_clamp(x:int)->int
haxe__Int32_Int32_Impl_.i_clamp = method(haxe__Int32_Int32_Impl_, function(_x) {
	return _x;
});

#endregion

#region int64
globalvar int64_; int64_ = {}
/// @hint int64.copy(this1:haxe__Int64___Int64)->int64
int64_.copy = method(int64, function(_this1) {
	return _this1;
});
/// @hint int64.make(high:haxe_Int32, low:haxe_Int32)->int64
int64_.make = method(int64, function(_high, _low) {
	return (((_high << 32) | _low) | 0);
});
/// @hint int64.ofInt(x:int)->int64
int64_.ofInt = method(int64, function(_x) {
	return (_x | 0);
});
/// @hint int64.toInt(x:int64)->int
int64_.toInt = method(int64, function(_x) {
	return (int64.ushr(_x, 0) div 1);
});
/// @hint int64.is(val:any)->bool
int64_.is = method(int64, function(_val) {
	return is_int64(_val);
});
/// @hint int64.isInt64(val:any)->bool
int64_.isInt64 = method(int64, function(_val) {
	return is_int64(_val);
});
/// @hint int64.get_raw(this1:haxe__Int64___Int64)->int
int64_.get_raw = method(int64, function(_this1) {
	return _this1;
});
/// @hint int64.mkr(v:int)->int64
int64_.mkr = method(int64, function(_v) {
	return _v;
});
/// @hint int64.isNeg(x:int64)->bool
int64_.isNeg = method(int64, function(_x) {
	return _x < 0;
});
/// @hint int64.isZero(x:int64)->bool
int64_.isZero = method(int64, function(_x) {
	return _x == 0;
});
/// @hint int64.compare(a:int64, b:int64)->int
int64_.compare = method(int64, function(_a, _b) {
	return _a - _b;
});
/// @hint int64.ucompare(a:int64, b:int64)->int
int64_.ucompare = method(int64, function(_a, _b) {
	var _diff = (((_a >> 32) & $FFFFFFFF)) - (((_b >> 32) & $FFFFFFFF));
	if (_diff == 0) return ((_a & $FFFFFFFF)) - ((_b & $FFFFFFFF)); else return _diff;
});
/// @hint int64.toStr(x:int64)->string
int64_.toStr = method(int64, function(_x) {
	return string(_x);
});
/// @hint int64.toString(this1:haxe__Int64___Int64)->string
int64_.toString = method(int64, function(_this1) {
	return string(_this1);
});
/// @hint int64.parseString(s:string)->int64
int64_.parseString = method(int64, function(_s) {
	return int64(_s);
});
/// @hint int64.fromFloat(f:number)->int64
int64_.fromFloat = method(int64, function(_f) {
	return int64(_f);
});
/// @hint int64.divMod(dividend:int64, divisor:int64)->haxe_Int64_DivMod
int64_.divMod = method(int64, function(_dividend, _divisor) {
	if (_divisor == 0) throw string("divide by zero");
	return { quotient: ((_dividend / _divisor) | 0), modulus: ((_dividend % _divisor) | 0) }
});
/// @hint int64.neg(x:int64)->int64
int64_.neg = method(int64, function(_x) {
	return -_x;
});
/// @hint int64.add(a:int64, b:int64)->int64
int64_.add = method(int64, function(_a, _b) {
	return _a + _b;
});
/// @hint int64.addInt(a:int64, b:int)->int64
int64_.addInt = method(int64, function(_a, _b) {
	return _a + _b;
});
/// @hint int64.sub(a:int64, b:int64)->int64
int64_.sub = method(int64, function(_a, _b) {
	return _a - _b;
});
/// @hint int64.subInt(a:int64, b:int)->int64
int64_.subInt = method(int64, function(_a, _b) {
	return _a - _b;
});
/// @hint int64.intSub(a:int, b:int64)->int64
int64_.intSub = method(int64, function(_a, _b) {
	return _a - _b;
});
/// @hint int64.mul(a:int64, b:int64)->int64
int64_.mul = method(int64, function(_a, _b) {
	return _a * _b;
});
/// @hint int64.mulInt(a:int64, b:int)->int64
int64_.mulInt = method(int64, function(_a, _b) {
	return _a * _b;
});
/// @hint int64.i_div(a:int64, b:int64)->int64
int64_.i_div = method(int64, function(_a, _b) {
	return (_a / _b | 0);
});
/// @hint int64.divInt(a:int64, b:int)->int64
int64_.divInt = method(int64, function(_a, _b) {
	return (_a / _b | 0);
});
/// @hint int64.intDiv(a:int, b:int64)->int64
int64_.intDiv = method(int64, function(_a, _b) {
	return (_a / _b | 0);
});
/// @hint int64.i_mod(a:int64, b:int64)->int64
int64_.i_mod = method(int64, function(_a, _b) {
	return _a % _b;
});
/// @hint int64.modInt(a:int64, b:int)->int64
int64_.modInt = method(int64, function(_a, _b) {
	return _a % _b;
});
/// @hint int64.intMod(a:int, b:int64)->int64
int64_.intMod = method(int64, function(_a, _b) {
	return _a % _b;
});
/// @hint int64.eq(a:int64, b:int64)->bool
int64_.eq = method(int64, function(_a, _b) {
	return _a == _b;
});
/// @hint int64.eqInt(a:int64, b:int)->bool
int64_.eqInt = method(int64, function(_a, _b) {
	return _a == _b;
});
/// @hint int64.neq(a:int64, b:int64)->bool
int64_.neq = method(int64, function(_a, _b) {
	return _a != _b;
});
/// @hint int64.neqInt(a:int64, b:int)->bool
int64_.neqInt = method(int64, function(_a, _b) {
	return _a != _b;
});
/// @hint int64.lt(a:int64, b:int64)->bool
int64_.lt = method(int64, function(_a, _b) {
	return _a < _b;
});
/// @hint int64.ltInt(a:int64, b:int)->bool
int64_.ltInt = method(int64, function(_a, _b) {
	return _a < _b;
});
/// @hint int64.intLt(a:int, b:int64)->bool
int64_.intLt = method(int64, function(_a, _b) {
	return _a < _b;
});
/// @hint int64.lte(a:int64, b:int64)->bool
int64_.lte = method(int64, function(_a, _b) {
	return _a <= _b;
});
/// @hint int64.lteInt(a:int64, b:int)->bool
int64_.lteInt = method(int64, function(_a, _b) {
	return _a <= _b;
});
/// @hint int64.intLte(a:int, b:int64)->bool
int64_.intLte = method(int64, function(_a, _b) {
	return _a <= _b;
});
/// @hint int64.gt(a:int64, b:int64)->bool
int64_.gt = method(int64, function(_a, _b) {
	return _a > _b;
});
/// @hint int64.gtInt(a:int64, b:int)->bool
int64_.gtInt = method(int64, function(_a, _b) {
	return _a > _b;
});
/// @hint int64.intGt(a:int, b:int64)->bool
int64_.intGt = method(int64, function(_a, _b) {
	return _a > _b;
});
/// @hint int64.gte(a:int64, b:int64)->bool
int64_.gte = method(int64, function(_a, _b) {
	return _a >= _b;
});
/// @hint int64.gteInt(a:int64, b:int)->bool
int64_.gteInt = method(int64, function(_a, _b) {
	return _a >= _b;
});
/// @hint int64.intGte(a:int, b:int64)->bool
int64_.intGte = method(int64, function(_a, _b) {
	return _a >= _b;
});
/// @hint int64.bitNot(a:int64)->int64
int64_.bitNot = method(int64, function(_a) {
	return ~_a;
});
/// @hint int64.i_and(a:int64, b:int64)->int64
int64_.i_and = method(int64, function(_a, _b) {
	return (_a & _b);
});
/// @hint int64.i_or(a:int64, b:int64)->int64
int64_.i_or = method(int64, function(_a, _b) {
	return (_a | _b);
});
/// @hint int64.i_xor(a:int64, b:int64)->int64
int64_.i_xor = method(int64, function(_a, _b) {
	return (_a ^ _b);
});
/// @hint int64.shl(a:int64, b:int)->int64
int64_.shl = method(int64, function(_a, _b) {
	return (_a << _b);
});
/// @hint int64.shr(a:int64, b:int)->int64
int64_.shr = method(int64, function(_a, _b) {
	return (_a >> _b);
});
/// @hint int64.ushr(a:int64, b:int)->int64
int64_.ushr = method(int64, function(_a, _b) {
	if (_b == 0) return _a;
	if (_b >= 32) return (((((_a >> 32) & $FFFFFFFF) >> _b - 32)) | 0);
	return (((((((_a >> 32) & $FFFFFFFF) >> _b)) << 32) | ((((((_a >> 32) << 32 - _b) & $FFFFFFFF)) | ((((((_a & $FFFFFFFF)) div 1) & $FFFFFFFF) >> _b))))) | 0);
});
/// @hint int64.preInc(this1:haxe__Int64___Int64)->int64
int64_.preInc = method(int64, function(_this1) {
	return ++_this1;
});
/// @hint int64.preDec(this1:haxe__Int64___Int64)->int64
int64_.preDec = method(int64, function(_this1) {
	return --_this1;
});
/// @hint int64.postInc(this1:haxe__Int64___Int64)->int64
int64_.postInc = method(int64, function(_this1) {
	_this1 += 1;
	return _this1 - 1;
});
/// @hint int64.postDec(this1:haxe__Int64___Int64)->int64
int64_.postDec = method(int64, function(_this1) {
	_this1 -= 1;
	return _this1 + 1;
});
/// @hint {int} int64.high
/// @hint int64.get_high(this1:haxe__Int64___Int64)->int
int64_.get_high = method(int64, function(_this1) {
	return (_this1 >> 32);
});
/// @hint int64.set_high(this1:haxe__Int64___Int64, v:int)->int
int64_.set_high = method(int64, function(_this1, _v) {
	_this1 = (((_this1 & $FFFFFFFF)) | (_v << 32));
	return _v;
});
/// @hint {int} int64.low
/// @hint int64.get_low(this1:haxe__Int64___Int64)->int
int64_.get_low = method(int64, function(_this1) {
	return (((_this1 & $FFFFFFFF)) div 1);
});
/// @hint int64.set_low(this1:haxe__Int64___Int64, v:int)->int
int64_.set_low = method(int64, function(_this1, _v) {
	_this1 = ((_this1 & ~4294967295) | ((_v & $FFFFFFFF)));
	return _v;
});

#endregion

#region haxe.Timer

function mc_haxe_Timer(_time_ms) constructor {
	// haxe_Timer(time_ms:int)
	/// @ignore
	/* static */id = undefined; /// @is {int?}
	static stop = function() {
		if (self.id == undefined) return 0;
		clearInterval(self.id);
		self.id = undefined;
	}
	static run = function() {
		
	}
	self.id = setInterval(function() {
		self.run()
	}, _time_ms);
	static __class__ = mt_haxe_Timer;
}
globalvar haxe_Timer; haxe_Timer = method(undefined, mc_haxe_Timer);
mt_haxe_Timer.i_constructor = haxe_Timer;

#endregion

#region haxe.crypto.Md5

function mc_haxe_crypto_Md5() constructor {
	// haxe_crypto_Md5()
	/// @ignore
	static bitOR = function(_a, _b) {
		return ((((((_a & $FFFFFFFF) >> 1)) | (((_b & $FFFFFFFF) >> 1))) << 1) | ((_a & 1) | (_b & 1)));
	}
	static bitXOR = function(_a, _b) {
		return ((((((_a & $FFFFFFFF) >> 1)) ^ (((_b & $FFFFFFFF) >> 1))) << 1) | ((_a & 1) ^ (_b & 1)));
	}
	static bitAND = function(_a, _b) {
		return ((((((_a & $FFFFFFFF) >> 1)) & (((_b & $FFFFFFFF) >> 1))) << 1) | ((_a & 1) & (_b & 1)));
	}
	static addme = function(_x, _y) {
		var _lsw = (_x & 65535) + (_y & 65535);
		return ((((_x >> 16) + (_y >> 16) + (_lsw >> 16)) << 16) | (_lsw & 65535));
	}
	static hex = function(_a) {
		var _str = "";
		var _hex_chr = "0123456789abcdef";
		var __g = 0;
		while (__g < array_length(_a)) {
			var _num = _a[__g];
			__g++;
			_str += string_char_at(_hex_chr, ((_num >> 4) & 15) + 1) + string_char_at(_hex_chr, (_num & 15) + 1);
			_str += string_char_at(_hex_chr, ((_num >> 12) & 15) + 1) + string_char_at(_hex_chr, ((_num >> 8) & 15) + 1);
			_str += string_char_at(_hex_chr, ((_num >> 20) & 15) + 1) + string_char_at(_hex_chr, ((_num >> 16) & 15) + 1);
			_str += string_char_at(_hex_chr, ((_num >> 28) & 15) + 1) + string_char_at(_hex_chr, ((_num >> 24) & 15) + 1);
		}
		return _str;
	}
	static rol = function(_num, _cnt) {
		return ((_num << _cnt) | (((_num & $FFFFFFFF) >> 32 - _cnt)));
	}
	static cmn = function(_q, _a, _b, _x, _s, _t) {
		return self.addme(self.rol(self.addme(self.addme(_a, _q), self.addme(_x, _t)), _s), _b);
	}
	static ff = function(_a, _b, _c, _d, _x, _s, _t) {
		return self.cmn(self.bitOR(self.bitAND(_b, _c), self.bitAND(~_b, _d)), _a, _b, _x, _s, _t);
	}
	static gg = function(_a, _b, _c, _d, _x, _s, _t) {
		return self.cmn(self.bitOR(self.bitAND(_b, _d), self.bitAND(_c, ~_d)), _a, _b, _x, _s, _t);
	}
	static hh = function(_a, _b, _c, _d, _x, _s, _t) {
		return self.cmn(self.bitXOR(self.bitXOR(_b, _c), _d), _a, _b, _x, _s, _t);
	}
	static ii = function(_a, _b, _c, _d, _x, _s, _t) {
		return self.cmn(self.bitXOR(_c, self.bitOR(_b, ~_d)), _a, _b, _x, _s, _t);
	}
	static doEncode = function(_x) {
		var _a = 1732584193;
		var _b = -271733879;
		var _c = -1732584194;
		var _d = 271733878;
		var _step;
		for (var _i = 0; _i < array_length(_x); _i += 16) {
			var _olda = _a;
			var _oldb = _b;
			var _oldc = _c;
			var _oldd = _d;
			_step = 0;
			_a = self.ff(_a, _b, _c, _d, _x[_i], 7, -680876936);
			_d = self.ff(_d, _a, _b, _c, _x[_i + 1], 12, -389564586);
			_c = self.ff(_c, _d, _a, _b, _x[_i + 2], 17, 606105819);
			_b = self.ff(_b, _c, _d, _a, _x[_i + 3], 22, -1044525330);
			_a = self.ff(_a, _b, _c, _d, _x[_i + 4], 7, -176418897);
			_d = self.ff(_d, _a, _b, _c, _x[_i + 5], 12, 1200080426);
			_c = self.ff(_c, _d, _a, _b, _x[_i + 6], 17, -1473231341);
			_b = self.ff(_b, _c, _d, _a, _x[_i + 7], 22, -45705983);
			_a = self.ff(_a, _b, _c, _d, _x[_i + 8], 7, 1770035416);
			_d = self.ff(_d, _a, _b, _c, _x[_i + 9], 12, -1958414417);
			_c = self.ff(_c, _d, _a, _b, _x[_i + 10], 17, -42063);
			_b = self.ff(_b, _c, _d, _a, _x[_i + 11], 22, -1990404162);
			_a = self.ff(_a, _b, _c, _d, _x[_i + 12], 7, 1804603682);
			_d = self.ff(_d, _a, _b, _c, _x[_i + 13], 12, -40341101);
			_c = self.ff(_c, _d, _a, _b, _x[_i + 14], 17, -1502002290);
			_b = self.ff(_b, _c, _d, _a, _x[_i + 15], 22, 1236535329);
			_a = self.gg(_a, _b, _c, _d, _x[_i + 1], 5, -165796510);
			_d = self.gg(_d, _a, _b, _c, _x[_i + 6], 9, -1069501632);
			_c = self.gg(_c, _d, _a, _b, _x[_i + 11], 14, 643717713);
			_b = self.gg(_b, _c, _d, _a, _x[_i], 20, -373897302);
			_a = self.gg(_a, _b, _c, _d, _x[_i + 5], 5, -701558691);
			_d = self.gg(_d, _a, _b, _c, _x[_i + 10], 9, 38016083);
			_c = self.gg(_c, _d, _a, _b, _x[_i + 15], 14, -660478335);
			_b = self.gg(_b, _c, _d, _a, _x[_i + 4], 20, -405537848);
			_a = self.gg(_a, _b, _c, _d, _x[_i + 9], 5, 568446438);
			_d = self.gg(_d, _a, _b, _c, _x[_i + 14], 9, -1019803690);
			_c = self.gg(_c, _d, _a, _b, _x[_i + 3], 14, -187363961);
			_b = self.gg(_b, _c, _d, _a, _x[_i + 8], 20, 1163531501);
			_a = self.gg(_a, _b, _c, _d, _x[_i + 13], 5, -1444681467);
			_d = self.gg(_d, _a, _b, _c, _x[_i + 2], 9, -51403784);
			_c = self.gg(_c, _d, _a, _b, _x[_i + 7], 14, 1735328473);
			_b = self.gg(_b, _c, _d, _a, _x[_i + 12], 20, -1926607734);
			_a = self.hh(_a, _b, _c, _d, _x[_i + 5], 4, -378558);
			_d = self.hh(_d, _a, _b, _c, _x[_i + 8], 11, -2022574463);
			_c = self.hh(_c, _d, _a, _b, _x[_i + 11], 16, 1839030562);
			_b = self.hh(_b, _c, _d, _a, _x[_i + 14], 23, -35309556);
			_a = self.hh(_a, _b, _c, _d, _x[_i + 1], 4, -1530992060);
			_d = self.hh(_d, _a, _b, _c, _x[_i + 4], 11, 1272893353);
			_c = self.hh(_c, _d, _a, _b, _x[_i + 7], 16, -155497632);
			_b = self.hh(_b, _c, _d, _a, _x[_i + 10], 23, -1094730640);
			_a = self.hh(_a, _b, _c, _d, _x[_i + 13], 4, 681279174);
			_d = self.hh(_d, _a, _b, _c, _x[_i], 11, -358537222);
			_c = self.hh(_c, _d, _a, _b, _x[_i + 3], 16, -722521979);
			_b = self.hh(_b, _c, _d, _a, _x[_i + 6], 23, 76029189);
			_a = self.hh(_a, _b, _c, _d, _x[_i + 9], 4, -640364487);
			_d = self.hh(_d, _a, _b, _c, _x[_i + 12], 11, -421815835);
			_c = self.hh(_c, _d, _a, _b, _x[_i + 15], 16, 530742520);
			_b = self.hh(_b, _c, _d, _a, _x[_i + 2], 23, -995338651);
			_a = self.ii(_a, _b, _c, _d, _x[_i], 6, -198630844);
			_d = self.ii(_d, _a, _b, _c, _x[_i + 7], 10, 1126891415);
			_c = self.ii(_c, _d, _a, _b, _x[_i + 14], 15, -1416354905);
			_b = self.ii(_b, _c, _d, _a, _x[_i + 5], 21, -57434055);
			_a = self.ii(_a, _b, _c, _d, _x[_i + 12], 6, 1700485571);
			_d = self.ii(_d, _a, _b, _c, _x[_i + 3], 10, -1894986606);
			_c = self.ii(_c, _d, _a, _b, _x[_i + 10], 15, -1051523);
			_b = self.ii(_b, _c, _d, _a, _x[_i + 1], 21, -2054922799);
			_a = self.ii(_a, _b, _c, _d, _x[_i + 8], 6, 1873313359);
			_d = self.ii(_d, _a, _b, _c, _x[_i + 15], 10, -30611744);
			_c = self.ii(_c, _d, _a, _b, _x[_i + 6], 15, -1560198380);
			_b = self.ii(_b, _c, _d, _a, _x[_i + 13], 21, 1309151649);
			_a = self.ii(_a, _b, _c, _d, _x[_i + 4], 6, -145523070);
			_d = self.ii(_d, _a, _b, _c, _x[_i + 11], 10, -1120210379);
			_c = self.ii(_c, _d, _a, _b, _x[_i + 2], 15, 718787259);
			_b = self.ii(_b, _c, _d, _a, _x[_i + 9], 21, -343485551);
			_a = self.addme(_a, _olda);
			_b = self.addme(_b, _oldb);
			_c = self.addme(_c, _oldc);
			_d = self.addme(_d, _oldd);
		}
		return [_a, _b, _c, _d];
	}
	
	static __class__ = mt_haxe_crypto_Md5;
}
globalvar haxe_crypto_Md5; haxe_crypto_Md5 = method(undefined, mc_haxe_crypto_Md5);
mt_haxe_crypto_Md5.i_constructor = haxe_crypto_Md5;
/// @hint haxe_crypto_Md5.encode(s:string)->string
haxe_crypto_Md5.encode = method(haxe_crypto_Md5, function(_s) {
	var _m = new haxe_crypto_Md5();
	return _m.hex(_m.doEncode(haxe_crypto_Md5.str2blks(_s)));
});
/// @hint haxe_crypto_Md5.str2blks(str:string)->array<int>
haxe_crypto_Md5.str2blks = method(haxe_crypto_Md5, function(_str) {
	var _str_b = haxe_io__Bytes_BytesImpl.ofString(_str);
	var _nblk = (array_length(_str_b) + 8 >> 6) + 1;
	var _blks = [];
	var _i = 0;
	for (var __g1 = (_nblk * 16); _i < __g1; _i++) {
		_blks[@_i] = 0;
	}
	var _i = 0;
	var _max1 = array_length(_str_b);
	var _l = _max1 * 8;
	while (_i < _max1) {
		_blks[@(_i >> 2)] |= (_str_b[_i] << (_l + _i) % 4 * 8);
		_i++;
	}
	_blks[@(_i >> 2)] |= (128 << (_l + _i) % 4 * 8);
	var _k = _nblk * 16 - 2;
	_blks[@_k] = (_l & 255);
	_blks[@_k] |= (((((_l & $FFFFFFFF) >> 8)) & 255) << 8);
	_blks[@_k] |= (((((_l & $FFFFFFFF) >> 16)) & 255) << 16);
	_blks[@_k] |= (((((_l & $FFFFFFFF) >> 24)) & 255) << 24);
	return _blks;
});

#endregion

#region haxe.ds.BasicMap

function haxe_ds_BasicMap_new() {
	// haxe_ds_BasicMap_new()
	/// @ignore
	self.obj = { }
}

function mc_haxe_ds_BasicMap() constructor {
	// haxe_ds_BasicMap()
	/// @ignore
	static obj = undefined; /// @is {haxe_DynamicAccess<V>}
	static copy = method(undefined, haxe_ds_BasicMap_copy);
	static clear = method(undefined, haxe_ds_BasicMap_clear);
	static exists = method(undefined, haxe_ds_BasicMap_exists);
	static get = method(undefined, haxe_ds_BasicMap_get);
	static set = method(undefined, haxe_ds_BasicMap_set);
	static remove = method(undefined, haxe_ds_BasicMap_remove);
	static keysArray = method(undefined, haxe_ds_BasicMap_keysArray);
	static keys = method(undefined, haxe_ds_BasicMap_keys);
	static iterator = method(undefined, haxe_ds_BasicMap_iterator);
	static keyValueIterator = method(undefined, haxe_ds_BasicMap_keyValueIterator);
	static toString = method(undefined, haxe_ds_BasicMap_toString);
	method(self, haxe_ds_BasicMap_new)();
	static __class__ = mt_haxe_ds_BasicMap;
}
globalvar haxe_ds_BasicMap; haxe_ds_BasicMap = method(undefined, mc_haxe_ds_BasicMap);
mt_haxe_ds_BasicMap.i_constructor = haxe_ds_BasicMap;
/// @hint {buffer} haxe_ds_BasicMap<K;V>.toString_buf

function haxe_ds_BasicMap_copy() {
	// haxe_ds_BasicMap_copy()->haxe_IMap<K; V>
	/// @ignore
	var _result = new haxe_ds_BasicMap();
	var _resObj = _result.obj;
	var _access = self.obj;
	var __g_access = _access;
	var __g_keys = variable_struct_get_names(_access);
	var __g_index = 0;
	while (__g_index < array_length(__g_keys)) {
		var _key = __g_keys[__g_index++];
		_resObj[$ _key] = __g_access[$ _key];
	}
	return _result;
}

function haxe_ds_BasicMap_clear() {
	// haxe_ds_BasicMap_clear()
	/// @ignore
	var __g = 0;
	var __g1 = variable_struct_get_names(self.obj);
	while (__g < array_length(__g1)) {
		var _key = __g1[__g];
		__g++;
		haxe__DynamicAccess_DynamicAccess_Impl_.remove(self.obj, _key);
	}
}

function haxe_ds_BasicMap_exists(_key) {
	// haxe_ds_BasicMap_exists(key:K)->bool
	/// @ignore
	return variable_struct_exists(self.obj, _key);
}

function haxe_ds_BasicMap_get(_key) {
	// haxe_ds_BasicMap_get(key:K)->V
	/// @ignore
	return self.obj[$ _key];
}

function haxe_ds_BasicMap_set(_key, _val) {
	// haxe_ds_BasicMap_set(key:K, val:V)
	/// @ignore
	self.obj[$ _key] = _val;
}

function haxe_ds_BasicMap_remove(_key) {
	// haxe_ds_BasicMap_remove(key:K)->bool
	/// @ignore
	return haxe__DynamicAccess_DynamicAccess_Impl_.remove(self.obj, _key);
}

function haxe_ds_BasicMap_keysArray() {
	// haxe_ds_BasicMap_keysArray()->array<K>
	/// @ignore
	throw string("Should be implemented in the specific Map class");
}

function haxe_ds_BasicMap_keys() {
	// haxe_ds_BasicMap_keys()->Iterator<K>
	/// @ignore
	return new haxe_iterators_ArrayIterator(self.keysArray());
}

function haxe_ds_BasicMap_iterator() {
	// haxe_ds_BasicMap_iterator()->Iterator<V>
	/// @ignore
	return new haxe_ds_BasicMapIterator(self);
}

function haxe_ds_BasicMap_keyValueIterator() {
	// haxe_ds_BasicMap_keyValueIterator()->KeyValueIterator<K; V>
	/// @ignore
	return new haxe_ds_BasicMapKeyValueIterator(self);
}

function haxe_ds_BasicMap_toString() {
	// haxe_ds_BasicMap_toString()->string
	/// @ignore
	var _b = haxe_ds_BasicMap.toString_buf;
	if (_b == -1) {
		_b = buffer_create(1024, buffer_grow, 1);
		haxe_ds_BasicMap.toString_buf = _b;
	}
	buffer_seek(_b, buffer_seek_start, 0);
	buffer_write(_b, buffer_text, "{");
	var _keys = variable_struct_get_names(self.obj);
	var _i = 0;
	for (var __g1 = array_length(_keys); _i < __g1; _i++) {
		if (_i > 0) buffer_write(_b, buffer_text, ", ");
		var _k = _keys[_i];
		buffer_write(_b, buffer_text, _k);
		buffer_write(_b, buffer_text, " => ");
		buffer_write(_b, buffer_text, Std.stringify(self.obj[$ _k]));
	}
	buffer_write(_b, buffer_string, "}");
	buffer_seek(_b, buffer_seek_start, 0);
	return buffer_read(_b, buffer_string);
}

#endregion

#region haxe.ds.BasicMapIterator

function mc_haxe_ds_BasicMapIterator(_map) constructor {
	// haxe_ds_BasicMapIterator(map:haxe_ds_BasicMap<K; V>)
	/// @ignore
	static access = undefined; /// @is {haxe_DynamicAccess<V>}
	static keys = undefined; /// @is {array<K>}
	static index = undefined; /// @is {int}
	static hasNext = function() {
		return self.index < array_length(self.keys);
	}
	static next = function() {
		return self.access[$ self.keys[self.index++]];
	}
	self.access = _map.obj;
	self.keys = _map.keysArray();
	self.index = 0;
	static __class__ = mt_haxe_ds_BasicMapIterator;
}
globalvar haxe_ds_BasicMapIterator; haxe_ds_BasicMapIterator = method(undefined, mc_haxe_ds_BasicMapIterator);
mt_haxe_ds_BasicMapIterator.i_constructor = haxe_ds_BasicMapIterator;

#endregion

#region haxe.ds.BasicMapKeyValueIterator

function mc_haxe_ds_BasicMapKeyValueIterator(_map) constructor {
	// haxe_ds_BasicMapKeyValueIterator(map:haxe_ds_BasicMap<K; V>)
	/// @ignore
	static access = undefined; /// @is {haxe_DynamicAccess<V>}
	static keys = undefined; /// @is {array<K>}
	static index = undefined; /// @is {int}
	static hasNext = function() {
		return self.index < array_length(self.keys);
	}
	static next = function() {
		var _key = self.keys[self.index++];
		return { value: self.access[$ _key], key: _key }
	}
	self.access = _map.obj;
	self.keys = _map.keysArray();
	self.index = 0;
	static __class__ = mt_haxe_ds_BasicMapKeyValueIterator;
}
globalvar haxe_ds_BasicMapKeyValueIterator; haxe_ds_BasicMapKeyValueIterator = method(undefined, mc_haxe_ds_BasicMapKeyValueIterator);
mt_haxe_ds_BasicMapKeyValueIterator.i_constructor = haxe_ds_BasicMapKeyValueIterator;

#endregion

#region haxe.ds.IntMap

function mc_haxe_ds_IntMap() constructor {
	// haxe_ds_IntMap()
	/// @ignore
	static keysArray = function() {
		var _keys = variable_struct_get_names(self.obj);
		var _i = 0;
		for (var __g1 = array_length(_keys); _i < __g1; _i++) {
			_keys[@_i] = int64(_keys[_i]);
		}
		return _keys;
	}
	static obj = undefined; /// @is {haxe_DynamicAccess<V>}
	static copy = method(undefined, haxe_ds_BasicMap_copy);
	static clear = method(undefined, haxe_ds_BasicMap_clear);
	static exists = method(undefined, haxe_ds_BasicMap_exists);
	static get = method(undefined, haxe_ds_BasicMap_get);
	static set = method(undefined, haxe_ds_BasicMap_set);
	static remove = method(undefined, haxe_ds_BasicMap_remove);
	static keys = method(undefined, haxe_ds_BasicMap_keys);
	static iterator = method(undefined, haxe_ds_BasicMap_iterator);
	static keyValueIterator = method(undefined, haxe_ds_BasicMap_keyValueIterator);
	static toString = method(undefined, haxe_ds_BasicMap_toString);
	method(self, haxe_ds_BasicMap_new)();
	static __class__ = mt_haxe_ds_IntMap;
}
globalvar haxe_ds_IntMap; haxe_ds_IntMap = method(undefined, mc_haxe_ds_IntMap);
mt_haxe_ds_IntMap.i_constructor = haxe_ds_IntMap;

#endregion

#region haxe.ds.StringMap

function mc_haxe_ds_StringMap() constructor {
	// haxe_ds_StringMap()
	/// @ignore
	static keysArray = function() {
		return variable_struct_get_names(self.obj);
	}
	static obj = undefined; /// @is {haxe_DynamicAccess<V>}
	static copy = method(undefined, haxe_ds_BasicMap_copy);
	static clear = method(undefined, haxe_ds_BasicMap_clear);
	static exists = method(undefined, haxe_ds_BasicMap_exists);
	static get = method(undefined, haxe_ds_BasicMap_get);
	static set = method(undefined, haxe_ds_BasicMap_set);
	static remove = method(undefined, haxe_ds_BasicMap_remove);
	static keys = method(undefined, haxe_ds_BasicMap_keys);
	static iterator = method(undefined, haxe_ds_BasicMap_iterator);
	static keyValueIterator = method(undefined, haxe_ds_BasicMap_keyValueIterator);
	static toString = method(undefined, haxe_ds_BasicMap_toString);
	method(self, haxe_ds_BasicMap_new)();
	static __class__ = mt_haxe_ds_StringMap;
}
globalvar haxe_ds_StringMap; haxe_ds_StringMap = method(undefined, mc_haxe_ds_StringMap);
mt_haxe_ds_StringMap.i_constructor = haxe_ds_StringMap;

#endregion

#region haxe.ds._Vector.Vector_Impl_
globalvar haxe_ds__Vector_Vector_Impl_; haxe_ds__Vector_Vector_Impl_ = {}
/// @hint haxe_ds__Vector_Vector_Impl_._new(length:int)->array<T>
haxe_ds__Vector_Vector_Impl_._new = method(haxe_ds__Vector_Vector_Impl_, function(_length) {
	return array_create(_length, undefined);
});
/// @hint haxe_ds__Vector_Vector_Impl_.get(this1:haxe_ds__Vector_VectorData<T>, index:int)->T
haxe_ds__Vector_Vector_Impl_.get = method(haxe_ds__Vector_Vector_Impl_, function(_this1, _index) {
	return _this1[_index];
});
/// @hint haxe_ds__Vector_Vector_Impl_.set(this1:haxe_ds__Vector_VectorData<T>, index:int, val:T)->T
haxe_ds__Vector_Vector_Impl_.set = method(haxe_ds__Vector_Vector_Impl_, function(_this1, _index, _val) {
	_this1[@_index] = _val;
	return _val;
});
/// @hint haxe_ds__Vector_Vector_Impl_.get_length(this1:haxe_ds__Vector_VectorData<T>)->int
haxe_ds__Vector_Vector_Impl_.get_length = method(haxe_ds__Vector_Vector_Impl_, function(_this1) {
	return array_length(_this1);
});
/// @hint haxe_ds__Vector_Vector_Impl_.blit(src:array<T>, srcPos:int, dst:array<T>, dstPos:int, len:int)->void
haxe_ds__Vector_Vector_Impl_.blit = method(haxe_ds__Vector_Vector_Impl_, function(_src, _srcPos, _dst, _dstPos, _len) {
	array_copy(_dst, _dstPos, _src, _srcPos, _len);
});
/// @hint haxe_ds__Vector_Vector_Impl_.toArray(this1:haxe_ds__Vector_VectorData<T>)->array<T>
haxe_ds__Vector_Vector_Impl_.toArray = method(haxe_ds__Vector_Vector_Impl_, function(_this1) {
	return _this1.slice();
});
/// @hint haxe_ds__Vector_Vector_Impl_.toData(this1:haxe_ds__Vector_VectorData<T>)->haxe_ds__Vector_VectorData<T>
haxe_ds__Vector_Vector_Impl_.toData = method(haxe_ds__Vector_Vector_Impl_, function(_this1) {
	return _this1;
});
/// @hint haxe_ds__Vector_Vector_Impl_.fromData(data:haxe_ds__Vector_VectorData<T>)->array<T>
haxe_ds__Vector_Vector_Impl_.fromData = method(haxe_ds__Vector_Vector_Impl_, function(_data) {
	return _data;
});
/// @hint haxe_ds__Vector_Vector_Impl_.fromArrayCopy(array1:array<T>)->array<T>
haxe_ds__Vector_Vector_Impl_.fromArrayCopy = method(haxe_ds__Vector_Vector_Impl_, function(_array1) {
	return gml_internal_ArrayImpl.copy(_array1);
});
/// @hint haxe_ds__Vector_Vector_Impl_.copy(this1:haxe_ds__Vector_VectorData<T>)->array<T>
haxe_ds__Vector_Vector_Impl_.copy = method(haxe_ds__Vector_Vector_Impl_, function(_this1) {
	return _this1.slice();
});
/// @hint haxe_ds__Vector_Vector_Impl_.join(this1:haxe_ds__Vector_VectorData<T>, sep:string)->string
haxe_ds__Vector_Vector_Impl_.join = method(haxe_ds__Vector_Vector_Impl_, function(_this1, _sep) {
	return gml_internal_ArrayImpl.join(_this1, _sep);
});
/// @hint haxe_ds__Vector_Vector_Impl_.map(this1:haxe_ds__Vector_VectorData<T>, f:function<T;S>)->array<S>
haxe_ds__Vector_Vector_Impl_.map = method(haxe_ds__Vector_Vector_Impl_, function(_this1, _f) {
	var _result = new mt_Array(array_length(_this1));
	var _i = 0;
	for (var __g1 = array_length(_this1); _i < __g1; _i++) {
		_result[@_i] = _f(_this1[_i]);
	}
	return _result;
});
/// @hint haxe_ds__Vector_Vector_Impl_.sort(this1:haxe_ds__Vector_VectorData<T>, f:function<T;T;int>)->void
haxe_ds__Vector_Vector_Impl_.sort = method(haxe_ds__Vector_Vector_Impl_, function(_this1, _f) {
	gml_internal_ArrayImpl.sort(_this1, _f);
});
/// @hint haxe_ds__Vector_Vector_Impl_.fill(this1:haxe_ds__Vector_VectorData<T>, v:T)->void
haxe_ds__Vector_Vector_Impl_.fill = method(haxe_ds__Vector_Vector_Impl_, function(_this1, _v) {
	var _i = 0;
	for (var __g1 = array_length(_this1); _i < __g1; _i++) {
		_this1[@_i] = _v;
	}
});

#endregion

#region haxe.exceptions.PosException

function haxe_exceptions_PosException_new(_message, _previous, _pos) {
	// haxe_exceptions_PosException_new(message:string, ?previous:haxe_Exception, ?pos:haxe_PosInfos)
	/// @ignore
	if (false) show_debug_message(argument[2]);
	method(self, haxe_Exception_new)(_message, _previous);
	if (_pos == undefined) self.posInfos = {
		fileName: "(unknown)",
		lineNumber: 0,
		className: "(unknown)",
		methodName: "(unknown)",
		customParams: undefined
	} else self.posInfos = _pos;
}

function mc_haxe_exceptions_PosException(_message, _previous, _pos) constructor {
	// haxe_exceptions_PosException(message:string, ?previous:haxe_Exception, ?pos:haxe_PosInfos)
	/// @ignore
	static posInfos = undefined; /// @is {haxe_PosInfos}
	static toString = method(undefined, haxe_exceptions_PosException_toString);
	static message = undefined; /// @is {string}
	static stack = undefined; /// @is {haxe_CallStack}
	static previous = undefined; /// @is {haxe_Exception?}
	static native = undefined; /// @is {any}
	static longMessage = undefined; /// @is {string}
	static script = undefined; /// @is {string}
	static stacktrace = undefined; /// @is {array<string>}
	static details = method(undefined, haxe_Exception_details);
	static unwrap = method(undefined, haxe_Exception_unwrap);
	switch (argument_count) {
		case 1: method(self, haxe_exceptions_PosException_new)(argument[0]); break;
		case 2: method(self, haxe_exceptions_PosException_new)(argument[0], argument[1]); break;
		case 3: method(self, haxe_exceptions_PosException_new)(argument[0], argument[1], argument[2]); break;
		default: show_error("Expected 1..3 arguments.", true);
	}
	static __class__ = mt_haxe_exceptions_PosException;
}
globalvar haxe_exceptions_PosException; haxe_exceptions_PosException = method(undefined, mc_haxe_exceptions_PosException);
mt_haxe_exceptions_PosException.i_constructor = haxe_exceptions_PosException;

function haxe_exceptions_PosException_toString() {
	// haxe_exceptions_PosException_toString()->string
	/// @ignore
	return method(self, haxe_Exception_toString)() + " in " + self.posInfos.className + "." + self.posInfos.methodName + " at " + self.posInfos.fileName + ":" + string(self.posInfos.lineNumber);
}

#endregion

#region haxe.exceptions.NotImplementedException

function mc_haxe_exceptions_NotImplementedException(_message, _previous, _pos) constructor {
	// haxe_exceptions_NotImplementedException(message:string = "Not implemented", ?previous:haxe_Exception, ?pos:haxe_PosInfos)
	/// @ignore
	static posInfos = undefined; /// @is {haxe_PosInfos}
	static toString = method(undefined, haxe_exceptions_PosException_toString);
	static message = undefined; /// @is {string}
	static stack = undefined; /// @is {haxe_CallStack}
	static previous = undefined; /// @is {haxe_Exception?}
	static native = undefined; /// @is {any}
	static longMessage = undefined; /// @is {string}
	static script = undefined; /// @is {string}
	static stacktrace = undefined; /// @is {array<string>}
	static details = method(undefined, haxe_Exception_details);
	static unwrap = method(undefined, haxe_Exception_unwrap);
	if (_message == undefined) _message = "Not implemented";
	if (false) show_debug_message(argument[2]);
	method(self, haxe_exceptions_PosException_new)(_message, _previous, _pos);
	static __class__ = mt_haxe_exceptions_NotImplementedException;
}
globalvar haxe_exceptions_NotImplementedException; haxe_exceptions_NotImplementedException = method(undefined, mc_haxe_exceptions_NotImplementedException);
mt_haxe_exceptions_NotImplementedException.i_constructor = haxe_exceptions_NotImplementedException;

#endregion

#region haxe.http.HttpBase

function haxe_http_HttpBase_new(_url) {
	// haxe_http_HttpBase_new(url:string)
	/// @ignore
	self.url = _url;
	self.headers = [];
	self.params = [];
	self.emptyOnData = method(self, self.onData);
}

function mc_haxe_http_HttpBase(_url) constructor {
	// haxe_http_HttpBase(url:string)
	/// @ignore
	static url = undefined; /// @is {string}
	static responseBytes = undefined; /// @is {haxe_io_Bytes?}
	static responseAsString = undefined; /// @is {string?}
	static postData = undefined; /// @is {string?}
	static postBytes = undefined; /// @is {haxe_io_Bytes?}
	static headers = undefined; /// @is {array<haxe_http__HttpBase_StringKeyValue>}
	static params = undefined; /// @is {array<haxe_http__HttpBase_StringKeyValue>}
	static emptyOnData = undefined; /// @is {function<string;void>}
	static addParameter = method(undefined, haxe_http_HttpBase_addParameter);
	static onData = method(undefined, haxe_http_HttpBase_onData);
	static onBytes = method(undefined, haxe_http_HttpBase_onBytes);
	static onError = method(undefined, haxe_http_HttpBase_onError);
	static onStatus = method(undefined, haxe_http_HttpBase_onStatus);
	static hasOnData = method(undefined, haxe_http_HttpBase_hasOnData);
	static success = method(undefined, haxe_http_HttpBase_success);
	static get_responseData = method(undefined, haxe_http_HttpBase_get_responseData);
	method(self, haxe_http_HttpBase_new)(argument[0]);
	static __class__ = mt_haxe_http_HttpBase;
}
globalvar haxe_http_HttpBase; haxe_http_HttpBase = method(undefined, mc_haxe_http_HttpBase);
mt_haxe_http_HttpBase.i_constructor = haxe_http_HttpBase;

function haxe_http_HttpBase_addParameter(_name, _value) {
	// haxe_http_HttpBase_addParameter(name:string, value:string)
	/// @ignore
	array_push(self.params, { name: _name, value: _value });
}

function haxe_http_HttpBase_onData(_data) {
	// haxe_http_HttpBase_onData(data:string)
	/// @ignore
	
}

function haxe_http_HttpBase_onBytes(_data) {
	// haxe_http_HttpBase_onBytes(data:haxe_io_Bytes)
	/// @ignore
	
}

function haxe_http_HttpBase_onError(_msg) {
	// haxe_http_HttpBase_onError(msg:string)
	/// @ignore
	
}

function haxe_http_HttpBase_onStatus(_status) {
	// haxe_http_HttpBase_onStatus(status:int)
	/// @ignore
	
}

function haxe_http_HttpBase_hasOnData() {
	// haxe_http_HttpBase_hasOnData()->bool
	/// @ignore
	return !Reflect.compareMethods(method(self, self.onData), self.emptyOnData);
}

function haxe_http_HttpBase_success(_data) {
	// haxe_http_HttpBase_success(data:haxe_io_Bytes)
	/// @ignore
	self.responseBytes = _data;
	self.responseAsString = undefined;
	if (self.hasOnData()) self.onData(self.get_responseData());
	self.onBytes(self.responseBytes);
}

function haxe_http_HttpBase_get_responseData() {
	// haxe_http_HttpBase_get_responseData()->string?
	/// @ignore
	if (self.responseAsString == undefined && self.responseBytes != undefined) self.responseAsString = haxe_io__Bytes_BytesImpl.getString(self.responseBytes.b, 0, array_length(self.responseBytes.b));
	return self.responseAsString;
}

#endregion

#region haxe.io.Bytes

function mc_haxe_io_Bytes(_b) constructor {
	// haxe_io_Bytes(b:haxe_io_BytesData)
	/// @ignore
	static get_length = function() {
		return array_length(self.b);
	}
	static b = undefined; /// @is {haxe_io_BytesData}
	static get = function(_pos) {
		return self.b[_pos];
	}
	static set = function(_pos, _v) {
		self.b[@_pos] = (_v & 255);
	}
	static blit = function(_pos, _src, _srcpos, _len) {
		array_copy(self.b, _pos, _src.b, _srcpos, _len);
	}
	static fill = function(_pos, _len, _value) {
		haxe_io__Bytes_BytesImpl.fill(self.b, _pos, _len, _value);
	}
	static sub = function(_pos, _len) {
		return new haxe_io_Bytes(gml_internal_ArrayImpl.slice(self.b, _pos, _len));
	}
	static compare = function(_other1) {
		return haxe_io__Bytes_BytesImpl.compare(self.b, array_length(self.b), _other1.b, array_length(_other1.b));
	}
	static getUInt16 = function(_pos) {
		return haxe_io__Bytes_BytesImpl.getUInt16(self.b, _pos);
	}
	static setUInt16 = function(_pos, _v) {
		haxe_io__Bytes_BytesImpl.setUInt16(self.b, _pos, _v);
	}
	static getInt32 = function(_pos) {
		return haxe_io__Bytes_BytesImpl.getInt32(self.b, _pos);
	}
	static setInt32 = function(_pos, _v) {
		haxe_io__Bytes_BytesImpl.setInt32(self.b, _pos, _v);
	}
	static getInt64 = function(_pos) {
		return haxe_io__Bytes_BytesImpl.getInt64(self.b, _pos);
	}
	static setInt64 = function(_pos, _v) {
		haxe_io__Bytes_BytesImpl.setInt64(self.b, _pos, _v);
	}
	static getFloat = function(_pos) {
		return haxe_io__Bytes_BytesImpl.getFloat(self.b, _pos);
	}
	static setFloat = function(_pos, _v) {
		haxe_io__Bytes_BytesImpl.setFloat(self.b, _pos, _v);
	}
	static getDouble = function(_pos) {
		return haxe_io__Bytes_BytesImpl.getDouble(self.b, _pos);
	}
	static setDouble = function(_pos, _v) {
		haxe_io__Bytes_BytesImpl.setDouble(self.b, _pos, _v);
	}
	static getString = function(_pos, _len, _encoding) {
		if (false) show_debug_message(argument[2]);
		return haxe_io__Bytes_BytesImpl.getString(self.b, _pos, _len);
	}
	static readString = function(_pos, _len) {
		return haxe_io__Bytes_BytesImpl.getString(self.b, _pos, _len);
	}
	static toString = function() {
		return haxe_io__Bytes_BytesImpl.getString(self.b, 0, array_length(self.b));
	}
	static toHex = function() {
		return haxe_io__Bytes_BytesImpl.toHex(self.b);
	}
	static getData = function() {
		return self.b;
	}
	self.b = _b;
	static __class__ = mt_haxe_io_Bytes;
}
globalvar haxe_io_Bytes; haxe_io_Bytes = method(undefined, mc_haxe_io_Bytes);
mt_haxe_io_Bytes.i_constructor = haxe_io_Bytes;
/// @hint haxe_io_Bytes.alloc(length:int)->haxe_io_Bytes
haxe_io_Bytes.alloc = method(haxe_io_Bytes, function(_length) {
	return new haxe_io_Bytes(array_create(_length, 0));
});
/// @hint haxe_io_Bytes.ofData(b:haxe_io_BytesData)->haxe_io_Bytes
haxe_io_Bytes.ofData = method(haxe_io_Bytes, function(_b) {
	return new haxe_io_Bytes(_b);
});
/// @hint haxe_io_Bytes.ofHex(s:string)->haxe_io_Bytes
haxe_io_Bytes.ofHex = method(haxe_io_Bytes, function(_s) {
	return new haxe_io_Bytes(haxe_io__Bytes_BytesImpl.ofHex(_s));
});
/// @hint haxe_io_Bytes.ofString(s:string, ?encoding:haxe_io_Encoding?)->haxe_io_Bytes
haxe_io_Bytes.ofString = method(haxe_io_Bytes, function(_s, _encoding) {
	if (false) show_debug_message(argument[1]);
	return new haxe_io_Bytes(haxe_io__Bytes_BytesImpl.ofString(_s));
});
/// @hint haxe_io_Bytes.fastGet(b:haxe_io_BytesData, pos:int)->int
haxe_io_Bytes.fastGet = method(haxe_io_Bytes, function(_b, _pos) {
	return _b[_pos];
});

#endregion

#region haxe.io._Bytes.BytesImpl
globalvar haxe_io__Bytes_BytesImpl; haxe_io__Bytes_BytesImpl = {}
/// @hint {buffer} haxe_io__Bytes_BytesImpl.buffer
/// @hint haxe_io__Bytes_BytesImpl.fill(d:haxe_io_BytesData, pos:int, len:int, val:int)->void
haxe_io__Bytes_BytesImpl.fill = method(haxe_io__Bytes_BytesImpl, function(_d, _pos, _len, _val) {
	while (--_len >= 0) {
		_d[@_pos++] = _val;
	}
});
/// @hint haxe_io__Bytes_BytesImpl.compare(d1:haxe_io_BytesData, n1:int, d2:haxe_io_BytesData, n2:int)->int
haxe_io__Bytes_BytesImpl.compare = method(haxe_io__Bytes_BytesImpl, function(_d1, _n1, _d2, _n2) {
	var _i = 0;
	for (var __g1 = (_n1 < _n2 ? _n1 : _n2); _i < __g1; _i++) {
		var _diff = _d1[_i] - _d2[_i];
		if (_diff != 0) return _diff;
	}
	return _n1 - _n2;
});
/// @hint haxe_io__Bytes_BytesImpl.set(d:haxe_io_BytesData, pos:int, val:int)->void
haxe_io__Bytes_BytesImpl.set = method(haxe_io__Bytes_BytesImpl, function(_d, _pos, _val) {
	_d[@_pos] = (_val & 255);
});
/// @hint haxe_io__Bytes_BytesImpl.getUInt16(d:haxe_io_BytesData, pos:int)->int
haxe_io__Bytes_BytesImpl.getUInt16 = method(haxe_io__Bytes_BytesImpl, function(_d, _pos) {
	return (_d[_pos] | (_d[_pos + 1] << 8));
});
/// @hint haxe_io__Bytes_BytesImpl.setUInt16(d:haxe_io_BytesData, pos:int, val:int)->void
haxe_io__Bytes_BytesImpl.setUInt16 = method(haxe_io__Bytes_BytesImpl, function(_d, _pos, _val) {
	_d[@_pos] = (_val & 255);
	_d[@_pos + 1] = ((_val >> 8) & 255);
});
/// @hint haxe_io__Bytes_BytesImpl.getInt32(d:haxe_io_BytesData, pos:int)->int
haxe_io__Bytes_BytesImpl.getInt32 = method(haxe_io__Bytes_BytesImpl, function(_d, _pos) {
	return (((_d[_pos] | (_d[_pos + 1] << 8)) | (_d[_pos + 2] << 16)) | (_d[_pos + 3] << 24));
});
/// @hint haxe_io__Bytes_BytesImpl.setInt32(d:haxe_io_BytesData, pos:int, val:int)->void
haxe_io__Bytes_BytesImpl.setInt32 = method(haxe_io__Bytes_BytesImpl, function(_d, _pos, _val) {
	_d[@_pos] = (_val & 255);
	_d[@_pos + 1] = ((_val >> 8) & 255);
	_d[@_pos + 2] = ((_val >> 16) & 255);
	_d[@_pos + 3] = ((_val >> 24) & 255);
});
/// @hint haxe_io__Bytes_BytesImpl.getInt64(d:haxe_io_BytesData, pos:int)->int64
haxe_io__Bytes_BytesImpl.getInt64 = method(haxe_io__Bytes_BytesImpl, function(_d, _pos) {
	return ((((((((_d[_pos] | (_d[_pos + 1] << 8)) | (_d[_pos + 2] << 16)) | (_d[_pos + 3] << 24)) | (_d[_pos + 4] << 32)) | (_d[_pos + 5] << 40)) | (_d[_pos + 6] << 48)) | (_d[_pos + 7] << 56)) | 0);
});
/// @hint haxe_io__Bytes_BytesImpl.setInt64(d:haxe_io_BytesData, pos:int, val:int64)->void
haxe_io__Bytes_BytesImpl.setInt64 = method(haxe_io__Bytes_BytesImpl, function(_d, _pos, _val) {
	_d[@_pos] = (_val & 255);
	_d[@_pos + 1] = ((_val >> 8) & 255);
	_d[@_pos + 2] = ((_val >> 16) & 255);
	_d[@_pos + 3] = ((_val >> 24) & 255);
	_d[@_pos + 4] = ((_val >> 32) & 255);
	_d[@_pos + 5] = ((_val >> 40) & 255);
	_d[@_pos + 6] = ((_val >> 48) & 255);
	_d[@_pos + 7] = ((_val >> 56) & 255);
});
/// @hint haxe_io__Bytes_BytesImpl.getFloat(d:haxe_io_BytesData, pos:int)->number
haxe_io__Bytes_BytesImpl.getFloat = method(haxe_io__Bytes_BytesImpl, function(_d, _pos) {
	var _b = self.buffer;
	buffer_seek(_b, buffer_seek_start, 0);
	buffer_write(_b, buffer_u8, _d[_pos++]);
	buffer_write(_b, buffer_u8, _d[_pos++]);
	buffer_write(_b, buffer_u8, _d[_pos++]);
	buffer_write(_b, buffer_u8, _d[_pos++]);
	return buffer_peek(_b, 0, buffer_f32);
});
/// @hint haxe_io__Bytes_BytesImpl.setFloat(d:haxe_io_BytesData, pos:int, val:number)->void
haxe_io__Bytes_BytesImpl.setFloat = method(haxe_io__Bytes_BytesImpl, function(_d, _pos, _val) {
	var _b = self.buffer;
	buffer_poke(_b, 0, buffer_f32, _val);
	buffer_seek(_b, buffer_seek_start, 0);
	_d[@_pos++] = buffer_read(_b, buffer_u8);
	_d[@_pos++] = buffer_read(_b, buffer_u8);
	_d[@_pos++] = buffer_read(_b, buffer_u8);
	_d[@_pos++] = buffer_read(_b, buffer_u8);
});
/// @hint haxe_io__Bytes_BytesImpl.getDouble(d:haxe_io_BytesData, pos:int)->number
haxe_io__Bytes_BytesImpl.getDouble = method(haxe_io__Bytes_BytesImpl, function(_d, _pos) {
	var _b = self.buffer;
	buffer_seek(_b, buffer_seek_start, 0);
	buffer_write(_b, buffer_u8, _d[_pos++]);
	buffer_write(_b, buffer_u8, _d[_pos++]);
	buffer_write(_b, buffer_u8, _d[_pos++]);
	buffer_write(_b, buffer_u8, _d[_pos++]);
	buffer_write(_b, buffer_u8, _d[_pos++]);
	buffer_write(_b, buffer_u8, _d[_pos++]);
	buffer_write(_b, buffer_u8, _d[_pos++]);
	buffer_write(_b, buffer_u8, _d[_pos++]);
	return buffer_peek(_b, 0, buffer_f64);
});
/// @hint haxe_io__Bytes_BytesImpl.setDouble(d:haxe_io_BytesData, pos:int, val:number)->void
haxe_io__Bytes_BytesImpl.setDouble = method(haxe_io__Bytes_BytesImpl, function(_d, _pos, _val) {
	var _b = self.buffer;
	buffer_poke(_b, 0, buffer_f64, _val);
	buffer_seek(_b, buffer_seek_start, 0);
	_d[@_pos++] = buffer_read(_b, buffer_u8);
	_d[@_pos++] = buffer_read(_b, buffer_u8);
	_d[@_pos++] = buffer_read(_b, buffer_u8);
	_d[@_pos++] = buffer_read(_b, buffer_u8);
	_d[@_pos++] = buffer_read(_b, buffer_u8);
	_d[@_pos++] = buffer_read(_b, buffer_u8);
	_d[@_pos++] = buffer_read(_b, buffer_u8);
	_d[@_pos++] = buffer_read(_b, buffer_u8);
});
/// @hint haxe_io__Bytes_BytesImpl.getString(d:haxe_io_BytesData, pos:int, len:int)->string
haxe_io__Bytes_BytesImpl.getString = method(haxe_io__Bytes_BytesImpl, function(_d, _pos, _len) {
	var _b = self.buffer;
	buffer_seek(_b, buffer_seek_start, 0);
	while (--_len >= 0) {
		buffer_write(_b, buffer_u8, _d[_pos++]);
	}
	buffer_write(_b, buffer_u8, 0);
	buffer_seek(_b, buffer_seek_start, 0);
	return buffer_read(_b, buffer_string);
});
/// @hint haxe_io__Bytes_BytesImpl.toHex(d:haxe_io_BytesData)->string
haxe_io__Bytes_BytesImpl.toHex = method(haxe_io__Bytes_BytesImpl, function(_d) {
	var _b = self.buffer;
	buffer_seek(_b, buffer_seek_start, 0);
	var _i = 0;
	for (var __g1 = array_length(_d); _i < __g1; _i++) {
		var _v = _d[_i];
		var _h;
		_h = (_v >> 4);
		if (_h >= 10) buffer_write(_b, buffer_u8, _h + 55); else buffer_write(_b, buffer_u8, _h + 48);
		_h = (_v & 15);
		if (_h >= 10) buffer_write(_b, buffer_u8, _h + 55); else buffer_write(_b, buffer_u8, _h + 48);
	}
	buffer_write(_b, buffer_u8, 0);
	buffer_seek(_b, buffer_seek_start, 0);
	return buffer_read(_b, buffer_string);
});
/// @hint haxe_io__Bytes_BytesImpl.ofString(s:string)->haxe_io_BytesData
haxe_io__Bytes_BytesImpl.ofString = method(haxe_io__Bytes_BytesImpl, function(_s) {
	var _b = self.buffer;
	buffer_seek(_b, buffer_seek_start, 0);
	buffer_write(_b, buffer_text, _s);
	var _size = buffer_tell(_b);
	var _out = array_create(_size, 0);
	buffer_seek(_b, buffer_seek_start, 0);
	var _i = 0;
	for (var __g1 = _size; _i < __g1; _i++) {
		_out[@_i] = buffer_read(_b, buffer_u8);
	}
	return _out;
});
/// @hint {array<int>} haxe_io__Bytes_BytesImpl.ofHex_mapper
/// @hint haxe_io__Bytes_BytesImpl.ofHex(s:string)->haxe_io_BytesData
haxe_io__Bytes_BytesImpl.ofHex = method(haxe_io__Bytes_BytesImpl, function(_s) {
	var _b = self.buffer;
	buffer_seek(_b, buffer_seek_start, 0);
	buffer_write(_b, buffer_text, _s);
	var _n = buffer_tell(_b);
	if ((_n & 1) != 0) throw string("Not a hex string (odd number of digits)");
	_n = _n >> 1;
	var _b = self.buffer;
	buffer_seek(_b, buffer_seek_start, 0);
	var _high, _i;
	var _mapper = self.ofHex_mapper;
	if (_mapper == undefined) {
		_mapper = array_create(256, 0);
		_i = -1;
		while (++_i < 10) {
			_mapper[@48 + _i] = _i;
		}
		for (_i = -1; ++_i < 6; _mapper[@97 + _i] = 10 + _i) {
			_mapper[@65 + _i] = 10 + _i;
		}
		self.ofHex_mapper = _mapper;
	}
	var _out = array_create(_n, 0);
	for (_i = -1; _i < _n; _out[@_i] = ((_mapper[_high] << 4) | _mapper[buffer_read(_b, buffer_u8)])) {
		_high = buffer_read(_b, buffer_u8);
	}
	return _out;
});

#endregion

#region haxe.io.BytesBuffer

function mc_haxe_io_BytesBuffer() constructor {
	// haxe_io_BytesBuffer()
	/// @ignore
	static buffer = undefined; /// @is {array<int>}
	static pos = undefined; /// @is {int}
	static size = undefined; /// @is {int}
	static get_length = function() {
		return self.pos;
	}
	static addByte = function(_byte) {
		if (self.pos == self.size) self.grow(1);
		self.buffer[@self.pos++] = (_byte & 255);
	}
	static add = function(_src) {
		var _n = array_length(_src.b);
		if (self.pos + _n > self.size) self.grow(1);
		array_copy(self.buffer, self.pos, _src.b, 0, _n);
		self.pos += _n;
	}
	static addString = function(_v, _encoding) {
		if (false) show_debug_message(argument[1]);
		var _b = haxe_io_BytesBuffer.gmlBuffer;
		buffer_seek(_b, buffer_seek_start, 0);
		buffer_write(_b, buffer_text, _v);
		var _n = buffer_tell(_b);
		if (self.pos + _n > self.size) self.grow(_n);
		var _i = -1;
		while (++_i < _n) {
			self.buffer[@self.pos + _i] = buffer_peek(_b, _i, buffer_u8);
		}
		self.pos += _n;
	}
	static addInt32 = function(_v) {
		if (self.pos + 4 > self.size) self.grow(4);
		var _b = haxe_io_BytesBuffer.gmlBuffer;
		buffer_poke(_b, 0, buffer_s32, _v);
		self.buffer[@self.pos] = buffer_peek(_b, 0, buffer_u8);
		self.buffer[@self.pos + 1] = buffer_peek(_b, 1, buffer_u8);
		self.buffer[@self.pos + 2] = buffer_peek(_b, 2, buffer_u8);
		self.buffer[@self.pos + 3] = buffer_peek(_b, 3, buffer_u8);
		self.pos += 4;
	}
	static addInt64 = function(_v) {
		if (self.pos + 8 > self.size) self.grow(8);
		var _b = haxe_io_BytesBuffer.gmlBuffer;
		buffer_poke(_b, 0, buffer_u64, _v);
		self.buffer[@self.pos] = buffer_peek(_b, 0, buffer_u8);
		self.buffer[@self.pos + 1] = buffer_peek(_b, 1, buffer_u8);
		self.buffer[@self.pos + 2] = buffer_peek(_b, 2, buffer_u8);
		self.buffer[@self.pos + 3] = buffer_peek(_b, 3, buffer_u8);
		self.buffer[@self.pos + 4] = buffer_peek(_b, 4, buffer_u8);
		self.buffer[@self.pos + 5] = buffer_peek(_b, 5, buffer_u8);
		self.buffer[@self.pos + 6] = buffer_peek(_b, 6, buffer_u8);
		self.buffer[@self.pos + 7] = buffer_peek(_b, 7, buffer_u8);
		self.pos += 8;
	}
	static addFloat = function(_v) {
		if (self.pos + 4 > self.size) self.grow(4);
		var _b = haxe_io_BytesBuffer.gmlBuffer;
		buffer_poke(_b, 0, buffer_f32, _v);
		self.buffer[@self.pos] = buffer_peek(_b, 0, buffer_u8);
		self.buffer[@self.pos + 1] = buffer_peek(_b, 1, buffer_u8);
		self.buffer[@self.pos + 2] = buffer_peek(_b, 2, buffer_u8);
		self.buffer[@self.pos + 3] = buffer_peek(_b, 3, buffer_u8);
		self.pos += 4;
	}
	static addDouble = function(_v) {
		if (self.pos + 8 > self.size) self.grow(8);
		var _b = haxe_io_BytesBuffer.gmlBuffer;
		buffer_poke(_b, 0, buffer_f64, _v);
		self.buffer[@self.pos] = buffer_peek(_b, 0, buffer_u8);
		self.buffer[@self.pos + 1] = buffer_peek(_b, 1, buffer_u8);
		self.buffer[@self.pos + 2] = buffer_peek(_b, 2, buffer_u8);
		self.buffer[@self.pos + 3] = buffer_peek(_b, 3, buffer_u8);
		self.buffer[@self.pos + 4] = buffer_peek(_b, 4, buffer_u8);
		self.buffer[@self.pos + 5] = buffer_peek(_b, 5, buffer_u8);
		self.buffer[@self.pos + 6] = buffer_peek(_b, 6, buffer_u8);
		self.buffer[@self.pos + 7] = buffer_peek(_b, 7, buffer_u8);
		self.pos += 8;
	}
	static addBytes = function(_src, _pos, _len) {
		if (_pos < 0 || _len < 0 || _pos + _len > array_length(_src.b)) throw string(haxe_io_Error_OutsideBounds);
		if (self.pos + _len > self.size) self.grow(_len);
		if (self.size == 0) return 0;
		array_copy(self.buffer, self.pos, _src.b, _pos, _len);
		self.pos += _len;
	}
	static grow = function(_delta) {
		var _req = self.pos + _delta;
		var _nsize = (self.size == 0 ? 16 : self.size);
		while (_nsize < _req) {
			_nsize = (_nsize * 3 >> 1);
		}
		array_resize(self.buffer, _nsize);
	}
	static getBytes = function() {
		if (self.size == 0) return new haxe_io_Bytes(array_create(0, 0));
		var _b = new haxe_io_Bytes(self.buffer);
		_b.length = self.pos;
		return _b;
	}
	self.size = 0;
	self.pos = 0;
	self.buffer = [];
	static __class__ = mt_haxe_io_BytesBuffer;
}
globalvar haxe_io_BytesBuffer; haxe_io_BytesBuffer = method(undefined, mc_haxe_io_BytesBuffer);
mt_haxe_io_BytesBuffer.i_constructor = haxe_io_BytesBuffer;
/// @hint {buffer} haxe_io_BytesBuffer.gmlBuffer

#endregion

#region haxe.io.Output

function haxe_io_Output_new() {
	// haxe_io_Output_new()
	/// @ignore
	self.bigEndian = false;
	self.dataLen = 32;
	self.dataPos = 0;
	self.data = array_create(32, 0);
}

function mc_haxe_io_Output() constructor {
	// haxe_io_Output()
	/// @ignore
	static data = undefined; /// @is {haxe_io_BytesData}
	static dataPos = undefined; /// @is {int}
	static dataLen = undefined; /// @is {int}
	static bigEndian = undefined; /// @is {bool}
	static flush = method(undefined, haxe_io_Output_flush);
	static close = method(undefined, haxe_io_Output_close);
	static prepareImpl = method(undefined, haxe_io_Output_prepareImpl);
	static prepare = method(undefined, haxe_io_Output_prepare);
	static writeRaw = method(undefined, haxe_io_Output_writeRaw);
	static writeByte = method(undefined, haxe_io_Output_writeByte);
	static writeInt8 = method(undefined, haxe_io_Output_writeInt8);
	static writeUInt16 = method(undefined, haxe_io_Output_writeUInt16);
	static writeInt16 = method(undefined, haxe_io_Output_writeInt16);
	static writeUInt24 = method(undefined, haxe_io_Output_writeUInt24);
	static writeInt24 = method(undefined, haxe_io_Output_writeInt24);
	static writeInt32 = method(undefined, haxe_io_Output_writeInt32);
	static writeFloat = method(undefined, haxe_io_Output_writeFloat);
	static writeDouble = method(undefined, haxe_io_Output_writeDouble);
	static write = method(undefined, haxe_io_Output_write);
	static writeBytes = method(undefined, haxe_io_Output_writeBytes);
	static writeFullBytes = method(undefined, haxe_io_Output_writeFullBytes);
	static writeString = method(undefined, haxe_io_Output_writeString);
	static writeInput = method(undefined, haxe_io_Output_writeInput);
	method(self, haxe_io_Output_new)();
	static __class__ = mt_haxe_io_Output;
}
globalvar haxe_io_Output; haxe_io_Output = method(undefined, mc_haxe_io_Output);
mt_haxe_io_Output.i_constructor = haxe_io_Output;
/// @hint {buffer} haxe_io_Output.buffer

function haxe_io_Output_flush() {
	// haxe_io_Output_flush()
	/// @ignore
	
}

function haxe_io_Output_close() {
	// haxe_io_Output_close()
	/// @ignore
	
}

function haxe_io_Output_prepareImpl(_data, _next) {
	// haxe_io_Output_prepareImpl(data:haxe_io_BytesData, next:int)
	/// @ignore
	var _dlen = self.dataLen;
	if (_next > _dlen) {
		do {
			_dlen *= 2;
		} until (_next <= _dlen);
		_dlen *= 2;
		_data[@_dlen - 1] = 0;
		self.dataLen = _dlen;
	}
}

function haxe_io_Output_prepare(_nbytes) {
	// haxe_io_Output_prepare(nbytes:int)
	/// @ignore
	var _data = self.data;
	var _next = self.dataPos + _nbytes;
	var _dlen = self.dataLen;
	if (_next > _dlen) {
		do {
			_dlen *= 2;
		} until (_next <= _dlen);
		_dlen *= 2;
		_data[@_dlen - 1] = 0;
		self.dataLen = _dlen;
	}
}

function haxe_io_Output_writeRaw(_data, _pos, _val) {
	// haxe_io_Output_writeRaw(data:haxe_io_BytesData, pos:int, val:int)
	/// @ignore
	_data[@_pos] = (_val & 255);
}

function haxe_io_Output_writeByte(_c) {
	// haxe_io_Output_writeByte(c:int)
	/// @ignore
	var _p0 = self.dataPos;
	var _p1 = _p0 + 1;
	var _d = self.data;
	var _dlen = self.dataLen;
	if (_p1 > _dlen) {
		do {
			_dlen *= 2;
		} until (_p1 <= _dlen);
		_dlen *= 2;
		_d[@_dlen - 1] = 0;
		self.dataLen = _dlen;
	}
	_d[@_p0] = (_c & 255);
	self.dataPos = _p1;
}

function haxe_io_Output_writeInt8(_c) {
	// haxe_io_Output_writeInt8(c:int)
	/// @ignore
	self.writeByte(_c);
}

function haxe_io_Output_writeUInt16(_x) {
	// haxe_io_Output_writeUInt16(x:int)
	/// @ignore
	var _p0 = self.dataPos;
	var _p1 = _p0 + 2;
	var _d = self.data;
	var _dlen = self.dataLen;
	if (_p1 > _dlen) {
		do {
			_dlen *= 2;
		} until (_p1 <= _dlen);
		_dlen *= 2;
		_d[@_dlen - 1] = 0;
		self.dataLen = _dlen;
	}
	if (self.bigEndian) {
		_d[@_p0] = ((_x >> 8) & 255);
		_d[@_p0 + 1] = (_x & 255);
	} else {
		_d[@_p0] = (_x & 255);
		_d[@_p0 + 1] = ((_x >> 8) & 255);
	}
	self.dataPos = _p1;
}

function haxe_io_Output_writeInt16(_x) {
	// haxe_io_Output_writeInt16(x:int)
	/// @ignore
	self.writeUInt16(_x);
}

function haxe_io_Output_writeUInt24(_x) {
	// haxe_io_Output_writeUInt24(x:int)
	/// @ignore
	var _p0 = self.dataPos;
	var _p1 = _p0 + 3;
	var _d = self.data;
	var _dlen = self.dataLen;
	if (_p1 > _dlen) {
		do {
			_dlen *= 2;
		} until (_p1 <= _dlen);
		_dlen *= 2;
		_d[@_dlen - 1] = 0;
		self.dataLen = _dlen;
	}
	if (self.bigEndian) {
		_d[@_p0] = ((_x >> 16) & 255);
		_d[@_p0 + 1] = ((_x >> 8) & 255);
		_d[@_p0 + 2] = (_x & 255);
	} else {
		_d[@_p0] = (_x & 255);
		_d[@_p0 + 1] = ((_x >> 8) & 255);
		_d[@_p0 + 2] = ((_x >> 16) & 255);
	}
	self.dataPos = _p1;
}

function haxe_io_Output_writeInt24(_x) {
	// haxe_io_Output_writeInt24(x:int)
	/// @ignore
	self.writeUInt24(_x);
}

function haxe_io_Output_writeInt32(_x) {
	// haxe_io_Output_writeInt32(x:int)
	/// @ignore
	var _p0 = self.dataPos;
	var _p1 = _p0 + 4;
	var _d = self.data;
	var _dlen = self.dataLen;
	if (_p1 > _dlen) {
		do {
			_dlen *= 2;
		} until (_p1 <= _dlen);
		_dlen *= 2;
		_d[@_dlen - 1] = 0;
		self.dataLen = _dlen;
	}
	if (self.bigEndian) {
		_d[@_p0] = ((_x >> 24) & 255);
		_d[@_p0 + 1] = ((_x >> 16) & 255);
		_d[@_p0 + 2] = ((_x >> 8) & 255);
		_d[@_p0 + 3] = (_x & 255);
	} else {
		_d[@_p0] = (_x & 255);
		_d[@_p0 + 1] = ((_x >> 8) & 255);
		_d[@_p0 + 2] = ((_x >> 16) & 255);
		_d[@_p0 + 3] = ((_x >> 24) & 255);
	}
	self.dataPos = _p1;
}

function haxe_io_Output_writeFloat(_x) {
	// haxe_io_Output_writeFloat(x:number)
	/// @ignore
	var _p0 = self.dataPos;
	var _p1 = _p0 + 4;
	var _d = self.data;
	var _dlen = self.dataLen;
	if (_p1 > _dlen) {
		do {
			_dlen *= 2;
		} until (_p1 <= _dlen);
		_dlen *= 2;
		_d[@_dlen - 1] = 0;
		self.dataLen = _dlen;
	}
	var _buf = haxe_io_Output.buffer;
	buffer_poke(_buf, 0, buffer_f32, _x);
	var _i;
	if (self.bigEndian) {
		_i = 4;
		while (--_i >= 0) {
			_d[@_p0++] = buffer_peek(_buf, _i, buffer_u8);
		}
	} else {
		_i = 0;
		while (_i < 4) {
			_d[@_p0++] = buffer_peek(_buf, _i++, buffer_u8);
		}
	}
	self.dataPos = _p1;
}

function haxe_io_Output_writeDouble(_x) {
	// haxe_io_Output_writeDouble(x:number)
	/// @ignore
	var _p0 = self.dataPos;
	var _p1 = _p0 + 8;
	var _d = self.data;
	var _dlen = self.dataLen;
	if (_p1 > _dlen) {
		do {
			_dlen *= 2;
		} until (_p1 <= _dlen);
		_dlen *= 2;
		_d[@_dlen - 1] = 0;
		self.dataLen = _dlen;
	}
	var _buf = haxe_io_Output.buffer;
	buffer_poke(_buf, 0, buffer_f64, _x);
	var _i;
	if (self.bigEndian) {
		_i = 8;
		while (--_i >= 0) {
			_d[@_p0++] = buffer_peek(_buf, _i, buffer_u8);
		}
	} else {
		_i = 0;
		while (_i < 8) {
			_d[@_p0++] = buffer_peek(_buf, _i++, buffer_u8);
		}
	}
	self.dataPos = _p1;
}

function haxe_io_Output_write(_b) {
	// haxe_io_Output_write(b:haxe_io_Bytes)
	/// @ignore
	var _bd = _b.b;
	var _bn = array_length(_bd);
	var _p0 = self.dataPos;
	var _p1 = _p0 + _bn;
	var _d = self.data;
	var _dlen = self.dataLen;
	if (_p1 > _dlen) {
		do {
			_dlen *= 2;
		} until (_p1 <= _dlen);
		_dlen *= 2;
		_d[@_dlen - 1] = 0;
		self.dataLen = _dlen;
	}
	array_copy(_d, _p0, _bd, 0, _bn);
	self.dataPos = _p1;
}

function haxe_io_Output_writeBytes(_b, _pos, _len) {
	// haxe_io_Output_writeBytes(b:haxe_io_Bytes, pos:int, len:int)->int
	/// @ignore
	var _bd = _b.b;
	var _p0 = self.dataPos;
	var _p1 = _p0 + _len;
	var _d = self.data;
	var _dlen = self.dataLen;
	if (_p1 > _dlen) {
		do {
			_dlen *= 2;
		} until (_p1 <= _dlen);
		_dlen *= 2;
		_d[@_dlen - 1] = 0;
		self.dataLen = _dlen;
	}
	array_copy(_d, _p0, _bd, _pos, _len);
	self.dataPos = _p1;
	return _len;
}

function haxe_io_Output_writeFullBytes(_b, _pos, _len) {
	// haxe_io_Output_writeFullBytes(b:haxe_io_Bytes, pos:int, len:int)
	/// @ignore
	self.writeBytes(_b, _pos, _len);
}

function haxe_io_Output_writeString(_s) {
	// haxe_io_Output_writeString(s:string)
	/// @ignore
	var _buf = haxe_io_Output.buffer;
	buffer_seek(_buf, buffer_seek_start, 0);
	buffer_write(_buf, buffer_text, _s);
	var _sn = buffer_tell(_buf);
	buffer_seek(_buf, buffer_seek_start, 0);
	var _p0 = self.dataPos;
	var _p1 = _p0 + _sn;
	var _d = self.data;
	var _dlen = self.dataLen;
	if (_p1 > _dlen) {
		do {
			_dlen *= 2;
		} until (_p1 <= _dlen);
		_dlen *= 2;
		_d[@_dlen - 1] = 0;
		self.dataLen = _dlen;
	}
	while (_p0 < _p1) {
		_d[@_p0++] = buffer_read(_buf, buffer_u8);
	}
	self.dataPos = _p1;
}

function haxe_io_Output_writeInput(_q, _bufSize) {
	// haxe_io_Output_writeInput(q:haxe_io_Input, ?bufSize:int)
	/// @ignore
	if (false) show_debug_message(argument[1]);
	var _q0 = _q.dataPos;
	var _q1 = _q.dataLen;
	var _qn = _q1 - _q0;
	var _p0 = self.dataPos;
	var _p1 = _p0 + _qn;
	var _d = self.data;
	var _dlen = self.dataLen;
	if (_p1 > _dlen) {
		do {
			_dlen *= 2;
		} until (_p1 <= _dlen);
		_dlen *= 2;
		_d[@_dlen - 1] = 0;
		self.dataLen = _dlen;
	}
	array_copy(_d, _p0, _q.data, _q0, _qn);
	_q.dataPos = _q1;
	self.dataPos = _p1;
}

#endregion

#region haxe.io.BytesOutput

function mc_haxe_io_BytesOutput() constructor {
	// haxe_io_BytesOutput()
	/// @ignore
	static get_length = function() {
		return self.dataPos;
	}
	static getBytes = function() {
		return new haxe_io_Bytes(self.data);
	}
	static data = undefined; /// @is {haxe_io_BytesData}
	static dataPos = undefined; /// @is {int}
	static dataLen = undefined; /// @is {int}
	static bigEndian = undefined; /// @is {bool}
	static flush = method(undefined, haxe_io_Output_flush);
	static close = method(undefined, haxe_io_Output_close);
	static prepareImpl = method(undefined, haxe_io_Output_prepareImpl);
	static prepare = method(undefined, haxe_io_Output_prepare);
	static writeRaw = method(undefined, haxe_io_Output_writeRaw);
	static writeByte = method(undefined, haxe_io_Output_writeByte);
	static writeInt8 = method(undefined, haxe_io_Output_writeInt8);
	static writeUInt16 = method(undefined, haxe_io_Output_writeUInt16);
	static writeInt16 = method(undefined, haxe_io_Output_writeInt16);
	static writeUInt24 = method(undefined, haxe_io_Output_writeUInt24);
	static writeInt24 = method(undefined, haxe_io_Output_writeInt24);
	static writeInt32 = method(undefined, haxe_io_Output_writeInt32);
	static writeFloat = method(undefined, haxe_io_Output_writeFloat);
	static writeDouble = method(undefined, haxe_io_Output_writeDouble);
	static write = method(undefined, haxe_io_Output_write);
	static writeBytes = method(undefined, haxe_io_Output_writeBytes);
	static writeFullBytes = method(undefined, haxe_io_Output_writeFullBytes);
	static writeString = method(undefined, haxe_io_Output_writeString);
	static writeInput = method(undefined, haxe_io_Output_writeInput);
	method(self, haxe_io_Output_new)();
	static __class__ = mt_haxe_io_BytesOutput;
}
globalvar haxe_io_BytesOutput; haxe_io_BytesOutput = method(undefined, mc_haxe_io_BytesOutput);
mt_haxe_io_BytesOutput.i_constructor = haxe_io_BytesOutput;

#endregion

#region haxe.io.Eof

function mc_haxe_io_Eof() constructor {
	// haxe_io_Eof()
	/// @ignore
	static toString = function() {
		return "Eof";
	}
	
	static __class__ = mt_haxe_io_Eof;
}
globalvar haxe_io_Eof; haxe_io_Eof = method(undefined, mc_haxe_io_Eof);
mt_haxe_io_Eof.i_constructor = haxe_io_Eof;

#endregion

#region haxe.io.Error

/// @interface {haxe_io_Error}
function mc_haxe_io_Error() constructor {
	/// @hint {array} haxe_io_Error:__enumParams__
	/// @hint {int} haxe_io_Error:__enumIndex__
	static getIndex = method(undefined, enum_getIndex);
	static toString = method(undefined, enum_toString);
	static __enum__ = mt_haxe_io_Error;
}

global.__mp_haxe_io_Error_Blocked = [];
/// @implements {haxe_io_Error}
function mc_haxe_io_Error_Blocked() : mc_haxe_io_Error() constructor {
	static __enumParams__ = global.__mp_haxe_io_Error_Blocked;
	static __enumIndex__ = 0;
}
globalvar haxe_io_Error_Blocked; haxe_io_Error_Blocked = new mc_haxe_io_Error_Blocked(); /// @is {haxe_io_Error}

global.__mp_haxe_io_Error_Overflow = [];
/// @implements {haxe_io_Error}
function mc_haxe_io_Error_Overflow() : mc_haxe_io_Error() constructor {
	static __enumParams__ = global.__mp_haxe_io_Error_Overflow;
	static __enumIndex__ = 1;
}
globalvar haxe_io_Error_Overflow; haxe_io_Error_Overflow = new mc_haxe_io_Error_Overflow(); /// @is {haxe_io_Error}

global.__mp_haxe_io_Error_OutsideBounds = [];
/// @implements {haxe_io_Error}
function mc_haxe_io_Error_OutsideBounds() : mc_haxe_io_Error() constructor {
	static __enumParams__ = global.__mp_haxe_io_Error_OutsideBounds;
	static __enumIndex__ = 2;
}
globalvar haxe_io_Error_OutsideBounds; haxe_io_Error_OutsideBounds = new mc_haxe_io_Error_OutsideBounds(); /// @is {haxe_io_Error}

global.__mp_haxe_io_Error_Custom = ["e"];
/// @implements {haxe_io_Error}
function mc_haxe_io_Error_Custom() : mc_haxe_io_Error() constructor {
	/// @hint {any} :e
	static __enumParams__ = global.__mp_haxe_io_Error_Custom;
	static __enumIndex__ = 3;
}

function haxe_io_Error_Custom(_e) {
	// haxe_io_Error_Custom(e:any)->haxe_io_Error
	/// @ignore
	var _this = new mc_haxe_io_Error_Custom();
	_this.e = _e;
	return _this
}

#endregion

#region haxe.io.Input

function mc_haxe_io_Input() constructor {
	// haxe_io_Input()
	/// @ignore
	static data = undefined; /// @is {haxe_io_BytesData}
	static dataPos = undefined; /// @is {int}
	static dataLen = undefined; /// @is {int}
	static bigEndian = undefined; /// @is {bool}
	static close = function() {
		
	}
	static readByte = function() {
		return self.data[self.dataPos++];
	}
	static readInt8 = function() {
		var _n = self.data[self.dataPos++];
		if (_n >= 128) return _n - 256; else return _n;
	}
	static readUInt16Impl = function() {
		var _d = self.data;
		var _p = self.dataPos;
		var _c1 = _d[_p++];
		var _c2 = _d[_p++];
		self.dataPos = _p;
		if (self.bigEndian) return ((_c1 << 8) | _c2); else return (_c1 | (_c2 << 8));
	}
	static readUInt16 = function() {
		var _d = self.data;
		var _p = self.dataPos;
		var _c1 = _d[_p++];
		var _c2 = _d[_p++];
		self.dataPos = _p;
		if (self.bigEndian) return ((_c1 << 8) | _c2); else return (_c1 | (_c2 << 8));
	}
	static readInt16 = function() {
		var _d = self.data;
		var _p = self.dataPos;
		var _c1 = _d[_p++];
		var _c2 = _d[_p++];
		self.dataPos = _p;
		var _n = (self.bigEndian ? ((_c1 << 8) | _c2) : (_c1 | (_c2 << 8)));
		if (_n >= 32768) return _n - 65536; else return _n;
	}
	static readUInt24Impl = function() {
		var _d = self.data;
		var _p = self.dataPos;
		var _c1 = _d[_p++];
		var _c2 = _d[_p++];
		var _c3 = _d[_p++];
		self.dataPos = _p;
		if (self.bigEndian) return (((_c1 << 16) | (_c2 << 8)) | _c3); else return ((_c1 | (_c2 << 8)) | (_c3 << 16));
	}
	static readUInt24 = function() {
		var _d = self.data;
		var _p = self.dataPos;
		var _c1 = _d[_p++];
		var _c2 = _d[_p++];
		self.dataPos = _p;
		if (self.bigEndian) return ((_c1 << 8) | _c2); else return (_c1 | (_c2 << 8));
	}
	static readInt24 = function() {
		var _d = self.data;
		var _p = self.dataPos;
		var _c1 = _d[_p++];
		var _c2 = _d[_p++];
		self.dataPos = _p;
		var _n = (self.bigEndian ? ((_c1 << 8) | _c2) : (_c1 | (_c2 << 8)));
		if (_n >= 8388608) return _n - 16777216; else return _n;
	}
	static readInt32 = function() {
		var _d = self.data;
		var _p = self.dataPos;
		var _c1 = _d[_p++];
		var _c2 = _d[_p++];
		var _c3 = _d[_p++];
		var _c4 = _d[_p++];
		self.dataPos = _p;
		var _n = (self.bigEndian ? ((((_c1 << 24) | (_c2 << 16)) | (_c3 << 8)) | _c4) : (((_c1 | (_c2 << 8)) | (_c3 << 16)) | (_c4 << 24)));
		if (_n >= -2147483648) return _n - 4294967296; else return _n;
	}
	static readFloat = function() {
		var _d = self.data;
		var _p = self.dataPos;
		var _buf = haxe_io_Input.buffer;
		var _i;
		if (self.bigEndian) {
			_i = 4;
			while (--_i >= 0) {
				buffer_poke(_buf, _i, buffer_u8, _d[_p++]);
			}
		} else {
			_i = 0;
			while (_i < 4) {
				buffer_poke(_buf, _i++, buffer_u8, _d[_p++]);
			}
		}
		self.dataPos = _p;
		return buffer_peek(_buf, 0, buffer_f32);
	}
	static readDouble = function() {
		var _d = self.data;
		var _p = self.dataPos;
		var _buf = haxe_io_Input.buffer;
		var _i;
		if (self.bigEndian) {
			_i = 8;
			while (--_i >= 0) {
				buffer_poke(_buf, _i, buffer_u8, _d[_p++]);
			}
		} else {
			_i = 0;
			while (_i < 8) {
				buffer_poke(_buf, _i++, buffer_u8, _d[_p++]);
			}
		}
		self.dataPos = _p;
		return buffer_peek(_buf, 0, buffer_f64);
	}
	static readBytes = function(_to, _pos, _len) {
		var _start = self.dataPos;
		var _avail = self.dataLen - _start;
		if (_len > _avail) _len = _avail;
		array_copy(_to.b, _pos, self.data, _start, _len);
		self.dataPos = _start + _len;
		return _len;
	}
	static readFullBytes = function(_to, _pos, _len) {
		self.readBytes(_to, _pos, _len);
	}
	static readAll = function(_bufSize) {
		if (false) show_debug_message(argument[0]);
		var _start = self.dataPos;
		var _till = self.dataLen;
		var _size = _till - _start;
		var _out = array_create(_size, 0);
		array_copy(_out, 0, self.data, _start, _size);
		self.dataPos = _till;
		return new haxe_io_Bytes(_out);
	}
	static read = function(_len) {
		var _start = self.dataPos;
		var _avail = self.dataLen - _start;
		if (_len > _avail) _len = _avail;
		var _out = array_create(_len, 0);
		array_copy(_out, 0, self.data, _start, _len);
		self.dataPos = _start + _len;
		return new haxe_io_Bytes(_out);
	}
	static readUntil = function(_endc) {
		var _b = haxe_io_Input.buffer;
		buffer_seek(_b, buffer_seek_start, 0);
		var _pos = self.dataPos;
		var _data = self.data;
		var _len = self.dataLen;
		while (_pos < _len) {
			var _next = _data[_pos++];
			if (_next != _endc) buffer_write(_b, buffer_u8, _next); else break;
		}
		self.dataPos = _pos;
		buffer_write(_b, buffer_u8, 0);
		buffer_seek(_b, buffer_seek_start, 0);
		return buffer_read(_b, buffer_string);
	}
	static readLine = function() {
		var _buf = haxe_io_Input.buffer;
		buffer_seek(_buf, buffer_seek_start, 0);
		var _pos = self.dataPos;
		var _data = self.data;
		var _len = self.dataLen;
		var _last = -1;
		while (_pos < _len) {
			var _next = _data[_pos++];
			if (_next != 10) {
				buffer_write(_buf, buffer_u8, _next);
				_last = _next;
			} else break;
		}
		if (_last == 13) buffer_seek(_buf, buffer_seek_relative, -1);
		buffer_write(_buf, buffer_u8, 0);
		buffer_seek(_buf, buffer_seek_start, 0);
		self.dataPos = _pos;
		return buffer_read(_buf, buffer_string);
	}
	static readString = function(_count) {
		var _pos = self.dataPos;
		var _data = self.data;
		var _maxLen = self.dataLen - _pos;
		if (_count > _maxLen) _count = _maxLen;
		var _buf = haxe_io_Input.buffer;
		buffer_seek(_buf, buffer_seek_start, 0);
		repeat (_count) buffer_write(_buf, buffer_u8, _data[_pos++]);
		buffer_write(_buf, buffer_u8, 0);
		buffer_seek(_buf, buffer_seek_start, 0);
		self.dataPos = _pos;
		return buffer_read(_buf, buffer_string);
	}
	self.bigEndian = false;
	self.dataPos = 0;
	static __class__ = mt_haxe_io_Input;
}
globalvar haxe_io_Input; haxe_io_Input = method(undefined, mc_haxe_io_Input);
mt_haxe_io_Input.i_constructor = haxe_io_Input;
/// @hint {buffer} haxe_io_Input.buffer

#endregion

#region haxe.iterators.ArrayIterator

function mc_haxe_iterators_ArrayIterator(_array1) constructor {
	// haxe_iterators_ArrayIterator(array:array<T>)
	/// @ignore
	static array = undefined; /// @is {array<T>}
	static current = undefined; /// @is {int}
	static hasNext = function() {
		return self.current < array_length(self.array);
	}
	static next = function() {
		return self.array[self.current++];
	}
	self.current = 0;
	self.array = _array1;
	static __class__ = mt_haxe_iterators_ArrayIterator;
}
globalvar haxe_iterators_ArrayIterator; haxe_iterators_ArrayIterator = method(undefined, mc_haxe_iterators_ArrayIterator);
mt_haxe_iterators_ArrayIterator.i_constructor = haxe_iterators_ArrayIterator;

#endregion

#region haxe.iterators.DynamicAccessIterator

function mc_haxe_iterators_DynamicAccessIterator(_access) constructor {
	// haxe_iterators_DynamicAccessIterator(access:haxe_DynamicAccess<T>)
	/// @ignore
	static access = undefined; /// @is {haxe_DynamicAccess<T>}
	static keys = undefined; /// @is {array<string>}
	static index = undefined; /// @is {int}
	self.access = _access;
	self.keys = variable_struct_get_names(_access);
	self.index = 0;
	static __class__ = mt_haxe_iterators_DynamicAccessIterator;
}
globalvar haxe_iterators_DynamicAccessIterator; haxe_iterators_DynamicAccessIterator = method(undefined, mc_haxe_iterators_DynamicAccessIterator);
mt_haxe_iterators_DynamicAccessIterator.i_constructor = haxe_iterators_DynamicAccessIterator;

#endregion

#region haxe.iterators.DynamicAccessKeyValueIterator

function mc_haxe_iterators_DynamicAccessKeyValueIterator(_access) constructor {
	// haxe_iterators_DynamicAccessKeyValueIterator(access:haxe_DynamicAccess<T>)
	/// @ignore
	static access = undefined; /// @is {haxe_DynamicAccess<T>}
	static keys = undefined; /// @is {array<string>}
	static index = undefined; /// @is {int}
	static hasNext = function() {
		return self.index < array_length(self.keys);
	}
	static next = function() {
		var _key = self.keys[self.index++];
		return { value: self.access[$ _key], key: _key }
	}
	self.access = _access;
	self.keys = variable_struct_get_names(_access);
	self.index = 0;
	static __class__ = mt_haxe_iterators_DynamicAccessKeyValueIterator;
}
globalvar haxe_iterators_DynamicAccessKeyValueIterator; haxe_iterators_DynamicAccessKeyValueIterator = method(undefined, mc_haxe_iterators_DynamicAccessKeyValueIterator);
mt_haxe_iterators_DynamicAccessKeyValueIterator.i_constructor = haxe_iterators_DynamicAccessKeyValueIterator;

#endregion

#region haxe.iterators.StringIterator

function mc_haxe_iterators_StringIterator(_s) constructor {
	// haxe_iterators_StringIterator(s:string)
	/// @ignore
	static s = undefined; /// @is {string}
	self.s = _s;
	static __class__ = mt_haxe_iterators_StringIterator;
}
globalvar haxe_iterators_StringIterator; haxe_iterators_StringIterator = method(undefined, mc_haxe_iterators_StringIterator);
mt_haxe_iterators_StringIterator.i_constructor = haxe_iterators_StringIterator;

#endregion

#region haxe.iterators.StringKeyValueIterator

function mc_haxe_iterators_StringKeyValueIterator(_s) constructor {
	// haxe_iterators_StringKeyValueIterator(s:string)
	/// @ignore
	static s = undefined; /// @is {string}
	self.s = _s;
	static __class__ = mt_haxe_iterators_StringKeyValueIterator;
}
globalvar haxe_iterators_StringKeyValueIterator; haxe_iterators_StringKeyValueIterator = method(undefined, mc_haxe_iterators_StringKeyValueIterator);
mt_haxe_iterators_StringKeyValueIterator.i_constructor = haxe_iterators_StringKeyValueIterator;

#endregion

#region haxe.boot
globalvar haxe_boot; haxe_boot = {}
/// @hint {bool} haxe_boot.isJS Whether currently exported to JavaScript
/// @hint haxe_boot.__trace(v:any, i:haxe_PosInfos)->void
haxe_boot.__trace = method(haxe_boot, function(_v, _i) {
	trace("js/Boot.hx:23:", _v);
});
/// @hint haxe_boot.get_class(o:T)->Class<T>
haxe_boot.get_class = method(haxe_boot, function(_o) {
	if (haxe_type_has(_o)) return haxe_type_get(_o);
	return undefined;
});
/// @hint haxe_boot.__string_rec(o:any, s:string)->string
haxe_boot.__string_rec = method(haxe_boot, function(_o, _s) {
	return Std.stringify(_o);
});
/// @hint haxe_boot.__interfLoop(cc:any, cl:any)->bool
haxe_boot.__interfLoop = method(haxe_boot, function(_cc, _cl) {
	throw string("Can't do");
});
/// @hint haxe_boot.__implements(o:any, iface:Class<any>)->bool
haxe_boot.__implements = method(haxe_boot, function(_o, _iface) {
	throw string("Can't do");
});
/// @hint haxe_boot.__instanceof(o:any, c:any)->bool
haxe_boot.__instanceof = method(haxe_boot, function(_o, _c) {
	return false;
});
/// @hint haxe_boot.__cast(o:any, t:any)->any
haxe_boot.__cast = method(haxe_boot, function(_o, _t) {
	return _o;
});
/// @hint haxe_boot.__nativeClassName(o:any)->string
haxe_boot.__nativeClassName = method(haxe_boot, function(_o) {
	return undefined;
});
/// @hint haxe_boot.__isNativeObj(o:any)->bool
haxe_boot.__isNativeObj = method(haxe_boot, function(_o) {
	return false;
});
/// @hint haxe_boot.__resolveNativeClass(name:string)->any
haxe_boot.__resolveNativeClass = method(haxe_boot, function(_name) {
	return undefined;
});
/// @hint haxe_boot.isClass(q:any)->bool
haxe_boot.isClass = method(haxe_boot, function(_q) {
	return false;
});
/// @hint haxe_boot.isEnum(q:any)->bool
haxe_boot.isEnum = method(haxe_boot, function(_q) {
	return false;
});
/// @hint {ds_map<string; Class<any>>} haxe_boot.resolveClassMap
/// @hint {ds_map<string; Enum<any>>} haxe_boot.resolveEnumMap

#endregion

#region sys.Http

function mc_sys_Http(_url) constructor {
	// sys_Http(url:string)
	/// @ignore
	static noShutdown = undefined; /// @is {bool}
	static cnxTimeout = undefined; /// @is {number}
	static responseHeaders = undefined; /// @is {Map<string; string>}
	static responseHeadersSameKey = undefined; /// @is {Map<string; array<string>>}
	static chunk_size = undefined; /// @is {int?}
	static chunk_buf = undefined; /// @is {haxe_io_Bytes}
	static file = undefined; /// @is {any}
	static request = function(_post) {
		if (false) show_debug_message(argument[0]);
		var __gthis = self;
		var _output = new haxe_io_BytesOutput();
		var _old = method(self, self.onError);
		var _err = false;
		self.onError = function(_e) {
			__gthis.responseBytes = new haxe_io_Bytes(_output.data);
			_err = true;
			__gthis.onError = _old;
			__gthis.onError(_e);
		}
		_post = _post || self.postBytes != undefined || self.postData != undefined;
		self.customRequest(_post, _output);
		if (!_err) self.success(new haxe_io_Bytes(_output.data));
	}
	static customRequest = function(_post, _api, _sock, _method) {
		if (false) show_debug_message(argument[3]);
		self.responseAsString = undefined;
		self.responseBytes = undefined;
		var _url_regexp = new EReg("^(https?://)?([a-zA-Z\\.0-9_-]+)(:[0-9]+)?(.*)$", "");
		if (!_url_regexp.match(self.url)) {
			self.onError("Invalid URL");
			return 0;
		}
		var _secure = _url_regexp.matched(1) == "https://";
		if (_sock == undefined) {
			if (_secure) throw new haxe_exceptions_NotImplementedException("Https support in haxe.Http is not implemented for this target", undefined, {
				fileName: "sys/Http.hx",
				lineNumber: 114,
				className: "sys.Http",
				methodName: "customRequest"
			}); else _sock = sys_net_Socket_create();
			sys_net_Socket_setTimeout(_sock, self.cnxTimeout);
		}
		var _host = _url_regexp.matched(2);
		var _portString = _url_regexp.matched(3);
		var _request = _url_regexp.matched(4);
		if (string_char_at(_request, 1) != "/") _request = "/" + _request;
		var _port = (_portString == undefined || _portString == "" ? (_secure ? 443 : 80) : Std.parseInt(string_substr(_portString, 1, string_length(_portString) - 1)));
		var _multipart = self.file != undefined;
		var _boundary = undefined;
		var _uri = undefined;
		if (_multipart) {
			_post = true;
			_boundary = Std.stringify(irandom(999)) + Std.stringify(irandom(999)) + Std.stringify(irandom(999)) + Std.stringify(irandom(999));
			while (string_length(_boundary) < 38) {
				_boundary = "-" + Std.stringify(_boundary);
			}
			var _b = new StringBuf();
			var __g = 0;
			var __g1 = self.params;
			while (__g < array_length(__g1)) {
				var _p = __g1[__g];
				__g++;
				_b.add("--");
				_b.add(_boundary);
				_b.add("\r\n");
				_b.add("Content-Disposition: form-data; name=\"");
				_b.add(_p.name);
				_b.add("\"");
				_b.add("\r\n");
				_b.add("\r\n");
				_b.add(_p.value);
				_b.add("\r\n");
			}
			_b.add("--");
			_b.add(_boundary);
			_b.add("\r\n");
			_b.add("Content-Disposition: form-data; name=\"");
			_b.add(self.file.param);
			_b.add("\"; filename=\"");
			_b.add(self.file.filename);
			_b.add("\"");
			_b.add("\r\n");
			_b.add("Content-Type: " + self.file.mimeType + "\r\n\r\n");
			_uri = _b.toString();
		} else {
			var __g = 0;
			var __g1 = self.params;
			while (__g < array_length(__g1)) {
				var _p = __g1[__g];
				__g++;
				if (_uri == undefined) _uri = ""; else _uri += "&";
				_uri += StringTools.urlEncode(_p.name) + "=" + StringTools.urlEncode("" + _p.value);
			}
		}
		var _b = new haxe_io_BytesOutput();
		if (_method != undefined) {
			_b.writeString(_method);
			_b.writeString(" ");
		} else if (_post) {
			_b.writeString("POST ");
		} else _b.writeString("GET ");
		if (sys_Http.PROXY != undefined) {
			_b.writeString("http://");
			_b.writeString(_host);
			if (_port != 80) {
				_b.writeString(":");
				_b.writeString("" + Std.stringify(_port));
			}
		}
		_b.writeString(_request);
		if (!_post && _uri != undefined) {
			if (string_pos_ext_haxe(_request, "?", 0) >= 0) _b.writeString("&"); else _b.writeString("?");
			_b.writeString(_uri);
		}
		_b.writeString(" HTTP/1.1\r\nHost: " + _host + "\r\n");
		if (self.postData != undefined) {
			self.postBytes = new haxe_io_Bytes(haxe_io__Bytes_BytesImpl.ofString(self.postData));
			self.postData = undefined;
		}
		if (self.postBytes != undefined) {
			_b.writeString("Content-Length: " + string(array_length(self.postBytes.b)) + "\r\n");
		} else if (_post && _uri != undefined) {
			if (_multipart || !Lambda.exists(self.headers, function(_h) {
				return _h.name == "Content-Type"
			})) {
				_b.writeString("Content-Type: ");
				if (_multipart) {
					_b.writeString("multipart/form-data");
					_b.writeString("; boundary=");
					_b.writeString(_boundary);
				} else _b.writeString("application/x-www-form-urlencoded");
				_b.writeString("\r\n");
			}
			if (_multipart) _b.writeString("Content-Length: " + string(string_length(_uri) + self.file.size + string_length(_boundary) + 6) + "\r\n"); else _b.writeString("Content-Length: " + string(string_length(_uri)) + "\r\n");
		}
		_b.writeString("Connection: close\r\n");
		var __g = 0;
		var __g1 = self.headers;
		while (__g < array_length(__g1)) {
			var _h = __g1[__g];
			__g++;
			_b.writeString(_h.name);
			_b.writeString(": ");
			_b.writeString(_h.value);
			_b.writeString("\r\n");
		}
		_b.writeString("\r\n");
		if (self.postBytes != undefined) {
			_b.writeBytes(self.postBytes, 0, array_length(self.postBytes.b));
		} else if (_post && _uri != undefined) {
			_b.writeString(_uri);
		}
		try {
			if (sys_Http.PROXY != undefined) sys_net_Socket_connect(_sock, sys_net_Host_create(sys_Http.PROXY.host), sys_Http.PROXY.port); else sys_net_Socket_connect(_sock, sys_net_Host_create(_host), _port);
			if (_multipart) self.writeBody(_b, self.file.io, self.file.size, _boundary, _sock); else self.writeBody(_b, undefined, 0, undefined, _sock);
			self.readHttpResponse(_api, _sock);
			sys_net_Socket_close(_sock);
		} catch (__g) {
			try {
				sys_net_Socket_close(_sock)
			} catch (__g1) {
				
			}
			self.onError(Std.stringify(__g.unwrap()));
		}
	}
	static writeBody = function(_body, _fileInput, _fileSize, _boundary, _sock) {
		if (_body != undefined) {
			var _bytes = new haxe_io_Bytes(_body.data);
			_sock[2/* output */].writeBytes(_bytes, 0, array_length(_bytes.b));
		}
		if (_boundary != undefined) {
			var _bufsize = 4096;
			var _buf = new haxe_io_Bytes(array_create(_bufsize, 0));
			while (_fileSize > 0) {
				var _size = (_fileSize > _bufsize ? _bufsize : _fileSize);
				var _len = 0;
				try {
					_len = _fileInput.readBytes(_buf, 0, _size)
				} catch (__g) {
					if (gml_internal_StdTypeImpl.is(__g.unwrap(), mt_haxe_io_Eof)) break; else throw __g
				}
				_sock[2/* output */].writeBytes(_buf, 0, _len);
				_fileSize -= _len;
			}
			_sock[2/* output */].writeString("\r\n");
			_sock[2/* output */].writeString("--");
			_sock[2/* output */].writeString(_boundary);
			_sock[2/* output */].writeString("--");
		}
	}
	static readHttpResponse = function(_api, _sock) {
		var _b = new haxe_io_BytesBuffer();
		var _k = 4;
		var _s = new haxe_io_Bytes(array_create(4, 0));
		sys_net_Socket_setTimeout(_sock, self.cnxTimeout);
		while (true) {
			var _p = 0;
			while (_p != _k) {
				try {
					_p += _sock[1/* input */].readBytes(_s, _p, _k - _p)
				} catch (__g) {
					if (!gml_internal_StdTypeImpl.is(__g.unwrap(), mt_haxe_io_Eof)) throw __g
				}
			}
			_b.addBytes(_s, 0, _k);
			switch (_k) {
				case 1:
					var _c = _s.b[0];
					if (_c == 10) break;
					if (_c == 13) _k = 3; else _k = 4;
					break;
				case 2:
					var _c1 = _s.b[1];
					if (_c1 == 10) {
						if (_s.b[0] == 13) break;
						_k = 4;
					} else if (_c1 == 13) {
						_k = 3;
					} else _k = 4;
					break;
				case 3:
					var _c2 = _s.b[2];
					if (_c2 == 10) {
						if (_s.b[1] != 13) {
							_k = 4;
						} else if (_s.b[0] != 10) {
							_k = 2;
						} else break;
					} else if (_c2 == 13) {
						if (_s.b[1] != 10 || _s.b[0] != 13) _k = 1; else _k = 3;
					} else _k = 4;
					break;
				case 4:
					var _c3 = _s.b[3];
					if (_c3 == 10) {
						if (_s.b[2] != 13) {
							continue;
						} else if (_s.b[1] != 10 || _s.b[0] != 13) {
							_k = 2;
						} else break;
					} else if (_c3 == 13) {
						if (_s.b[2] != 10 || _s.b[1] != 13) _k = 3; else _k = 1;
					}
					break;
			}
		}
		var __this = _b.getBytes();
		var _headers = string_split(haxe_io__Bytes_BytesImpl.getString(__this.b, 0, array_length(__this.b)), "\r\n");
		var _rp = string_split(gml_internal_ArrayImpl.shift(_headers), " ");
		var _status = Std.parseInt(_rp[1]);
		if (_status == 0 || _status == undefined) throw string("Response status error");
		array_pop(_headers);
		array_pop(_headers);
		self.responseHeaders = new haxe_ds_StringMap();
		var _size = undefined;
		var _chunked = false;
		var __g = 0;
		while (__g < array_length(_headers)) {
			var _hline = _headers[__g];
			__g++;
			var _a = string_split(_hline, ": ");
			var _hname = gml_internal_ArrayImpl.shift(_a);
			var _hval = (array_length(_a) == 1 ? _a[0] : gml_internal_ArrayImpl.join(_a, ": "));
			_hval = StringTools.ltrim(StringTools.rtrim(_hval));
			var _previousValue = self.responseHeaders.obj[$ _hname];
			if (_previousValue != undefined) {
				if (self.responseHeadersSameKey == undefined) self.responseHeadersSameKey = new haxe_ds_StringMap();
				var _array1 = self.responseHeadersSameKey.obj[$ _hname];
				if (_array1 == undefined) {
					_array1 = [];
					array_push(_array1, _previousValue);
					self.responseHeadersSameKey.obj[$ _hname] = _array1;
				}
				array_push(_array1, _hval);
			}
			self.responseHeaders.obj[$ _hname] = _hval;
			switch (string_lower(_hname)) {
				case "content-length": _size = Std.parseInt(_hval); break;
				case "transfer-encoding": _chunked = string_lower(_hval) == "chunked"; break;
			}
		}
		self.onStatus(_status);
		var _chunk_re = new EReg("^([0-9A-Fa-f]+)[ ]*\r\n", "m");
		self.chunk_size = undefined;
		self.chunk_buf = undefined;
		var _bufsize = 1024;
		var _buf = new haxe_io_Bytes(array_create(_bufsize, 0));
		if (_chunked) {
			try {
				while (true) {
					if (!self.readChunk(_chunk_re, _api, _buf, _sock[1/* input */].readBytes(_buf, 0, _bufsize))) break;
				}
			} catch (__g) {
				if (gml_internal_StdTypeImpl.is(__g.unwrap(), mt_haxe_io_Eof)) throw string("Transfer aborted"); else throw __g
			}
		} else if (_size == undefined) {
			if (!self.noShutdown) sys_net_Socket_shutdown(_sock, false, true);
			try {
				while (true) {
					var _len = _sock[1/* input */].readBytes(_buf, 0, _bufsize);
					if (_len == 0) break;
					_api.writeBytes(_buf, 0, _len);
				}
			} catch (__g) {
				if (!gml_internal_StdTypeImpl.is(__g.unwrap(), mt_haxe_io_Eof)) throw __g
			}
		} else {
			_api.prepare(_size);
			try {
				while (_size > 0) {
					var _len = _sock[1/* input */].readBytes(_buf, 0, (_size > _bufsize ? _bufsize : _size));
					_api.writeBytes(_buf, 0, _len);
					_size -= _len;
				}
			} catch (__g) {
				if (gml_internal_StdTypeImpl.is(__g.unwrap(), mt_haxe_io_Eof)) throw string("Transfer aborted"); else throw __g
			}
		}
		if (_chunked && (self.chunk_size != undefined || self.chunk_buf != undefined)) throw string("Invalid chunk");
		if (_status < 200 || _status >= 400) throw string("Http Error #" + Std.stringify(_status));
		_api.close();
	}
	static readChunk = function(_chunk_re, _api, _buf, _len) {
		if (self.chunk_size == undefined) {
			if (self.chunk_buf != undefined) {
				var _b = new haxe_io_BytesBuffer();
				_b.add(self.chunk_buf);
				_b.addBytes(_buf, 0, _len);
				_buf = _b.getBytes();
				_len += array_length(self.chunk_buf.b);
				self.chunk_buf = undefined;
			}
			if (_chunk_re.match(haxe_io__Bytes_BytesImpl.getString(_buf.b, 0, array_length(_buf.b)))) {
				var _p = _chunk_re.matchedPos();
				if (_p.len <= _len) {
					self.chunk_size = Std.parseInt("0x" + _chunk_re.matched(1));
					if (self.chunk_size == 0) {
						self.chunk_size = undefined;
						self.chunk_buf = undefined;
						return false;
					}
					_len -= _p.len;
					return self.readChunk(_chunk_re, _api, new haxe_io_Bytes(gml_internal_ArrayImpl.slice(_buf.b, _p.len, _len)), _len);
				}
			}
			if (_len > 10) {
				self.onError("Invalid chunk");
				return false;
			}
			self.chunk_buf = new haxe_io_Bytes(gml_internal_ArrayImpl.slice(_buf.b, 0, _len));
			return true;
		}
		if (self.chunk_size > _len) {
			self.chunk_size -= _len;
			_api.writeBytes(_buf, 0, _len);
			return true;
		}
		var _end = self.chunk_size + 2;
		if (_len >= _end) {
			if (self.chunk_size > 0) _api.writeBytes(_buf, 0, self.chunk_size);
			_len -= _end;
			self.chunk_size = undefined;
			if (_len == 0) return true;
			return self.readChunk(_chunk_re, _api, new haxe_io_Bytes(gml_internal_ArrayImpl.slice(_buf.b, _end, _len)), _len);
		}
		if (self.chunk_size > 0) _api.writeBytes(_buf, 0, self.chunk_size);
		self.chunk_size -= _len;
		return true;
	}
	static url = undefined; /// @is {string}
	static responseBytes = undefined; /// @is {haxe_io_Bytes?}
	static responseAsString = undefined; /// @is {string?}
	static postData = undefined; /// @is {string?}
	static postBytes = undefined; /// @is {haxe_io_Bytes?}
	static headers = undefined; /// @is {array<haxe_http__HttpBase_StringKeyValue>}
	static params = undefined; /// @is {array<haxe_http__HttpBase_StringKeyValue>}
	static emptyOnData = undefined; /// @is {function<string;void>}
	static addParameter = method(undefined, haxe_http_HttpBase_addParameter);
	static onData = method(undefined, haxe_http_HttpBase_onData);
	static onBytes = method(undefined, haxe_http_HttpBase_onBytes);
	static onError = method(undefined, haxe_http_HttpBase_onError);
	static onStatus = method(undefined, haxe_http_HttpBase_onStatus);
	static hasOnData = method(undefined, haxe_http_HttpBase_hasOnData);
	static success = method(undefined, haxe_http_HttpBase_success);
	static get_responseData = method(undefined, haxe_http_HttpBase_get_responseData);
	self.cnxTimeout = 10;
	method(self, haxe_http_HttpBase_new)(_url);
	static __class__ = mt_sys_Http;
}
globalvar sys_Http; sys_Http = method(undefined, mc_sys_Http);
mt_sys_Http.i_constructor = sys_Http;
/// @hint {any} sys_Http.PROXY

#endregion

// CapstoneLogger:
CapstoneLogger.prdUrl = "https://integration.centerforgamescience.org/cgs/apps/games/v2/index.php/";
// mathnf:
mathnf.not_a_number = mathnf.init(0, 0);
mathnf.pos_infinity = mathnf.init(1, 0);
mathnf.neg_infinity = mathnf.init(-1, 0);
// Reflect:
Reflect.compare_1 = ds_grid_create(1, 2);
// StringBuf:
StringBuf.buffer = buffer_create(128, buffer_grow, 1);
// haxe.SysTools:
haxe_SysTools.winMetaCharacters = [32, 40, 41, 37, 33, 94, 34, 60, 62, 38, 124, 10, 13, 44, 59];
// StringTools:
StringTools.urlEncode_in = -1;
StringTools.urlEncode_out = -1;
StringTools.urlEncode_esc = undefined;
StringTools.urlEncode_hex = undefined;
StringTools.winMetaCharacters = haxe_SysTools.winMetaCharacters;
/// @typedef {array} gml_gpu_VertexFormatData
// gml.gpu.VertexFormatData:
globalvar gml_gpu_VertexFormatData_Color; gml_gpu_VertexFormatData_Color = [gml_gpu_VertexFormatData.Color]; /// @is {gml_gpu_VertexFormatData}
globalvar gml_gpu_VertexFormatData_Pos2d; gml_gpu_VertexFormatData_Pos2d = [gml_gpu_VertexFormatData.Pos2d]; /// @is {gml_gpu_VertexFormatData}
globalvar gml_gpu_VertexFormatData_Pos3d; gml_gpu_VertexFormatData_Pos3d = [gml_gpu_VertexFormatData.Pos3d]; /// @is {gml_gpu_VertexFormatData}
globalvar gml_gpu_VertexFormatData_TexCoord; gml_gpu_VertexFormatData_TexCoord = [gml_gpu_VertexFormatData.TexCoord]; /// @is {gml_gpu_VertexFormatData}
globalvar gml_gpu_VertexFormatData_Normal; gml_gpu_VertexFormatData_Normal = [gml_gpu_VertexFormatData.Normal]; /// @is {gml_gpu_VertexFormatData}
// gml.internal.ArrayImpl:
gml_internal_ArrayImpl.join_buf = undefined;
// gml.internal.NativeConstructorInvoke:
gml_internal_NativeConstructorInvoke.funcs = (function() {
	var _with0 = function(_ctr, _w) {
		return new _ctr()
	}
	var _with1 = function(_ctr, _w) {
		return new _ctr(_w[0])
	}
	var _with2 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1])
	}
	var _with3 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2])
	}
	var _with4 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3])
	}
	var _with5 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4])
	}
	var _with6 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5])
	}
	var _with7 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6])
	}
	var _with8 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7])
	}
	var _with9 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8])
	}
	var _with10 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9])
	}
	var _with11 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10])
	}
	var _with12 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10], _w[11])
	}
	var _with13 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10], _w[11], _w[12])
	}
	var _with14 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10], _w[11], _w[12], _w[13])
	}
	var _with15 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10], _w[11], _w[12], _w[13], _w[14])
	}
	var _with16 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10], _w[11], _w[12], _w[13], _w[14], _w[15])
	}
	var _with17 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10], _w[11], _w[12], _w[13], _w[14], _w[15], _w[16])
	}
	var _with18 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10], _w[11], _w[12], _w[13], _w[14], _w[15], _w[16], _w[17])
	}
	var _with19 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10], _w[11], _w[12], _w[13], _w[14], _w[15], _w[16], _w[17], _w[18])
	}
	var _with20 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10], _w[11], _w[12], _w[13], _w[14], _w[15], _w[16], _w[17], _w[18], _w[19])
	}
	var _with21 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10], _w[11], _w[12], _w[13], _w[14], _w[15], _w[16], _w[17], _w[18], _w[19], _w[20])
	}
	var _with22 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10], _w[11], _w[12], _w[13], _w[14], _w[15], _w[16], _w[17], _w[18], _w[19], _w[20], _w[21])
	}
	var _with23 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10], _w[11], _w[12], _w[13], _w[14], _w[15], _w[16], _w[17], _w[18], _w[19], _w[20], _w[21], _w[22])
	}
	var _with24 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10], _w[11], _w[12], _w[13], _w[14], _w[15], _w[16], _w[17], _w[18], _w[19], _w[20], _w[21], _w[22], _w[23])
	}
	var _with25 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10], _w[11], _w[12], _w[13], _w[14], _w[15], _w[16], _w[17], _w[18], _w[19], _w[20], _w[21], _w[22], _w[23], _w[24])
	}
	var _with26 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10], _w[11], _w[12], _w[13], _w[14], _w[15], _w[16], _w[17], _w[18], _w[19], _w[20], _w[21], _w[22], _w[23], _w[24], _w[25])
	}
	var _with27 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10], _w[11], _w[12], _w[13], _w[14], _w[15], _w[16], _w[17], _w[18], _w[19], _w[20], _w[21], _w[22], _w[23], _w[24], _w[25], _w[26])
	}
	var _with28 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10], _w[11], _w[12], _w[13], _w[14], _w[15], _w[16], _w[17], _w[18], _w[19], _w[20], _w[21], _w[22], _w[23], _w[24], _w[25], _w[26], _w[27])
	}
	var _with29 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10], _w[11], _w[12], _w[13], _w[14], _w[15], _w[16], _w[17], _w[18], _w[19], _w[20], _w[21], _w[22], _w[23], _w[24], _w[25], _w[26], _w[27], _w[28])
	}
	var _with30 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10], _w[11], _w[12], _w[13], _w[14], _w[15], _w[16], _w[17], _w[18], _w[19], _w[20], _w[21], _w[22], _w[23], _w[24], _w[25], _w[26], _w[27], _w[28], _w[29])
	}
	var _with31 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10], _w[11], _w[12], _w[13], _w[14], _w[15], _w[16], _w[17], _w[18], _w[19], _w[20], _w[21], _w[22], _w[23], _w[24], _w[25], _w[26], _w[27], _w[28], _w[29], _w[30])
	}
	var _with32 = function(_ctr, _w) {
		return new _ctr(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7], _w[8], _w[9], _w[10], _w[11], _w[12], _w[13], _w[14], _w[15], _w[16], _w[17], _w[18], _w[19], _w[20], _w[21], _w[22], _w[23], _w[24], _w[25], _w[26], _w[27], _w[28], _w[29], _w[30], _w[31])
	}
	return [_with0, _with1, _with2, _with3, _with4, _with5, _with6, _with7, _with8, _with9, _with10, _with11, _with12, _with13, _with14, _with15, _with16, _with17, _with18, _with19, _with20, _with21, _with22, _with23, _with24, _with25, _with26, _with27, _with28, _with29, _with30, _with31, _with32];
})();
// gml.internal.NativeFunctionInvoke:
gml_internal_NativeFunctionInvoke.funcs = (function() {
	var _with0 = function(_fn, _w) {
		return _fn()
	}
	var _with1 = function(_fn, _w) {
		return _fn(_w[0])
	}
	var _with2 = function(_fn, _w) {
		return _fn(_w[0], _w[1])
	}
	var _with3 = function(_fn, _w) {
		return _fn(_w[0], _w[1], _w[2])
	}
	var _with4 = function(_fn, _w) {
		return _fn(_w[0], _w[1], _w[2], _w[3])
	}
	var _with5 = function(_fn, _w) {
		return _fn(_w[0], _w[1], _w[2], _w[3], _w[4])
	}
	var _with6 = function(_fn, _w) {
		return _fn(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5])
	}
	var _with7 = function(_fn, _w) {
		return _fn(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6])
	}
	var _with8 = function(_fn, _w) {
		return _fn(_w[0], _w[1], _w[2], _w[3], _w[4], _w[5], _w[6], _w[7])
	}
	return [_with0, _with1, _with2, _with3, _with4, _with5, _with6, _with7, _with8];
})();
// gml.io._Buffer.BufferImpl:
gml_io__Buffer_BufferImpl.bufferSurfaceFunctionsHave3args = gml_io__Buffer_BufferImpl.bufferSurfaceFunctionsHave3args_init();
gml_io__Buffer_BufferImpl.getSurface = gml_io__Buffer_BufferImpl.getSetSurface_init(method(undefined, buffer_get_surface));
gml_io__Buffer_BufferImpl.setSurface = gml_io__Buffer_BufferImpl.getSetSurface_init(method(undefined, buffer_set_surface));
// haxe._CallStack.CallStack_Impl_:
haxe__CallStack_CallStack_Impl_.toString_buf = -1;
// haxe.ds.BasicMap:
haxe_ds_BasicMap.toString_buf = -1;
// haxe.io._Bytes.BytesImpl:
haxe_io__Bytes_BytesImpl.buffer = buffer_create(128, buffer_grow, 1);
haxe_io__Bytes_BytesImpl.ofHex_mapper = undefined;
// haxe.io.BytesBuffer:
haxe_io_BytesBuffer.gmlBuffer = buffer_create(128, buffer_grow, 1);
// haxe.io.Output:
haxe_io_Output.buffer = buffer_create(32, buffer_grow, 1);
// haxe.io.Input:
haxe_io_Input.buffer = buffer_create(32, buffer_grow, 1);
// haxe.boot:
haxe_boot.isJS = os_browser != browser_not_a_browser;
haxe_boot.resolveClassMap = (function() {
	var _m = ds_map_create();
	ds_map_set(_m, "Array", mt_Array);
	ds_map_set(_m, "CapstoneLogger", mt_CapstoneLogger);
	ds_map_set(_m, "Date", mt_Date);
	ds_map_set(_m, "EReg", mt_EReg);
	ds_map_set(_m, "IntIterator", mt_IntIterator);
	ds_map_set(_m, "string", mt_string);
	ds_map_set(_m, "StringBuf", mt_StringBuf);
	ds_map_set(_m, "haxe.class", mt_haxe_class);
	ds_map_set(_m, "haxe.enum", mt_haxe_enum);
	ds_map_set(_m, "gml.ds.GridIterator", mt_gml_ds_GridIterator);
	ds_map_set(_m, "haxe.Exception", mt_haxe_Exception);
	ds_map_set(_m, "haxe.Timer", mt_haxe_Timer);
	ds_map_set(_m, "haxe.crypto.Md5", mt_haxe_crypto_Md5);
	ds_map_set(_m, "haxe.ds.BasicMap", mt_haxe_ds_BasicMap);
	ds_map_set(_m, "haxe.ds.BasicMapIterator", mt_haxe_ds_BasicMapIterator);
	ds_map_set(_m, "haxe.ds.BasicMapKeyValueIterator", mt_haxe_ds_BasicMapKeyValueIterator);
	ds_map_set(_m, "haxe.ds.IntMap", mt_haxe_ds_IntMap);
	ds_map_set(_m, "haxe.ds.StringMap", mt_haxe_ds_StringMap);
	ds_map_set(_m, "haxe.exceptions.PosException", mt_haxe_exceptions_PosException);
	ds_map_set(_m, "haxe.exceptions.NotImplementedException", mt_haxe_exceptions_NotImplementedException);
	ds_map_set(_m, "haxe.http.HttpBase", mt_haxe_http_HttpBase);
	ds_map_set(_m, "haxe.io.Bytes", mt_haxe_io_Bytes);
	ds_map_set(_m, "haxe.io.BytesBuffer", mt_haxe_io_BytesBuffer);
	ds_map_set(_m, "haxe.io.Output", mt_haxe_io_Output);
	ds_map_set(_m, "haxe.io.BytesOutput", mt_haxe_io_BytesOutput);
	ds_map_set(_m, "haxe.io.Eof", mt_haxe_io_Eof);
	ds_map_set(_m, "haxe.io.Input", mt_haxe_io_Input);
	ds_map_set(_m, "haxe.iterators.ArrayIterator", mt_haxe_iterators_ArrayIterator);
	ds_map_set(_m, "haxe.iterators.DynamicAccessIterator", mt_haxe_iterators_DynamicAccessIterator);
	ds_map_set(_m, "haxe.iterators.DynamicAccessKeyValueIterator", mt_haxe_iterators_DynamicAccessKeyValueIterator);
	ds_map_set(_m, "haxe.iterators.StringIterator", mt_haxe_iterators_StringIterator);
	ds_map_set(_m, "haxe.iterators.StringKeyValueIterator", mt_haxe_iterators_StringKeyValueIterator);
	ds_map_set(_m, "sys.Http", mt_sys_Http);
	return _m;
})();
haxe_boot.resolveEnumMap = (function() {
	var _m = ds_map_create();
	ds_map_set(_m, "ValueType", mt_ValueType);
	ds_map_set(_m, "haxe.StackItem", mt_haxe_StackItem);
	ds_map_set(_m, "haxe.io.Error", mt_haxe_io_Error);
	return _m;
})();
// sys.Http:
sys_Http.PROXY = undefined;


/// @typedef {array<int>} haxe_io_BytesData
/// @typedef {array<T>} haxe_ds__Vector_VectorData
/// @typedef {any} haxe__Int64___Int64
/// @typedef {sys_Http} haxe_Http
/// @typedef {any} KeyValueIterator
/// @typedef {haxe_IMap<K; V>} IMap