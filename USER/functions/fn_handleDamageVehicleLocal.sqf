params ["_vehicle"];

_vehicle addEventHandler ["HandleDamage", {
    params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_instigator", "_hitPoint"];

    // prevent damage explosions
    if ((_damage > .88 && _hitPoint == "hitHull") || (_damage > .88 && _hitPoint == "") || damage _unit > .88) then {
        _damage = .88;
    };
    
    _damage
}];