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

switch (_state) {
	case 0: { // Toggle
		if (isNil (player getVariable "NUG_vibrateEHIndex")) then {
			[1] call NUG_fnc_vibrateEH_handler;
		} else {
			[2] call NUG_fnc_vibrateEH_handler;
		}
	
	case 1: { // Enable
		// Remove old EH if exists
		if (!isNil (player getVariable "NUG_vibrateEHIndex")) then {
			player removeEventHandler [player getVariable "NUG_vibrateEHType", player getVariable "NUG_vibrateEHIndex"];
			player setVariable ["NUG_vibrateEHIndex", nil];
			player setVariable ["NUG_vibrateEHType", nil];
		}

		// Add new EH
		_EHIndex = player addEventHandler [NUG_vibrate_handler, {
			[NUG_vibrate_intensity, NUG_vibrate_duration] call NUG_fnc_vibrate;
		}];

		player setVariable ["NUG_vibrateEHIndex", _EHIndex];
		player setVariable ["NUG_vibrateEHType", NUG_vibrate_handler];

		// Display Result
		systemChat format ["Vibrations enabled on: %1, Intensity: %2, Duration: %3", NUG_vibrate_handler, NUG_vibrate_intensity, NUG_vibrate_duration];
	}
	
	case 2: { // Disable
		// Remove EH
		if (!isNil (player getVariable "NUG_vibrateEHIndex")) then {
			player removeEventHandler [player getVariable "NUG_vibrateEHType", player getVariable "NUG_vibrateEHIndex"];
			player setVariable ["NUG_vibrateEHIndex", nil];
			player setVariable ["NUG_vibrateEHType", nil];
			systemChat format ["Vibrations disabled"];
		}
	}
}