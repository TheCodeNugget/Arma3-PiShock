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
	private _remoteExecutor = remoteExecutedOwner; // Store Executor ID
	
	if (_remoteExecutor <= 2) then { // Check if the executor is the server
		["Unconsented remote exec detected from the server"] call BIS_fnc_error;
	} else {
		private _allUserIDs = allUsers;
		for "_i" from 0 to (count _allUserIds - 1) do { // Iterate player list to find the executor
			private _userInfo = getUserInfo (_allUserIDs select _i);
			_userInfo params ["_playerID", "_ownerId", "_SteamID", "_profileName", "_displayName", "_steamName", "_clientState", "_isHC", "_adminState", "_networkInfo", "_unit"];
			
			if ((_ownerId) == _remoteExecutor) then {
				["Unconsented remote exec detected from: (%1), SteamID: (%2), SteamID: (%3)", _profileName, _steamName, _SteamID] call BIS_fnc_error;
				break;
			};
		};
	};
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