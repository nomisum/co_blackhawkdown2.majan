params ["_vehicle"];

if (isServer) then {
    clearWeaponCargoGlobal _vehicle;
    clearItemCargoGlobal _vehicle;
    clearMagazineCargoGlobal _vehicle;
    clearBackpackCargoGlobal _vehicle;

    _vehicle disableTIEquipment true;

    _vehicle addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch", 30]; 
    _vehicle addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 120]; 
    _vehicle addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell", 10]; 
    _vehicle addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell", 10]; 
    _vehicle addMagazineCargoGlobal ["1Rnd_SmokeBlue_Grenade_shell", 10]; 
    _vehicle addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 10]; 
    _vehicle addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 5]; 
    [_vehicle] call homecoming_fnc_handleDamageVehicle; 
    _vehicle addItemCargoGlobal ["itemGPS", 1];
    _vehicle addWeaponCargoGlobal ["rhs_weap_M136", 3];
};