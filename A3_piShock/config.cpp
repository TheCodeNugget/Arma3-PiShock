class CfgPatches {
    class A3Pishock {
        name = "PiShock API Wrapper for Arma 3";
		author = "Ken The Nugget";
		requiredVersion = 1.0;
    };
};

class CfgFunctions {
	class NUG {
		tag = "NUG";
		class functions {
			file = "\A3_piShock\functions";
			class shock{};
			class vibrate{};
			class beep{};
			class shockEH_handler{};
			class vibrateEH_handler{};
			class beepEH_handler{};
			class APIResponseDisplay_handler{};
		};
	};
};

class Extended_PreInit_EventHandlers {
    class A3Pishock {
        init = "call compile preprocessFileLineNumbers 'A3_piShock\XEH_preInit.sqf'";
    };
};

class Extended_PostInit_EventHandlers {
    class My_post_init_event {
        init = "call compile preprocessFileLineNumbers 'A3_piShock\XEH_postInit.sqf'";
    };
};

class UserActionGroups {
	class A3Pishock { // Unique classname of your category.
		name = "Arma 3 PiShock"; // Display name of your category.
		isAddon = 1;
		group[] = {
			"NUG_toggle_killswitch",
			"NUG_enable_killswitch",
			"NUG_disable_killswitch",
			"NUG_toggle_shock",
			"NUG_enable_shock",
			"NUG_disable_shock",
			"NUG_toggle_vibrate",
			"NUG_enable_vibrate",
			"NUG_disable_vibrate",
			"NUG_toggle_beep",
			"NUG_enable_beep",
			"NUG_disable_beep",
			"NUG_toggle_APIResponseDisplay",
			"NUG_enable_APIResponseDisplay",
			"NUG_disable_APIResponseDisplay",
		}; // List of all actions inside this category.
	};
};