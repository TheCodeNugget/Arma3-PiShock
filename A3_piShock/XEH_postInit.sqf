if (!hasInterface) exitWith {}; // No need for server or headless to run this
#include "CBA_Keybinds.sqf"

0 spawn {
	waitUntil { sleep 1; not isNull player };
	
	player setVariable ["A3PS_lastShockTime", 0];
	player setVariable ["A3PS_lastVibrateTime", 0];
	player setVariable ["A3PS_lastBeepTime", 0];

	player setVariable ["A3PS_killswitch", false];
	player setVariable ["A3PS_allowRE", false];
	
	player setVariable ["A3PS_debugEHIndex", -1];

	if (A3PS_piShock_enable) then {
		[1] call A3PS_fnc_killswitch_handler;
	} else {
		[2] call A3PS_fnc_killswitch_handler;
		if (true) exitWith {};
	};

	if (A3PS_allow_remoteExec) then {
		[1] call A3PS_fnc_allowRE_handler;
	} else {
		[2] call A3PS_fnc_allowRE_handler;
	};

	if (A3PS_response_display) then {
		[0] call A3PS_fnc_APIResponseDisplay_handler;
	};
};