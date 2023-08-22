/*
    Author: Ken The Nugget

    Description:
    Handles Toggle/Enable/Disable EH for PiShock Killswitch.

    Parameter(s):
    0: Integer (0 - 2) - Selection Toggle/Enable/Disable.

    Return(s):
    None

    Example:
    [0] call NUG_fnc_killswitch_handler
*/

params ["_state"];

switch (_state) do {
	case 0: { // Toggle
		if (player getVariable "NUG_killswitch") then {
			[2] call NUG_fnc_killswitch_handler;
		} else {
			[1] call NUG_fnc_killswitch_handler;
		};
	};
	
	case 1: { // Enable
		player setVariable ["NUG_killswitch", true];
		systemChat "Killswitch ON!";
	};
	
	case 2: { // Disable
		player setVariable ["NUG_killswitch", false];
		systemChat "Killswitch OFF!";
	};
};