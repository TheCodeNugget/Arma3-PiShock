/*
    Author: Ken The Nugget

    Description:
    Sends a shock request to the arma3_pishock extension.

    Parameter(s):
    0: Integer (1 - 100) - Intensity of the shock.
	1: Integer (1 - 15) - Duration of the shock.

    Return(s):
    0 - Request Sent
	1 - Intensity out of bounds
	2 - Duration out of bounds

    Example:
    [50, 5] call NUG_fnc_shock
*/