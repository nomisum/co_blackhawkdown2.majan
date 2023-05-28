params ["_unit", "_abuser"];

if (isServer) then {
    [_unit,"Acts_CivilInjuredHead_1"] remoteExecCall ['switchMove'];

    _unit addEventHandler ["animDone", {
        params ["_entity", "_anim"];
        
        _entity playMoveNow _anim; 
    }];

    [{
        params ["_unit", "_abuser"];
        (_abuser getVariable ["pissing_interrupted", false])
    },
    {
        params ["_unit", "_abuser"];
        _unit removeAllEventHandlers "AnimDone";
        [_unit,"AinjPpneMstpSnonWnonDnon"] remoteExecCall ['switchMove'];

    }, [_unit, _abuser]] call CBA_fnc_waitUntilAndExecute;

};

[_unit, _abuser] spawn {
    params ["_unit","_abuser"];

   [_abuser, "Acts_AidlPercMstpSlowWrflDnon_pissing"] remoteExec ["switchMove"];

    for "_i" from 1 to 8 do {
        if (_abuser getVariable ["pissing_interrupted", false]) exitWith {
        };
        sleep 0.5;
    };

    if (_abuser getVariable ["pissing_interrupted", false]) exitWith {};

    private _source = createSoundSource ["piss", position _abuser, [], 0];
    private _helper = [_source, position _abuser] call homecoming_fnc_soundSourceHelper;

    
    [_unit, _abuser] remoteExec ["homecoming_fnc_pilotPiss", [0,-2] select isDedicated];

    [{
        params ["_abuser"];
        _abuser getVariable ["pissing_interrupted", false]
    },{
        params ["_abuser", "_helper"];
        deleteVehicle _helper;
    }, [_abuser, _helper]] call CBA_fnc_waitUntilAndExecute;
    
};

_abuser addMPEventHandler ["MPKilled", {
    params ["_unit"];

    _unit setVariable ["pissing_interrupted", true, true];
    [_unit, "Acts_Stunned_Unconscious"] remoteExec ["switchMove"];

    [[_unit], "user\functions\fn_cutScene.sqf"] remoteExec ["BIS_fnc_execVM"];

    _unit addEventHandler ["AnimDone", {
        params ["_unit"];

        _unit setDamage 1;
    }];
}];