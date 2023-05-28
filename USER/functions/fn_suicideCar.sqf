params ["_position"];

_position set [2,0];

private _car = "LOP_AFR_OPF_Nissan_PKM" createVehicle [0,0,0];
private _driver = (createGroup independent) createUnit ["LOP_AM_Infantry_Corpsman", [0,0,0], [], 0, "NONE"];
_driver moveInDriver _car;

_car setPos _position;

[_car] call homecoming_fnc_suicideCarInit;

_car setPilotLight false;

_car setVehicleLock "LOCKED";
_car allowCrewInImmobile true;
_driver setBehaviour "CARELESS";
_driver disableAI "AUTOCOMBAT";
_driver disableAI "MINEDETECTION";
_driver disableAI "TARGET";
_driver disableAI "SUPPRESSION";

_driver setVariable ["assignedCar", _car];

{
    if (typeOf _x == "MetalBarrel_burning_F") then {
        _x inflame true;
    };
} forEach attachedObjects _car;


_car addEventHandler ["Hit", {
    params ["_unit", "_source", "_damage", "_instigator"];

    private _count = _unit getVariable ["ML_hitCount", 0];
    _unit setVariable ["ML_hitCount", _count + 1, true];

    if (_count > 15 || !canMove _unit) then {
        [_unit] setVariable ["killedByHit", true, true];
        [_unit] call homecoming_fnc_suicideCarExplode;
    };
}];

_driver addEventHandler ["Killed", {
    params ["_unit", "_killer", "_instigator", "_useEffects"];

    private _car = _unit getVariable ["assignedCar", objNull];
    private _killedByHit = _car getVariable ["killedByHit", false];

    if (!_killedByHit) then {
        [_car] call homecoming_fnc_suicideCarExplode;
    };
}];