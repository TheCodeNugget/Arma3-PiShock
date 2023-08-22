// Account Settings

[
	"NUG_piShock_enable",
	"CHECKBOX",
	["Enabled on Start", "Enables PiShock on mission start (Killswitch)"],
	["Arma 3 PiShock", "1.PiShock Settings"],
	false,
	2
] call CBA_fnc_addSetting;

[
	"NUG_allow_remoteExec",
	"CHECKBOX",
	["Allow remote commands", "Allows other players or the server to send shock commands"],
	["Arma 3 PiShock", "1.PiShock Settings"],
	false,
	2
] call CBA_fnc_addSetting;

[
    "NUG_userName",
	"EDITBOX",
	["PiShock Username", "Username you use to log into PiShock.com. Can be found in the Account section of the website."],
	["Arma 3 PiShock", "1.PiShock Settings"],
	"Null",
	2
] call CBA_fnc_addSetting;

[
    "NUG_shareCode",
	"EDITBOX",
	["PiShock Sharecode", "Sharecode generated on PiShock.com. Limitations can be set when generating the code."],
	["Arma 3 PiShock", "1.PiShock Settings"],
	"Null",
	2
] call CBA_fnc_addSetting;

[
    "NUG_APIKEY",
	"EDITBOX",
	["API KEY", "API Key generated on PiShock.com Can be found in the Account section of the website."],
	["Arma 3 PiShock", "1.PiShock Settings"],
	"Null",
	2
] call CBA_fnc_addSetting;

[
    "NUG_global_cooldown",
	"SLIDER",
	["Global Cooldown", "Cooldown between all actions."],
	["Arma 3 PiShock", "1.PiShock Settings"],
	[1, 15, 1, 0],
	2
] call CBA_fnc_addSetting;

// 2.Shock Settings

[
	"NUG_shock_enabled",
	"CHECKBOX",
	["Enabled on Start", "Enables Shock on mission start"],
	["Arma 3 PiShock", "2.Shock Settings"],
	true,
	2
] call CBA_fnc_addSetting;

[
    "NUG_shock_handler",
	"LIST",
	["Event Handler", "Event Handler for shocking."],
	["Arma 3 PiShock", "2.Shock Settings"],
	[["Hit", "IncomingMissile", "Killed", "Suppressed", "Fired"], ["Hit", "IncomingMissile", "Killed", "Suppressed", "Fired"], 0],
	2,
	{
		if (player getVariable "NUG_shockEHIndex" >= 0) then {
			[1] call NUG_fnc_shockEH_handler;
		};
	}
] call CBA_fnc_addSetting;

[
    "NUG_shock_intensity",
	"SLIDER",
	["Shock Intensity", "Intensity of the shock."],
	["Arma 3 PiShock", "2.Shock Settings"],
	[1, 100, 50, 0],
	2
] call CBA_fnc_addSetting;

[
    "NUG_shock_duration",
	"SLIDER",
	["Shock Duration", "Number of seconds to shock the wearer."],
	["Arma 3 PiShock", "2.Shock Settings"],
	[1, 15, 5, 0],
	2
] call CBA_fnc_addSetting;

[
    "NUG_shock_cooldown",
	"SLIDER",
	["Global Cooldown", "Cooldown between shocks."],
	["Arma 3 PiShock", "2.Shock Settings"],
	[1, 15, 1, 0],
	2
] call CBA_fnc_addSetting;

// Vibrate Settings

[
	"NUG_vibrate_enabled",
	"CHECKBOX",
	["Enabled on Start", "Enables vibration on mission start"],
	["Arma 3 PiShock", "3.Vibration Settings"],
	false,
	2
] call CBA_fnc_addSetting;

[
    "NUG_vibrate_handler",
	"LIST",
	["Event Handler", "Event Handler for vibrating."],
	["Arma 3 PiShock", "3.Vibration Settings"],
	[["Hit", "IncomingMissile", "Killed", "Suppressed", "Fired"], ["Hit", "IncomingMissile", "Killed", "Suppressed", "Fired"], 0],
	2,
	{
		if (player getVariable "NUG_vibrateEHIndex" >= 0) then {
			[1] call NUG_fnc_vibrateEH_handler;
		};
	}
] call CBA_fnc_addSetting;

[
    "NUG_vibrate_intensity",
	"SLIDER",
	["Vibration Intensity", "Intensity of the vibration."],
	["Arma 3 PiShock", "3.Vibration Settings"],
	[1, 100, 50, 0],
	2
] call CBA_fnc_addSetting;

[
    "NUG_vibrate_duration",
	"SLIDER",
	["Vibration Duration", "Number of seconds to vibrate the collar."],
	["Arma 3 PiShock", "3.Vibration Settings"],
	[1, 15, 5, 0],
	2
] call CBA_fnc_addSetting;

[
    "NUG_vibrate_cooldown",
	"SLIDER",
	["Global Cooldown", "Cooldown between vibrations."],
	["Arma 3 PiShock", "3.Vibration Settings"],
	[1, 15, 1, 0],
	2
] call CBA_fnc_addSetting;

// Beep Settings

[
	"NUG_beep_enabled",
	"CHECKBOX",
	["Enabled on Start", "Enables Beeping on mission start"],
	["Arma 3 PiShock", "4.Beeping Settings"],
	false,
	2
] call CBA_fnc_addSetting;

[
    "NUG_beep_handler",
	"LIST",
	["Event Handler", "Event Handler for vibrating."],
	["Arma 3 PiShock", "4.Beeping Settings"],
	[["Hit", "IncomingMissile", "Killed", "Suppressed", "Fired"], ["Hit", "IncomingMissile", "Killed", "Suppressed", "Fired"], 0],
	2,
	{
		if (player getVariable "NUG_beepEHIndex" >= 0) then {
			[1] call NUG_fnc_beepEH_handler;
		};
	}
] call CBA_fnc_addSetting;

[
    "NUG_beep_duration",
	"SLIDER",
	["Beeping Duration", "Number of seconds to Vibrate the collar."],
	["Arma 3 PiShock", "4.Beeping Settings"],
	[1, 15, 5, 0],
	2
] call CBA_fnc_addSetting;

[
    "NUG_beep_cooldown",
	"SLIDER",
	["Global Cooldown", "Cooldown between beeps."],
	["Arma 3 PiShock", "4.Beeping Settings"],
	[1, 15, 2, 0],
	2
] call CBA_fnc_addSetting;

// Debug Settings

[
	"NUG_response_display",
	"CHECKBOX",
	["Display Responses", "Display API Responses"],
	["Arma 3 PiShock", "5. Debug Settings"],
	false,
	2,
	{
		if (NUG_response_display) then {
			[1] call NUG_fnc_APIResponseDisplay_handler;
		} else {
			[2] call NUG_fnc_APIResponseDisplay_handler;
		};
	}
] call CBA_fnc_addSetting;