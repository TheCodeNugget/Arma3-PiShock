// Main Settings
[
	"A3PS_reloadEH_enable",
	"CHECKBOX",
	["Shock Enabled on Start", "Enables EH on mission start"],
	["Arma 3 PiShock - Event Handlers", "Reload Settings"],
	false,
	2
] call CBA_fnc_addSetting;

[
    "A3PS_reloadEH_ammo",
	"SLIDER",
	["Remaining Ammo", "Registers Event if more than given percentage left in magazine."],
	["Arma 3 PiShock - Event Handlers", "Reload Settings"],
	[1, 100, 1, 0],
	90
] call CBA_fnc_addSetting;

[
    "A3PS_reloadEH_cooldown",
	"SLIDER",
	["Event Cooldown", "Cooldown Between Event Registers."],
	["Arma 3 PiShock - Event Handlers", "Reload Settings"],
	[1, 15, 1, 0],
	2
] call CBA_fnc_addSetting;

[
    "A3PS_reloadEH_cooldown",
	"SLIDER",
	["Shock Cooldown", "Cooldown between shocks."],
	["Arma 3 PiShock - Event Handlers", "Reload Settings"],
	[1, 15, 1, 0],
	2
] call CBA_fnc_addSetting;

// Shock Settings
[
	"A3PS_reloadEH_shock_enable",
	"CHECKBOX",
	["Shock on Trigger", "Shock When EH is Registered"],
	["Arma 3 PiShock - Event Handlers", "Reload Settings"],
	false,
	2
] call CBA_fnc_addSetting;

[
    "A3PS_reloadEH_shock_intensity",
	"SLIDER",
	["Shock Intensity", "Intensity of the Shock."],
	["Arma 3 PiShock - Event Handlers", "Reload Settings"],
	[1, 100, 50, 0],
	2
] call CBA_fnc_addSetting;

[
    "A3PS_reloadEH_shock_duration",
	"SLIDER",
	["Vibration Duration", "Number of seconds to Shock."],
	["Arma 3 PiShock - Event Handlers", "Reload Settings"],
	[1, 15, 5, 0],
	2
] call CBA_fnc_addSetting;

// Vibrate Settings
[
	"A3PS_reloadEH_vibrate_enable",
	"CHECKBOX",
	["Vibrate on Trigger", "Vibrate When EH is Registered"],
	["Arma 3 PiShock - Event Handlers", "Reload Settings"],
	false,
	2
] call CBA_fnc_addSetting;

[
    "A3PS_reloadEH_vibrate_intensity",
	"SLIDER",
	["Vibrate Intensity", "Intensity of the Vibration."],
	["Arma 3 PiShock - Event Handlers", "Reload Settings"],
	[1, 100, 50, 0],
	2
] call CBA_fnc_addSetting;

[
    "A3PS_reloadEH_vibrate_duration",
	"SLIDER",
	["Vibration Duration", "Number of seconds to Shock."],
	["Arma 3 PiShock - Event Handlers", "Reload Settings"],
	[1, 15, 5, 0],
	2
] call CBA_fnc_addSetting;

// Beep Settings
[
	"A3PS_reloadEH_beep_enable",
	"CHECKBOX",
	["Beep on Trigger", "Beep When EH is Registered"],
	["Arma 3 PiShock - Event Handlers", "Reload Settings"],
	false,
	2
] call CBA_fnc_addSetting;

[
    "A3PS_reloadEH_beep_duration",
	"SLIDER",
	["Beep Duration", "Number of seconds to Beep."],
	["Arma 3 PiShock - Event Handlers", "Reload Settings"],
	[1, 15, 5, 0],
	2
] call CBA_fnc_addSetting;
