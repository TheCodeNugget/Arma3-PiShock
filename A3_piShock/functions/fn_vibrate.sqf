/*
    Author: Ken The Nugget

    Description:
    Sends a vibrate request to the arma3_pishock extension.

    Parameter(s):
    0: Integer (1 - 100) - Intensity of the vibrate.
	1: Integer (1 - 15) - Duration of the vibrate.

    Return(s):
    None

    Example:
    [50, 5] call NUG_fnc_vibrate
*/

params ["_intensity", "_duration"];

// Consent check

if (isRemoteExecuted && !(player getVariable "NUG_allowRE")) exitWith {
	remoteExecuterInfo = getUserInfo remoteExecutedOwner;
	["Unconsented remote exec detected from: (%1) SteamID: (%2)", remoteExecuterInfo select 5, remoteExecuterInfo select 3] call BIS_fnc_error;
};

// PiShock Check

if !(player getVariable "NUG_killswitch") exitWith {
	["Killswitch off, Vibration not sent!"] call BIS_fnc_error;
};

// Intensity and Duration checks

if (_intensity > 100 || _intensity < 1) exitWith {
	["Intensity out of bounds"] call BIS_fnc_error;
};

if (_duration > 15 || _duration < 1) exitWith {
	["Duration out of bounds"] call BIS_fnc_error;
};


// Cooldown check

if ((time - (player getVariable "NUG_lastVibrateTime")) < (NUG_global_cooldown max NUG_Vibrate_cooldown)) then {
	systemChat "Vibrate on cooldown";
} else {		
	"arma3_pishock" callExtension ["ops:vibrate", [NUG_userName, NUG_shareCode, NUG_APIKEY, _intensity, _duration]];
	player setVariable ["NUG_lastVibrateTime", time];
};