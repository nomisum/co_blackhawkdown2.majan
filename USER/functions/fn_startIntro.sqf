cutText ["", "BLACK IN", 15];
3 fadeSound 1;
private _musicVolumeCache = musicVolume;
0 fadeMusic 1;



private _camera = "camera" camCreate (getPos introPos_1);

showCinemaBorder true;

playMusic "Track_O_04";


_camera cameraEffect ["internal", "BACK"];
_camera camCommand "inertia off";
_camera camSetPos (getPos introPos_1);
_camera camSetTarget introTarget_0;
_camera camSetFOV 0.35;
_camera camCommit 0;

_camera camSetPos (getPos introPos_2);
_camera camSetTarget introTarget_1;
_camera camCommit 12;
sleep 11;

_camera camSetPos (getPos introPos_3);
_camera camSetTarget introTarget_2;
_camera camCommit 0;

_camera camSetPos (getPos introPos_4);
_camera camSetTarget introTarget_3;
_camera camCommit 15;
sleep 14;

_camera camSetPos (getPos introPos_5);
_camera camSetTarget introTarget_4;
_camera camCommit 0;

_camera camSetPos (getPos introPos_6);
_camera camSetTarget introTarget_5;
_camera camCommit 4;
sleep 3;

_camera camSetPos (getPos introPos_7);
_camera camSetTarget introTarget_6;
_camera camCommit 0;

_camera camSetPos (getPos introPos_8);
_camera camSetTarget introTarget_7;
_camera camCommit 4;
sleep 3;

_camera camSetPos (getPos introPos_9);
_camera camSetTarget introTarget_8;
_camera camCommit 0;

_camera camSetPos (getPos introPos_10);
_camera camSetTarget introTarget_9;
_camera camCommit 4;
sleep 3;

_camera camSetPos (getPos introPos_11);
_camera camSetTarget introTarget_10;
_camera camCommit 0;

_camera camSetPos (getPos introPos_12);
_camera camSetTarget introTarget_11;
_camera camCommit 4;
sleep 3;

_camera camSetPos (getPos introPos_13);
_camera camSetTarget introTarget_12;
_camera camCommit 0;

_camera camSetPos (getPos introPos_14);
_camera camSetTarget introTarget_13;
_camera camCommit 4;
sleep 3;

cutText ["", "BLACK OUT", 5];

_camera camSetPos (getPos introPos_15);
_camera camSetTarget introTarget_14;
_camera camCommit 0;

_camera camSetPos (getPos introPos_16);
_camera camSetTarget introTarget_15;
_camera camCommit 4;
sleep 3;

player action ['WeaponOnBack', player]; // prepare to look good
sleep 2;


_camera cameraEffect ["terminate","back"];
camDestroy _camera;
cutText ["", "BLACK FADED", 5];
sleep 5;

cutText ["", "BLACK IN", 5];

sleep 5;

diwako_dui_main_toggled_off = false;
1 fadeMusic _musicVolumeCache;

["FOB Revolver", "06:00 Uhr"] spawn BIS_fnc_infoText;