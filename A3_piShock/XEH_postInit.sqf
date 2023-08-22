player setVariable ["NUG_lastShockTime", 0];
player setVariable ["NUG_lastVibrateTime", 0];
player setVariable ["NUG_lastBeepTime", 0];
player setVariable ["NUG_shockEHIndex", nil];
player setVariable ["NUG_vibrateEHIndex", nil];
player setVariable ["NUG_beepEHIndex", nil];

if (NUG_shock_enabled) then {
	_EHIndex = player addEventHandler [NUG_shock_handler, {
		[NUG_shock_intensity, NUG_shock_duration] call NUG_fnc_shock;
	}];
	player setVariable ["NUG_shockEHIndex", _EHIndex];
};

if (NUG_vibrate_enabled) then {
	_EHIndex = player addEventHandler [NUG_vibrate_handler, {
		[NUG_vibrate_intensity, NUG_vibrate_duration] call NUG_fnc_vibrate;
	}];
	player setVariable ["NUG_vibrateEHIndex", _EHIndex];
};

if (NUG_beep_enabled) then {
	_EHIndex = player addEventHandler [NUG_beep_handler, {
		[NUG_beep_duration] call NUG_fnc_beep;
	}];
	player setVariable ["NUG_beepEHIndex", _EHIndex];
};