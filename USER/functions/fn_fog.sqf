// inspired by ALIAS
// rewritten by nomisum

if (!hasInterface) exitWith {};

if (missionNamespace getVariable ["localFogRunning", false]) exitWith {};
missionNamespace setVariable ["localFogRunning", true];

private _unit = player;
private _radius = 250;
private _density = 3;

_unit setVariable ["fogLocalOff", false]; 

[{
	params ["_args", "_handle"];
	_args params ["_unit", "_radius", "_density"];

	// position adjusted for vehicles direction and speed
	private _position = (position _unit) vectorAdd ((velocity (vehicle _unit)) vectorMultiply 10);

	private _position = (position _unit) getPos [_radius * sqrt random 1, random 360];
	_position set [2,-1.5];

	  drop [ 
	   "\A3\data_f\cl_basic","","Billboard", 
	   1,  
	   15 + random 5, 
	   _position,[0,0,0],5,0.2,0.1568,0,[5],[[1,1,1,0],[1,1,1,0.1],[1,1,1,0]],[0],1,0,"", "","" 
	  ];

	// density 
	for "_i" from 1 to _density do {	
		  // closeup
		  private _position = (position _unit) getPos [_radius/1.5 * sqrt random 1, random 360];
		_position set [2,-1];
		  drop [ 
		   "\A3\data_f\ParticleEffects\Universal\smoke.p3d","","Billboard", 
		   1,  
		   15 + random 5, 
		   _position,[0,-0.15,-0.025],5,0.2,0.1568,0,[5],[[1,1,1,0],[1,1,1,0.1],[1,1,1,0]],[0.1],1,0,"", "","" 
		  ];
	};


	if (!(missionNamespace getVariable ["localFogRunning", false])) then {
		[_handle] call CBA_fnc_removePerFrameHandler;
		// systemChat "stopped running";
	};
	
}, 0, [_unit, _radius, _density]] call CBA_fnc_addPerFrameHandler;


/*
[{
		missionNamespace setVariable ["localFogRunning", false];
}, [], 30] call CBA_fnc_waitAndExecute;
*/


/*
private _position = getPosASL _unit;
_position set [2,-2];

_fog_low = "#particlesource" createVehicle _position;

_fog_low setParticleCircle [0,[0,0,0]];
_fog_low setParticleRandom [0,[-350+(random 700),-350+(random 700),-1],[0,0,0],3,0,[0,0,0,0.3],0,0];
_fog_low setParticleParams[
	["\A3\data_f\cl_basic",1,0,1],"","Billboard",1,15,[0,0,-2],[0,0,0],13,10,7.843,0.005,[5,5,5],[[1,1,1,0],[1,1,1,0.05],[1,1,1,0]],[0,0],0,0,"","",_unit];
_fog_low setDropInterval 0.001;

_fog_low_close = "#particlesource" createVehicle _position;
_fog_low_close setParticleCircle [0,[0,0,0]];
_fog_low_close setParticleRandom [0,[-60+(random 30),-60+(random 30),-1],[0,0,0],3,0,[0,0,0,0.3],0,0];
_fog_low_close setParticleParams[
	["\A3\data_f\cl_basic",1,0,1],"","Billboard",1,15,[0,0,-2],[0,0,0],13,10,7.843,0.005,[5,5,5],[[1,1,1,0],[1,1,1,0.05],[1,1,1,0]],[0,0],0,0,"","",_unit];
_fog_low_close setDropInterval 0.004;

[{
	params ["_args", "_handle"];
	_args params ["_unit", "_fog_low", "_fog_low_close"];

	private _position = getPosASL _unit;
	_position set [2,-2];

	private _outerRing = random [60, 150, 350];
	if (random 2 > 1) then { _outerRing = -_outerRing; };
	_fog_low setParticleRandom [0,[_outerRing,_outerRing,-1],[0,0,0],3,0,[0,0,0,0.3],0,0];

	_fog_low setPos _position;
	_fog_low_close setPos _position;

	if (count (_unit getVariable ["fogLocalArray", []]) < 1) then {
		[_handle] call CBA_fnc_removePerFrameHandler;
	};
	
}, 0, [_unit, _fog_low, _fog_low_close]] call CBA_fnc_addPerFrameHandler;

_unit setVariable ["fogLocalArray", [_fog_low, _fog_low_close]];

*/