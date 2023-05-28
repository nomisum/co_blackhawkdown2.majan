cutText ["", "BLACK IN", 1];
3 fadeSound 1;
private _musicVolumeCache = musicVolume;
0 fadeMusic 1;
diwako_dui_main_toggled_off = true;


[{
    isNull abuserPisser
},{
    params ["_musicVolumeCache"];

    if (isServer) then {

        private _playerStandIn = objNull;

        {
           if (typeOf _x == "B_Medic_F") then {
                _playerStandIn = _x;
           };
        } forEach allPlayers; 

        if (isNull _playerStandIn) then {
            _playerStandIn = selectRandom allPlayers;
        };



        _playerStandIn setPos (abuserPilot getPos [1, 0]);
        _playerStandIn setDir ((_playerStandIn getRelDir abuserPilot) + 90);

        [_playerStandIn, "UnconsciousReviveMedic_A"] remoteExec ["switchMove"];
        [abuserPilot, "Acts_LyingWounded_loop3"] remoteExec ["switchMove"];

        _playerStandIn addEventHandler ["AnimDone", {
            params ["_entity", "_anim"];

            if (missionNamespace getVariable ["cutsceneDone", false]) exitWith {
                _entity removeAllEventHandlers "AnimDone";
                [_playerStandIn, ""] remoteExec ["switchMove"];
            };

            [_playerStandIn, "UnconsciousReviveMedic_A"] remoteExec ["switchMove"];
        }];

        abuserPilot addEventHandler ["AnimDone", {
            params ["_entity", "_anim"];

            if (missionNamespace getVariable ["cutsceneDone", false]) exitWith {
                _entity removeAllEventHandlers "AnimDone";
                [abuserPilot, ""] remoteExec ["switchMove"];
            };

            [abuserPilot, "Acts_LyingWounded_loop3"] remoteExec ["switchMove"];
        }];

        
        // time skipping
        setTimeMultiplier 120;

        [{
            date select 3 >= 20
        }, {
            setTimeMultiplier 1;
            [] remoteExec ["homecoming_fnc_fog", [0,-2] select isDedicated];

        }] call CBA_fnc_waitUntilAndExecute;


    };

    [_musicVolumeCache] spawn {
        params ["_musicVolumeCache"];

        sleep 2;

        cutText ["", "BLACK IN", 3];

        private _position = (getPos cutsceneHelper_3);
        _position set [2,3];

        private _camera = "camera" camCreate _position;


        showCinemaBorder true;


        _camera cameraEffect ["internal", "BACK"];
        _camera camCommand "inertia on";
        _camera camSetPos _position;
        _camera camSetTarget abuserPisser;
        _camera camSetFOV 0.6;
        _camera camCommit 0;

        _camera camSetPos _position;
        _camera camSetTarget abuserPilot;
        _camera camSetFOV 0.6;
        _camera camCommit 0;

        _camera camSetPos (getPos cutsceneHelper_1);
        _camera camSetTarget abuserPilot;
        _camera camSetFOV 0.5;
        _camera camCommit 25;
        sleep 6;


        cutText ["", "BLACK OUT", 1];
        sleep 2;

        if (isServer && date select 3 < 20) then {
            skipTime 4;
        };

        sleep 2;

        cutText ["", "BLACK IN", 1];

        sleep 6;

        cutText ["", "BLACK OUT", 1];
        sleep 2;

        if (isServer && date select 3 < 20) then {
            skipTime 4;
        };

        sleep 2;

        cutText ["", "BLACK IN", 1];

        sleep 6;

        cutText ["", "BLACK OUT", 1];
        sleep 2;

        if (isServer && date select 3 < 20) then {
            [[2035,7,11,20,0]] remoteExec ["setDate"];
            0 setOvercast 0; forceWeatherChange;
        };

        sleep 2;

        cutText ["", "BLACK IN", 1];

        sleep 6;

        cutText ["", "BLACK OUT", 1];
        sleep 2;

        if (isServer && date select 3 < 20) then {
            skipTime 4;
        };

        sleep 2;

        cutText ["", "BLACK IN", 1];

        sleep 6;


        missionNamespace setVariable ["cutsceneDone", true, true];

        // needs to be executed on each client!
        /*
        private _objects = nearestObjects [[worldSize/2, worldSize/2], ["House", "StreetLamp"], 5000];
        {_x switchLight "OFF";} forEach _objects;

         private _objects = nearestObjects [[worldSize/2, worldSize/2], [ 
            "Land_PowerPoleWooden_L_F",
            "Land_LampShabby_F", 
            "Land_PowerPoleWooden_small_F",  
            "PowerLines_Wires_base_F", 
            "Land_PowerPoleWooden_F"
        ], 5000];  
        { _x switchLight "ON"; } forEach _objects;
        */

        _camera cameraEffect ["terminate","back"];
        camDestroy _camera;
        cutText ["", "BLACK FADED", 5];
        sleep 5;

        cutText ["", "BLACK IN", 5];

        [player,""] remoteExec ["switchMove"];

        sleep 5;
        showCinemaBorder false;
        diwako_dui_main_toggled_off = false;
        1 fadeMusic _musicVolumeCache;




        ["Pilot stabilisiert","und außer Lebensgefahr.","Return to Base!"] spawn BIS_fnc_infoText;

        [{
            params ["_args", "_handle"];
            
            setAperture 3;

            if (missionNamespace getVariable ["apertureReset", false]) then {
                [_handle] call CBA_fnc_removePerFrameHandler;
            };
        }, 1, []] call CBA_fnc_addPerFrameHandler;

    };

}, [_musicVolumeCache]] call CBA_fnc_waitUntilAndExecute;



if (isNull abuserPilot) exitWith {
    cutText ["", "BLACK IN", 5];
    sleep 5;
    diwako_dui_main_toggled_off = false;
    1 fadeMusic _musicVolumeCache;

    player action ['WeaponOnBack', player];
};

private _position = (getPos cutsceneHelper_2);
_position set [2,3];
private _camera = "camera" camCreate _position;


showCinemaBorder true;

playMusic "CUP_A2OA_Night_Visions";

_camera cameraEffect ["internal", "BACK"];
_camera camCommand "inertia on";
_camera camSetPos _position;
_camera camSetTarget abuserPisser;
_camera camSetFOV 0.6;
_camera camCommit 0;

sleep 10;

cutText ["", "BLACK OUT", 5];
sleep 7;

if (isServer) then {
    deleteVehicle abuserPisser;
};