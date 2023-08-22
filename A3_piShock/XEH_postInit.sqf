player setVariable ["NUG_lastShockTime", 0];
player setVariable ["NUG_lastVibrateTime", 0];
player setVariable ["NUG_lastBeepTime", 0];

player setVariable ["NUG_shockEHIndex", nil];
player setVariable ["NUG_shockEHType", nil];

player setVariable ["NUG_vibrateEHIndex", nil];
player setVariable ["NUG_vibrateEHType", nil];

player setVariable ["NUG_beepEHIndex", nil];
player setVariable ["NUG_beepEHType", nil];

player setVariable ["NUG_debugEHIndex", nil];

player setVariable ["NUG_killswitch", true];


if (!NUG_piShock_enable) exitWith {
	player setVariable ["NUG_killswitch", false];
};

if (NUG_shock_enabled) then {
	[0] call NUG_fnc_init_shockEH;
};

if (NUG_vibrate_enabled) then {
	[0] call NUG_fnc_init_vibrateEH;
};

if (NUG_beep_enabled) then {
	[0] call NUG_fnc_init_beepEH;
};

if (NUG_response_display) then {
	[0] call NUG_init_APIResponseDisplay{};
};