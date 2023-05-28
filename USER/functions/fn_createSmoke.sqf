params ["_object", ["_effect", "burningvehicle"]];

private _effects = [];

switch (_effect) do { 
    case "burningvehicle" : {  

            private _posATL = getPosATL _object;

            // Fire
            private _ps0 = "#particlesource" createVehicleLocal _posATL;
            _ps0 setPosATL _posATL;
            _ps0 setParticleParams [
                ["\A3\Data_F\ParticleEffects\Universal\Universal", 16, 10, 32], "", "Billboard",
                0, 1, [0, 0, 0.25], [0, 0, 0.5], 1, 1, 0.9, 0.3, [1.5],
                [[1,1,1, 0.0], [1,1,1, 0.3], [1,1,1, 0.0]],
                [0.75], 0, 0, "", "", _ps0, rad -45];
            _ps0 setParticleRandom [0.2, [1, 1, 0], [0.5, 0.5, 0], 0, 0.5, [0, 0, 0, 0], 0, 0];
            _ps0 setDropInterval 0.03;

            _effects pushBackUnique _ps0;

            // Smoke part 1
            private _ps1 = "#particlesource" createVehicleLocal _posATL;
            _ps1 setPosATL _posATL;
            _ps1 setParticleParams [
                ["\A3\Data_F\ParticleEffects\Universal\Universal", 16, 7, 1], "", "Billboard",
                1, 10, [0, 0, 0.5], [0, 0, 2.9], 1, 1.275, 1, 0.066, [4, 5, 10, 10],
                [[0.3, 0.3, 0.3, 0.33], [0.4, 0.4, 0.4, 0.33], [0.2, 0.2, 0, 0]],
                [0, 1], 1, 0, "", "", _ps1];
            _ps1 setParticleRandom [0, [0, 0, 0], [0.33, 0.33, 0], 0, 0.25, [0.05, 0.05, 0.05, 0.05], 0, 0];
            _ps1 setDropInterval 0.5;

            _effects pushBackUnique _ps1;

            // Smoke part 2
            private _ps2 = "#particlesource" createVehicleLocal _posATL;
            _ps2 setPosATL _posATL;
            _ps2 setParticleParams [
                ["\A3\Data_F\ParticleEffects\Universal\Universal", 16, 9, 1], "", "Billboard",
                1, 15, [0, 0, 0.5], [0, 0, 2.9], 1, 1.275, 1, 0.066, [4, 5, 10, 10],
                [[0.1, 0.1, 0.1, 0.75], [0.4, 0.4, 0.4, 0.5], [1, 1, 1, 0.2]],
                [0], 1, 0, "", "", _ps2];
            _ps2 setParticleRandom [0, [0, 0, 0], [0.5, 0.5, 0], 0, 0.25, [0.05, 0.05, 0.05, 0.05], 0, 0];
            _ps2 setDropInterval 0.25;

            _effects pushBackUnique _ps2;


    }; 

    case "fire" : {
            private _posATL = getPosATL _object;

            // Fire
            private _ps1 = "#particlesource" createVehicleLocal _posATL;
            _ps1 setPosATL _posATL;
            _ps1 setParticleParams [
                ["\A3\Data_F\ParticleEffects\Universal\Universal", 16, 10, 32], "", "Billboard",
                1, 1, [0, 0, 0], [0, 0, 0.5], 0, 1, 1, 3, [0.5,1.5],
                [[1,1,1,0.4], [1,1,1,0.2], [1,1,1,0]],
                [0.25,1], 1, 1, "", "", _ps1];
            _ps1 setParticleRandom [0.2, [0.5, 0.5, 0.25], [0.125, 0.125, 0.125], 0.2, 0.2, [0, 0, 0, 0], 0, 0];
            _ps1 setDropInterval 0.05;

            // Smoke
            private _ps2 = "#particlesource" createVehicleLocal _posATL;
            _ps2 setPosATL _posATL;
            _ps2 setParticleParams [
                ["\A3\Data_F\ParticleEffects\Universal\Universal", 16, 7, 1, 1], "", "Billboard",
                1, 5, [0, 0, 1], [0, 0, 1.5], 0, 1, 1, 0.5, [1.75,2,3,4.5], // timerPeriod → size
                [[1,1,1,0], [1,1,1,0.5], [1,1,1,0.4], [1,1,1,0.2], [1,1,1,0]],
                [0.5,0.5], 0, 0, "", "", _ps2];
            _ps2 setParticleRandom [0.5, [1, 1, 0.4], [0, 0, 0.5], 0, 0.125, [0, 0, 0, 0], rad 30, 0];
            _ps2 setDropInterval 0.1;
    };


    case "oily_small" : {
            private _posATL = getPosATL _object;

            private _ps1 = "#particlesource" createVehicleLocal _posATL;
            _ps1 setPosATL _posATL;
            _ps1 setParticleParams [
                ["\A3\Data_F\ParticleEffects\Universal\Universal", 16, 7, 16, 1], "", "Billboard",
                1, 8, [0, 0, 0], [0, 0, 1.5], 0, 10, 7.9, 0.066, [1, 3, 6],
                [[0, 0, 0, 0], [0.05, 0.05, 0.05, 1], [0.05, 0.05, 0.05, 1], [0.05, 0.05, 0.05, 1], [0.1, 0.1, 0.1, 0.5], [0.125, 0.125, 0.125, 0]],
                [0.25], 1, 0, "", "", _ps1];
            _ps1 setParticleRandom [0, [0.25, 0.25, 0], [0.2, 0.2, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
            _ps1 setDropInterval 0.05;
    };


    case "oily_medium" : {
            private _posATL = getPosATL _object;

            private _ps1 = "#particlesource" createVehicleLocal _posATL;
            _ps1 setPosATL _posATL;
            _ps1 setParticleParams [
                ["\A3\Data_F\ParticleEffects\Universal\Universal", 16, 7, 16, 1], "", "Billboard",
                1, 8, [0, 0, 0], [0, 0, 2.5], 0, 10, 7.9, 0.066, [2, 6, 12],
                [[0, 0, 0, 0], [0.05, 0.05, 0.05, 1], [0.05, 0.05, 0.05, 1], [0.05, 0.05, 0.05, 1], [0.1, 0.1, 0.1, 0.5], [0.125, 0.125, 0.125, 0]],
                [0.25], 1, 0, "", "", _ps1];
            _ps1 setParticleRandom [0, [0.25, 0.25, 0], [0.2, 0.2, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
            _ps1 setDropInterval 0.1;
    };


    case "oily_large" : {
            private _posATL = getPosATL _object;

            private _ps1 = "#particlesource" createVehicleLocal _posATL;
            _ps1 setPosATL _posATL;
            _ps1 setParticleParams [
                ["\A3\Data_F\ParticleEffects\Universal\Universal", 16, 7, 16, 1], "", "Billboard",
                1, 8, [0, 0, 0], [0, 0, 2.5], 0, 10, 7.9, 0.066, [4, 12, 20],
                [[0, 0, 0, 0], [0.05, 0.05, 0.05, 1], [0.05, 0.05, 0.05, 1], [0.05, 0.05, 0.05, 1], [0.1, 0.1, 0.1, 0.5], [0.125, 0.125, 0.125, 0]],
                [0.25], 1, 0, "", "", _ps1];
            _ps1 setParticleRandom [0, [0.25, 0.25, 0], [0.2, 0.2, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
            _ps1 setDropInterval 0.2;
    };

    case "wood_light" : {
            private _posATL = getPosATL _object;

            private _ps1 = "#particlesource" createVehicleLocal _posATL;
            _ps1 setPosATL _posATL;
            _ps1 setParticleParams [
                ["\A3\Data_F\ParticleEffects\Universal\Universal", 16, 9, 16, 0], "", "Billboard",
                1, 8, [0, 0, 0], [0, 0, 1.5], 0, 10, 7.9, 0.066, [1, 3, 6],
                [[0.5, 0.5, 0.5, 0], [0.5, 0.5, 0.5, 0.15], [0.5, 0.5, 0.5, 0.15], [0.5, 0.5, 0.5, 0.1], [0.75, 0.75, 0.75, 0.075], [1, 1, 1, 0]],
                [0.25], 1, 0, "", "", _ps1];
            _ps1 setParticleRandom [0, [0.25, 0.25, 0], [0.2, 0.2, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
            _ps1 setDropInterval 0.05;
    };

    case "tiny" : {
            private _posATL = getPosATL _object;

            private _ps1 = "#particlesource" createVehicleLocal _posATL;
            _ps1 setPosATL _posATL;
            _ps1 setParticleParams [
                ["\A3\Data_F\ParticleEffects\Universal\Universal", 16, 9, 16, 0], "", "Billboard",
                1, 2, [0, 0, 0], [0, 0, 1.5], 0, 10, 7.9, 0.066, [.15, .25, .5],
                [[0.5, 0.5, 0.5, 0], [0.5, 0.5, 0.5, 0.15], [0.5, 0.5, 0.5, 0.15], [0.5, 0.5, 0.5, 0.1], [0.75, 0.75, 0.75, 0.075], [1, 1, 1, 0]],
                [0.25], 1, 0, "", "", _ps1];
            _ps1 setParticleRandom [0, [0.05, 0.05, 0], [0.1, 0.1, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
            _ps1 setDropInterval 0.05;
    };
   
    default {  /*...code...*/ }; 
};



_object setVariable ["effects",_effects];

_object addEventHandler ["Deleted", {
    params ["_entity"];

    {
        deleteVehicle _x;
    } forEach (_entity getVariable ["effects", []]);
}];

if (_instant) then {

    [{
        params ["_object"];
        {
            deleteVehicle _x;
        } forEach (_object getVariable ["effects", []]);
    
    }, [_object], 0.5] call CBA_fnc_waitAndExecute;
};

diag_log format ["created smoke %1", _effect];