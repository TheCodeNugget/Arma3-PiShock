if (!hasInterface) exitWith {}; // No need for server or headless to run this
#include "CBA_Keybinds.sqf"

player setVariable ["NUG_lastShockTime", 0];
player setVariable ["NUG_lastVibrateTime", 0];
player setVariable ["NUG_lastBeepTime", 0];

player setVariable ["NUG_shockEHIndex", -1];
player setVariable ["NUG_shockEHType", -1];

player setVariable ["NUG_vibrateEHIndex", -1];
player setVariable ["NUG_vibrateEHType", -1];

player setVariable ["NUG_beepEHIndex", -1];
player setVariable ["NUG_beepEHType", -1];

player setVariable ["NUG_debugEHIndex", -1];


if (NUG_piShock_enable) then {
	[1] call NUG_fnc_killswitch_handler;
} else {
	[2] call NUG_fnc_killswitch_handler;
	if (true) exitWith {};
};

if (NUG_shock_enabled) then {
	[0] call NUG_fnc_shockEH_handler;
};

if (NUG_vibrate_enabled) then {
	[0] call NUG_fnc_vibrateEH_handler;
};

if (NUG_beep_enabled) then {
	[0] call NUG_fnc_beepEH_handler;
};

if (NUG_response_display) then {
	[0] call NUG_fnc_APIResponseDisplay_handler;
};