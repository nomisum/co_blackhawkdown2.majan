params ["_posASL", "_surfaceNormal", "_intersectObject"];

private _duration = 0.01 + random 0.1;
private _amount = 0.001 + random 0.01;
private _spark = "#particlesource" createVehicleLocal ASLtoAGL _posASL;
private _lifetime = 1+(random 0.5);


_spark setParticleCircle [0, [0, 0, 0]];
_spark setParticleRandom [1, [0, 0, 0], [0.4, 0.4, -0.3], 0, 0.0025, [0, 0, 0, 0], 0, 0];
_spark setParticleParams [
	["\A3\data_f\proxies\muzzle_flash\muzzle_flash_silencer.p3d", 1, 0, 1], "", "SpaceObject",
	1, _lifetime, [0, 0, 0], [0, 0, -0.1], 0, 20, 7.9, 0, 
	[0.3,0.3,0.05], [[1, 1, 1, 1], [1, 0.5, 0.5, 1], [0.5, 0, 0, 0]], [0.08], 1, 0, "", "", _spark,0,true,0.2,[[10,5,5,1]]
];
_spark setDropInterval _amount; 
sleep _duration;
deleteVehicle _spark;

if (isNull (_intersectObject getVariable ["grad_grinder_sound", objNull])) then {
	private _sound = _intersectObject say3d (selectRandom ["grinder_active", "grinder_active2"]);
	_intersectObject setVariable ["grad_grinder_sound", _sound];
};
