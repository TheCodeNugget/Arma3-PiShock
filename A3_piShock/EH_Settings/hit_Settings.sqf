// Main Settings
[
	"A3PS_hitEH_enable",
	"CHECKBOX",
	["Shock Enabled on Start", "Enables EH on mission start"],
	["Arma 3 PiShock - Event Handlers", "Hit Settings"],
	false,
	2
] call CBA_fnc_addSetting;

[
    "A3PS_hitEH_cooldown",
	"SLIDER",
	["Event Cooldown", "Cooldown Between Event Registers."],
	["Arma 3 PiShock - Event Handlers", "Hit Settings"],
	[1, 15, 1, 0],
	2
] call CBA_fnc_addSetting;

[
    "A3PS_hitEH_cooldown",
	"SLIDER",
	["Shock Cooldown", "Cooldown between shocks."],
	["Arma 3 PiShock - Event Handlers", "Hit Settings"],
	[1, 15, 1, 0],
	2
] call CBA_fnc_addSetting;

// Shock Settings
[
	"A3PS_hitEH_shock_enable",
	"CHECKBOX",
	["Shock on Trigger", "Shock When EH is Registered"],
	["Arma 3 PiShock - Event Handlers", "Hit Settings"],
	false,
	2
] call CBA_fnc_addSetting;

[
    "A3PS_hitEH_shock_intensity",
	"SLIDER",
	["Shock Intensity", "Intensity of the Shock."],
	["Arma 3 PiShock - Event Handlers", "Hit Settings"],
	[1, 100, 50, 0],
	2
] call CBA_fnc_addSetting;

[
    "A3PS_hitEH_shock_duration",
	"SLIDER",
	["Vibration Duration", "Number of seconds to Shock."],
	["Arma 3 PiShock - Event Handlers", "Hit Settings"],
	[1, 15, 5, 0],
	2
] call CBA_fnc_addSetting;

// Vibrate Settings
[
	"A3PS_hitEH_vibrate_enable",
	"CHECKBOX",
	["Vibrate on Trigger", "Vibrate When EH is Registered"],
	["Arma 3 PiShock - Event Handlers", "Hit Settings"],
	false,
	2
] call CBA_fnc_addSetting;

[
    "A3PS_hitEH_vibrate_intensity",
	"SLIDER",
	["Vibrate Intensity", "Intensity of the Vibration."],
	["Arma 3 PiShock - Event Handlers", "Hit Settings"],
	[1, 100, 50, 0],
	2
] call CBA_fnc_addSetting;

[
    "A3PS_hitEH_vibrate_duration",
	"SLIDER",
	["Vibration Duration", "Number of seconds to Shock."],
	["Arma 3 PiShock - Event Handlers", "Hit Settings"],
	[1, 15, 5, 0],
	2
] call CBA_fnc_addSetting;

// Beep Settings
[
	"A3PS_hitEH_beep_enable",
	"CHECKBOX",
	["Beep on Trigger", "Beep When EH is Registered"],
	["Arma 3 PiShock - Event Handlers", "Hit Settings"],
	false,
	2
] call CBA_fnc_addSetting;

[
    "A3PS_hitEH_beep_duration",
	"SLIDER",
	["Beep Duration", "Number of seconds to Beep."],
	["Arma 3 PiShock - Event Handlers", "Hit Settings"],
	[1, 15, 5, 0],
	2
] call CBA_fnc_addSetting;
