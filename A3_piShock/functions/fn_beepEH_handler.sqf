/*
    Author: Ken The Nugget

    Description:
    Handles Toggle/Enable/Disable EH for PiShock Beep Command.

    Parameter(s):
    0: Integer (0 - 2) - Selection Toggle/Enable/Disable.

    Return(s):
    None

    Example:
    [0] call NUG_fnc_beepEH_handler
*/

params ["_state"];

switch (_state) do {
	case 0: { // Toggle
		if (player getVariable "NUG_beepEHIndex" < 0) then {
			[1] call NUG_fnc_beepEH_handler;
		} else {
			[2] call NUG_fnc_beepEH_handler;
		};
	};
	
	case 1: { // Enable
		// Remove old EH if exists
		if (player getVariable "NUG_beepEHIndex" >= 0)  then {
			player removeEventHandler [player getVariable "NUG_beepEHType", player getVariable "NUG_beepEHIndex"];
			player setVariable ["NUG_beepEHIndex", -1];
			player setVariable ["NUG_beepEHType", -1];
		};

		// Add new EH
		_EHIndex = player addEventHandler [NUG_beep_handler, {
			[round NUG_beep_intensity, round NUG_beep_duration] call NUG_fnc_beep;
		}];

		player setVariable ["NUG_beepEHIndex", _EHIndex];
		player setVariable ["NUG_beepEHType", NUG_vibrate_handler];

		// Display Result
		systemChat format ["Beeps enabled - Event: %1, Duration: %2", NUG_beep_handler, round NUG_beep_duration];
	};
	
	case 2: { // Disable
		// Remove EH
		if (player getVariable "NUG_beepEHIndex" >= 0)  then {
			player removeEventHandler [player getVariable "NUG_beepEHType", player getVariable "NUG_beepEHIndex"];
			player setVariable ["NUG_beepEHIndex", -1];
			player setVariable ["NUG_beepEHType", -1];
			systemChat "Beeps disabled";
		};
	};
};