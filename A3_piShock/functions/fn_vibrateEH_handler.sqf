/*
    Author: Ken The Nugget

    Description:
    Handles Toggle/Enable/Disable EH for PiShock Vibrate Command.

    Parameter(s):
    0: Integer (0 - 2) - Selection Toggle/Enable/Disable.

    Return(s):
    None

    Example:
    [0] call NUG_fnc_vibrateEH_handler
*/

params ["_state"];

switch (_state) do {
	case 0: { // Toggle
		if (player getVariable "NUG_vibrateEHIndex" < 0) then {
			[1] call NUG_fnc_vibrateEH_handler;
		} else {
			[2] call NUG_fnc_vibrateEH_handler;
		};
	};
	
	case 1: { // Enable
		// Remove old EH if exists
		if (player getVariable "NUG_vibrateEHIndex" >= 0) then {
			player removeEventHandler [player getVariable "NUG_vibrateEHType", player getVariable "NUG_vibrateEHIndex"];
			player setVariable ["NUG_vibrateEHIndex", -1];
			player setVariable ["NUG_vibrateEHType", -1];
		};

		// Add new EH
		_EHIndex = player addEventHandler [NUG_vibrate_handler, {
			[round NUG_vibrate_intensity, round NUG_vibrate_duration] call NUG_fnc_vibrate;
		}];

		player setVariable ["NUG_vibrateEHIndex", _EHIndex];
		player setVariable ["NUG_vibrateEHType", NUG_vibrate_handler];

		// Display Result
		systemChat format ["Vibrations enabled - Event: %1, Intensity: %2, Duration: %3", NUG_vibrate_handler, round NUG_vibrate_intensity, round NUG_vibrate_duration];
	};
	
	case 2: { // Disable
		// Remove EH
		if (player getVariable "NUG_vibrateEHIndex" >= 0) then {
			player removeEventHandler [player getVariable "NUG_vibrateEHType", player getVariable "NUG_vibrateEHIndex"];
			player setVariable ["NUG_vibrateEHIndex", -1];
			player setVariable ["NUG_vibrateEHType", -1];
			systemChat "Vibrations disabled";
		};
	};
};