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