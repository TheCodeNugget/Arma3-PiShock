/*
    Author: Ken The Nugget

    Description:
    Handles Toggle/Enable/Disable EH for PiShock Killswitch.

    Parameter(s):
    0: Integer (0 - 2) - Selection Toggle/Enable/Disable.

    Return(s):
    None

    Example:
    [0] call A3PS_fnc_killswitch_handler
*/

params ["_state"];

switch (_state) do {
	case 0: { // Toggle
		if (player getVariable "A3PS_killswitch") then {
			[2] call A3PS_fnc_killswitch_handler;
		} else {
			[1] call A3PS_fnc_killswitch_handler;
		};
	};
	
	case 1: { // Enable
		player setVariable ["A3PS_killswitch", true];
		systemChat "Killswitch ON!";
	};
	
	case 2: { // Disable
		player setVariable ["A3PS_killswitch", false];
		systemChat "Killswitch OFF!";
	};
};