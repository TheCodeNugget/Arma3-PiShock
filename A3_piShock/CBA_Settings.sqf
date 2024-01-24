// Main Settings

[
    "A3PS_userName",
	"EDITBOX",
	["PiShock Username", "Username you use to log into PiShock.com. Can be found in the Account section of the website."],
	["Arma 3 PiShock - Main", "Account Settings"],
	"Null",
	2
] call CBA_fnc_addSetting;

[
    "A3PS_APIKEY",
	"EDITBOX",
	["API KEY", "API Key generated on PiShock.com Can be found in the Account section of the website."],
	["Arma 3 PiShock - Main", "Account Settings"],
	"Null",
	2
] call CBA_fnc_addSetting;

[
    "A3PS_shocker_1",
	"EDITBOX",
	["Shocker Sharecode", "Sharecode generated on PiShock.com. Limitations can be set when generating the code."],
	["Arma 3 PiShock - Main", "Account Settings"],
	"Null",
	2
] call CBA_fnc_addSetting;

// Global Settings
[
	"A3PS_piShock_enable",
	"CHECKBOX",
	["PiShock Enabled on Start", "Enables PiShock on mission start"],
	["Arma 3 PiShock - Main", "Global Settings"],
	false,
	2
] call CBA_fnc_addSetting;

[
	"A3PS_allow_remoteExec",
	"CHECKBOX",
	["Allow remote commands on Start", "Allows other players or the server to send shock commands"],
	["Arma 3 PiShock - Main", "Global Settings"],
	false,
	2
] call CBA_fnc_addSetting;

[
	"A3PS_shock_enable",
	"CHECKBOX",
	["Shock Enabled on Start", "Enables Shock on mission start"],
	["Arma 3 PiShock - Main", "Global Settings"],
	false,
	2
] call CBA_fnc_addSetting;

[
    "A3PS_shock_cooldown",
	"SLIDER",
	["Shock Cooldown", "Cooldown between shocks."],
	["Arma 3 PiShock - Main", "Global Settings"],
	[1, 15, 1, 0],
	2
] call CBA_fnc_addSetting;

[
	"A3PS_vibrate_enable",
	"CHECKBOX",
	["Vibrate Enabled on Start", "Enables vibration on mission start"],
	["Arma 3 PiShock - Main", "Global Settings"],
	false,
	2
] call CBA_fnc_addSetting;

[
    "A3PS_vibrate_cooldown",
	"SLIDER",
	["Vibration Cooldown", "Cooldown between vibrations."],
	["Arma 3 PiShock - Main", "Global Settings"],
	[1, 15, 1, 0],
	2
] call CBA_fnc_addSetting;

[
	"A3PS_beep_enabled",
	"CHECKBOX",
	["Beep Enabled on Start", "Enables Beeping on mission start"],
	["Arma 3 PiShock - Main", "Global Settings"],
	false,
	2
] call CBA_fnc_addSetting;

[
    "A3PS_beep_cooldown",
	"SLIDER",
	["Beeping Cooldown", "Cooldown between beeps."],
	["Arma 3 PiShock - Main", "Global Settings"],
	[1, 15, 2, 0],
	2
] call CBA_fnc_addSetting;