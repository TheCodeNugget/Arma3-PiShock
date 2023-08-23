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
			class killswitch_handler{};
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

class CfgUnitInsignia
{
	class piShock
	{
		displayName = "PiShock";												// Name displayed in Arsenal
		author = "Ken The Nugget";												// Author displayed in Arsenal
		texture = "A3_piShock\data\piShockLogo.paa";							// Image path
		material = "\A3\Ui_f\data\GUI\Cfg\UnitInsignia\default_insignia.rvmat";	// .rvmat path
		textureVehicle = "";													// Does nothing, reserved for future use
	};
};