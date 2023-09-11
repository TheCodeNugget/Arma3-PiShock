/*
    Author: Ken The Nugget

    Description:
    Handles Toggle/Enable/Disable EH for PiShock Shock Command.

    Parameter(s):
    0: Integer (0 - 2) - Selection Toggle/Enable/Disable.

    Return(s):
    None

    Example:
    [0] call NUG_fnc_shockEH_handler
*/

params ["_state"];

switch (_state) do {
	case 0: { // Toggle
		if (player getVariable "NUG_shockEHIndex" < 0)  then {
			[1] call NUG_fnc_shockEH_handler;
		} else {
			[2] call NUG_fnc_shockEH_handler;
		};
	};
	
	case 1: { // Enable
		// Remove old EH if exists
		if (player getVariable "NUG_shockEHIndex" >= 0) then {
			player removeEventHandler [player getVariable "NUG_shockEHType", player getVariable "NUG_shockEHIndex"];
			player setVariable ["NUG_shockEHIndex", -1];
			player setVariable ["NUG_shockEHType", -1];
		};

		// Add new EH
		_EHIndex = player addEventHandler [NUG_shock_handler, {
			[round NUG_shock_intensity, round NUG_shock_duration] call NUG_fnc_shock;
		}];

		player setVariable ["NUG_shockEHIndex", _EHIndex];
		player setVariable ["NUG_shockEHType", NUG_shock_handler];

		// Display Result
		systemChat format ["Shocks enabled - Event: %1, Intensity: %2, Duration: %3", NUG_shock_handler, round NUG_shock_intensity, round NUG_shock_duration];
	};
	
	case 2: { // Disable
		// Remove EH
		if (player getVariable "NUG_shockEHIndex" >= 0) then {
			player removeEventHandler [player getVariable "NUG_shockEHType", player getVariable "NUG_shockEHIndex"];
			player setVariable ["NUG_shockEHIndex", -1];
			player setVariable ["NUG_shockEHType", -1];
			systemChat "Shocks disabled";
		};
	};
	
	default {};
};