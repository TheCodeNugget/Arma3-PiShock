/*
    Author: Ken The Nugget

    Description:
    Sends a beep request to the arma3_pishock extension.

    Parameter(s):
	0: Integer (1 - 15) - Duration of the beep.

    Return(s):
    None

    Example:
    [5] call NUG_fnc_beep
*/

params ["_duration"];

// Consent check

if (isRemoteExecuted && !(player getVariable "NUG_allowRE")) exitWith {
	remoteExecuterInfo = getUserInfo remoteExecutedOwner;
	["Unconsented remote exec detected from: (%1) SteamID: (%2)", remoteExecuterInfo select 5, remoteExecuterInfo select 3] call BIS_fnc_error;
};

// PiShock Check

if !(player getVariable "NUG_killswitch") exitWith {
	["Killswitch off, Beep not sent!"] call BIS_fnc_error;
};

// Duration check

if (_duration > 15 || _duration < 1) exitWith {
	["Duration out of bounds"] call BIS_fnc_error;
};

// Cooldown check

if ((time - (player getVariable "NUG_lastBeepTime")) < (NUG_global_cooldown max NUG_Beep_cooldown)) then {
	systemChat "Beep on cooldown";
} else {		
	"arma3_pishock" callExtension ["ops:beep", [NUG_userName, NUG_shareCode, NUG_APIKEY, _duration]];
	player setVariable ["NUG_lastBeepTime", time];
};