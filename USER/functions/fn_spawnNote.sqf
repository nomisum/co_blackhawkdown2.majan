params ["_helper"];

[{
    params ["_helper"];

    [   
        getPosATL _helper, 
        getDir _helper, 
        "Fuck fuck fuck... I heard they want to build a trap fest here. New location is probably a mosque, at least I heard they want to bring me to the Imam to record some video before I shall be executed. Fuck. Whoever reads this: HELP!", 
        ["quite", ["messy","PuristaBold"]]
    ] call GRAD_leaveNotes_fnc_spawnNote;

}, [_helper], 20] call CBA_fnc_waitAndExecute;