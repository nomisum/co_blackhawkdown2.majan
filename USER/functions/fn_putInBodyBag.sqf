params ["_body"];

private _pos = getPos _body;
private _dir = getDir _body;

deleteVehicle _body;

private _newBody = "Land_Bodybag_01_black_F" createVehicle [0,0,0];
_newBody setDir _dir;
_newBody setPos _pos;