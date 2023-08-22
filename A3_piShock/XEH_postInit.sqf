player setVariable ["NUG_lastShockTime", 0];
player setVariable ["NUG_lastVibrateTime", 0];
player setVariable ["NUG_lastBeepTime", 0];
player setVariable ["NUG_shockEHIndex", nil];
player setVariable ["NUG_vibrateEHIndex", nil];
player setVariable ["NUG_beepEHIndex", nil];
player setVariable ["NUG_debugEHIndex", nil];

if (!NUG_piShock_enable) exitWith {};

if (NUG_shock_enabled) then {
	_EHIndex = player addEventHandler [NUG_shock_handler, {
		[NUG_shock_intensity, NUG_shock_duration] call NUG_fnc_shock;
	}];
	player setVariable ["NUG_shockEHIndex", _EHIndex];
	systemChat format ["Shocks enabled on: %1", NUG_shock_handler];
};

if (NUG_vibrate_enabled) then {
	_EHIndex = player addEventHandler [NUG_vibrate_handler, {
		[NUG_vibrate_intensity, NUG_vibrate_duration] call NUG_fnc_vibrate;
	}];
	player setVariable ["NUG_vibrateEHIndex", _EHIndex];
	systemChat format ["Vibrate enabled on: %1", NUG_vibrate_handler];
};

if (NUG_beep_enabled) then {
	_EHIndex = player addEventHandler [NUG_beep_handler, {
		[NUG_beep_duration] call NUG_fnc_beep;
	}];
	player setVariable ["NUG_beepEHIndex", _EHIndex];
	systemChat format ["Beep enabled on: %1", NUG_beep_handler];
};

if (NUG_response_display) then {
	_EHIndex = addMissionEventHandler ["ExtensionCallback", {
		params ["_name", "_function", "_data"];
		if (_name != "arma3_pishock") exitWith {};
		systemChat format ["%1 Command: %2", _function, _data];
	}];
	player setVariable ["NUG_debugEHIndex", _EHIndex];
	systemChat format ["API response enabled"];
};