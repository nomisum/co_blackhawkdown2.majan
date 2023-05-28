
["CBA_loadingScreenDone", {
    _waitCondition = {time > (_this + 3) && isGameFocused};

    cutText ["loading", "BLACK FADED", 999];
    0 fadeSound 0;
    diwako_dui_main_toggled_off = true;

    [_waitCondition,{
        if (!didJIP) then {
            [] spawn homecoming_fnc_startIntro;
        } else {
            cutText ["", "BLACK IN", 3];
            3 fadeSound 1;
            diwako_dui_main_toggled_off = false;
            player action ['WeaponOnBack', player];
        };
    },time] call CBA_fnc_waitUntilAndExecute;

}] call CBA_fnc_addEventHandler;
