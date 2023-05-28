params ["_unit"];

if (_unit getVariable ["zeusShake", false]) exitWith {};
_unit setVariable ["zeusShake", true, true];

[{
    params ["_args", "_handle"];
    _args params ["_unit"];

    _unit setCustomAimCoef (missionNamespace getVariable ["zeusShakeValue", 7]);
    
}, 0, [_unit]] call CBA_fnc_addPerFrameHandler;