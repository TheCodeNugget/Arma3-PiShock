/*
    Author: Ken The Nugget

    Description:
    Handles Toggle/Enable/Disable EH for API Response Display.

    Parameter(s):
    0: Integer (0 - 2) - Selection Toggle/Enable/Disable.

    Return(s):
    None

    Example:
    [0] call A3PS_fnc_APIResponseDisplay_handler
*/

params ["_state"];

switch (_state) do {
	case 0: { // Toggle
		if (player getVariable "A3PS_debugEHIndex" < 0) then {
			[1] call A3PS_fnc_APIResponseDisplay_handler;
		} else {
			[2] call A3PS_fnc_APIResponseDisplay_handler;
		};
	};
	
	case 1: { // Enable
		// Remove old EH if exists
		if (player getVariable "A3PS_debugEHIndex" >= 0)then {
			removeMissionEventHandler ["ExtensionCallback", player getVariable "A3PS_debugEHIndex"];
			player setVariable ["A3PS_debugEHIndex", -1];
		};

		// Add new EH
		_EHIndex = addMissionEventHandler ["ExtensionCallback", {
			params ["_name", "_function", "_data"];
			if (_name != "arma3_pishock") exitWith {};
			systemChat format ["%1 Command: %2", _function, _data];
		}];

		player setVariable ["A3PS_debugEHIndex", _EHIndex];

		// Display Result
		systemChat "API response enabled";
	};
	
	case 2: { // Disable
		// Remove EH
		if (player getVariable "A3PS_debugEHIndex" >= 0) then {
			removeMissionEventHandler ["ExtensionCallback", player getVariable "A3PS_debugEHIndex"];
			player setVariable ["A3PS_debugEHIndex", -1];
			systemChat "API response disabled";
		};
	};
};