params ["_position"];

private _unit = (createGroup civilian) createUnit ["LOP_Tak_Civ_Random", _position, [], 0, "NONE"];
_unit setPos _position;
private _radio = "land_gm_euro_furniture_radio_01" createVehicle [0,0,0];
_radio attachTo [_unit,[-0.03,-0.06,-0.19],"RightHand"];
_radio setVectorDirAndUp [[1,0,0],[0,0,1]];

private _music = selectRandom [
    "sfxsound10",
    "sfxsound11",
    "sfxsound19",
    "sfxsound20"

];

{
    _radio disableCollisionWith _x;
} forEach (playableUnits + switchableUnits + [_unit]);


private _source = createSoundSource [_music, _position, [], 0];
[_source, _radio, false] call homecoming_fnc_soundSourceHelper;