// Account Settings
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
	[["Hit", "IncomingMissile", "Killed", "Suppressed"], ["Hit", "IncomingMissile", "Killed", "Suppressed"], 0],
	2
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
	[["Hit", "IncomingMissile", "Killed", "Suppressed"], ["Hit", "IncomingMissile", "Killed", "Suppressed"], 0],
	2
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
	[["Hit", "IncomingMissile", "Killed", "Suppressed"], ["Hit", "IncomingMissile", "Killed", "Suppressed"], 0],
	2
] call CBA_fnc_addSetting;

[
    "NUG_beep_duration",
	"SLIDER",
	["Beeping Duration", "Number of seconds to Vibrate the collar."],
	["Arma 3 PiShock", "4.Beeping Settings"],
	[1, 15, 5, 0],
	2
] call CBA_fnc_addSetting;
