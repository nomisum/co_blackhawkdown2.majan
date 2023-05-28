 params ["_body"];

if (!hasInterface) exitWith {};

private _action = [
   "convertToBodybag",
   "Wrap in bodybag",
   "\A3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\uniform_ca.paa",
    {[_target] call homecoming_fnc_putInBodyBag; }, {true}
       
  
] call ace_interact_menu_fnc_createAction;
[_body, 0, [], _action, true] call ace_interact_menu_fnc_addActionToObject;
