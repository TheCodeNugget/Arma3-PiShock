/*
    Author: Ken The Nugget

    Description:
    Sends a shock request to the arma3_pishock extension.

    Parameter(s):
    0: Integer (1 - 100) - Intensity of the shock.
	1: Integer (1 - 15) - Duration of the shock.

    Return(s):
    0 - Request Sent
	1 - Intensity out of bounds
	2 - Duration out of bounds

    Example:
    [50, 5] call NUG_fnc_shock
*/

params ["_intensity", "_duration"];


// Consent check

if (isRemoteExecuted && !NUG_allow_remoteExec) exitWith {
	["Unconsented remote exec detected from: (%1)", remoteExecutedOwner] call BIS_fnc_error;
};


// Intensity and Duration checks

if (_intensity > 100 || _intensity < 1) exitWith {
	["Intensity out of bounds"] call BIS_fnc_error
};

if (_duration > 15 || _duration < 1) exitWith {
	["Duration out of bounds"] call BIS_fnc_error
};


// Cooldown check

if ((time - (player getVariable "NUG_lastShockTime")) < (NUG_global_cooldown max NUG_shock_cooldown)) then {
	systemChat "Shock on cooldown";
} else {		
	"arma3_pishock" callExtension ["ops:shock", [NUG_userName, NUG_shareCode, NUG_APIKEY, _intensity, _duration]];
	player setVariable ["NUG_lastShockTime", time];
}