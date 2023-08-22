/*
    Author: Ken The Nugget

    Description:
    Sends a beep request to the arma3_pishock extension.

    Parameter(s):
	0: Integer (1 - 15) - Duration of the beep.

    Return(s):
    0 - Request Sent
	1 - Duration out of bounds

    Example:
    [5] call NUG_fnc_beep
*/

params ["_duration"];


// Consent check

if (isRemoteExecuted && !NUG_allow_remoteExec) exitWith {
	["Unconsented remote exec detected from: (%1)", remoteExecutedOwner] call BIS_fnc_error;
};

// Intensity and Duration checks

if (_duration > 15 || _duration < 1) exitWith {
	["Duration out of bounds"] call BIS_fnc_error
};

// Cooldown check

if ((time - (player getVariable "NUG_lastBeepTime")) < (NUG_global_cooldown max NUG_Beep_cooldown)) then {
	systemChat "Beep on cooldown";
} else {		
	"arma3_pishock" callExtension ["ops:beep", [NUG_userName, NUG_shareCode, NUG_APIKEY, _duration]];
	player setVariable ["NUG_lastBeepTime", time];
}