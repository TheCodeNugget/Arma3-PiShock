/*
    Author: Ken The Nugget

    Description:
    Handles Toggle/Enable/Disable EH for API Response Display.

    Parameter(s):
    0: Integer (0 - 2) - Selection Toggle/Enable/Disable.

    Return(s):
    None

    Example:
    [0] call NUG_fnc_APIResponseDisplay_handler
*/

params ["_state"];

switch (_state) {
	case 0: { // Toggle
		if (isNil (player getVariable "NUG_debugEHIndex")) then {
			[1] call NUG_fnc_APIResponseDisplay_handler;
		} else {
			[2] call NUG_fnc_APIResponseDisplay_handler;
		}
	
	case 1: { // Enable
		// Remove old EH if exists
		if (!isNil (player getVariable "NUG_debugEHIndex")) then {
			removeMissionEventHandler ["ExtensionCallback", player getVariable "NUG_debugEHIndex"];
			player setVariable ["NUG_debugEHIndex", nil];
		}

		// Add new EH
		_EHIndex = addMissionEventHandler ["ExtensionCallback", {
			params ["_name", "_function", "_data"];
			if (_name != "arma3_pishock") exitWith {};
			systemChat format ["%1 Command: %2", _function, _data];
		}];

		player setVariable ["NUG_debugEHIndex", _EHIndex];

		// Display Result
		systemChat format ["API response enabled"];
	}
	
	case 2: { // Disable
		// Remove EH
		if (!isNil (player getVariable "NUG_debugEHIndex")) then {
			removeMissionEventHandler ["ExtensionCallback", player getVariable "NUG_debugEHIndex"];
			player setVariable ["NUG_debugEHIndex", nil];
			systemChat format ["API response disabled"];
		}
	}
}