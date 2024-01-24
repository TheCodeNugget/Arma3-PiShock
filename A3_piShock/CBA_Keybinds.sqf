// Keybinds

// Killswitch Keybinds
[
	"Arma 3 PiShock",
	"A3PS_toggle_killswitch",
	"Toggle Killswitch",
	{[0] call A3PS_fnc_killswitch_handler;},
	""
] call CBA_fnc_addKeybind;

[
	"Arma 3 PiShock",
	"A3PS_enable_killswitch",
	"Enable Killswitch",
	{[1] call A3PS_fnc_killswitch_handler},
	""
] call CBA_fnc_addKeybind;

[
	"Arma 3 PiShock",
	"A3PS_disable_killswitch",
	"Disable Killswitch",
	{[2] call A3PS_fnc_killswitch_handler},
	""
] call CBA_fnc_addKeybind;

// Allow RE Keybinds
[
	"Arma 3 PiShock",
	"A3PS_toggle_RE",
	"Toggle Remote Execution",
	{[0] call A3PS_fnc_allowRE_handler;},
	""
] call CBA_fnc_addKeybind;

[
	"Arma 3 PiShock",
	"A3PS_enable_RE",
	"Enable Remote Execution",
	{[1] call A3PS_fnc_allowRE_handler},
	""
] call CBA_fnc_addKeybind;

[
	"Arma 3 PiShock",
	"A3PS_disable_RE",
	"Disable Remote Execution",
	{[2] call A3PS_fnc_allowRE_handler},
	""
] call CBA_fnc_addKeybind;

// Shock Keybinds
[
	"Arma 3 PiShock",
	"A3PS_toggle_shock",
	"Toggle Shock",
	{[0] call A3PS_fnc_shockEH_handler},
	""
] call CBA_fnc_addKeybind;

[
	"Arma 3 PiShock",
	"A3PS_enable_shock",
	"Enable Shock",
	{[1] call A3PS_fnc_shockEH_handler},
	""
] call CBA_fnc_addKeybind;

[
	"Arma 3 PiShock",
	"A3PS_disable_shock",
	"Disable Shock",
	{[2] call A3PS_fnc_shockEH_handler},
	""
] call CBA_fnc_addKeybind;

// Vibrate Keybinds
[
	"Arma 3 PiShock",
	"A3PS_toggle_vibrate",
	"Toggle Vibrate",
	{[0] call A3PS_fnc_vibrateEH_handler},
	""
] call CBA_fnc_addKeybind;

[
	"Arma 3 PiShock",
	"A3PS_enable_vibrate",
	"Enable Vibrate",
	{[1] call A3PS_fnc_vibrateEH_handler},
	""
] call CBA_fnc_addKeybind;

[
	"Arma 3 PiShock",
	"A3PS_disable_vibrate",
	"Disable Vibrate",
	{[2] call A3PS_fnc_vibrateEH_handler},
	""
] call CBA_fnc_addKeybind;

// Beep Keybinds
[
	"Arma 3 PiShock",
	"A3PS_toggle_beep",
	"Toggle Beep",
	{[0] call A3PS_fnc_beepEH_handler},
	""
] call CBA_fnc_addKeybind;

[
	"Arma 3 PiShock",
	"A3PS_enable_beep",
	"Enable Beep",
	{[1] call A3PS_fnc_beepEH_handler},
	""
] call CBA_fnc_addKeybind;

[
	"Arma 3 PiShock",
	"A3PS_disable_beep",
	"Disable Beep",
	{[2] call A3PS_fnc_beepEH_handler},
	""
] call CBA_fnc_addKeybind;

// API Response Display Keybinds
[
	"Arma 3 PiShock",
	"A3PS_toggle_APIResponseDisplay",
	"Toggle API Response Display",
	{[0] call A3PS_fnc_APIResponseDisplayEH_handler},
	""
] call CBA_fnc_addKeybind;

[
	"Arma 3 PiShock",
	"A3PS_enable_APIResponseDisplay",
	"Enable API Response Display",
	{[1] call A3PS_fnc_APIResponseDisplayEH_handler},
	""
] call CBA_fnc_addKeybind;

[
	"Arma 3 PiShock",
	"A3PS_disable_APIResponseDisplay",
	"Disable API Response Display",
	{[2] call A3PS_fnc_APIResponseDisplayEH_handler},
	""
] call CBA_fnc_addKeybind;