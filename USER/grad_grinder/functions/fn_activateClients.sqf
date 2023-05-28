params ["_identifier"];

private _data = missionNameSpace getVariable [_identifier, [[0,0,0], [0,0,0], objNull, [0,0,0]]];
waitUntil {count _data > 0};

[{
	params ["_args", "_handle"];
	_args params ["_identifier"];
	
	if (!isGameFocused) exitWith {};

	private _data = missionNameSpace getVariable [_identifier, [[0,0,0], [0,0,0], objNull, [0,0,0]]];
	_data params ["_posASL", "_surfaceNormal", "_intersectObject", "_finalPoint"]; 

	if (count _data < 1) exitWith {
		[_handle] call CBA_fnc_removePerFrameHandler;
	};
	if (isNull _intersectObject) exitWith {};

	[_posASL, _surfaceNormal, _intersectObject] spawn grad_grinder_fnc_sparkClient;
	[_posASL, _surfaceNormal, _intersectObject, _finalPoint] call grad_grinder_fnc_lightClient;
	
}, 0, [_identifier]] call CBA_fnc_addPerFrameHandler;
