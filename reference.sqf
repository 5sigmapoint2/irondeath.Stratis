// This file is for reference. Not being actually called

// Code for trigger
!(vehicle player in thislist) && (alive player) && !(player getVariable "BIS_IS_inAgony" isEqualTo true)
cutText ["Wrong way mate...", "BLACK OUT", 3, true];
cutText ["Welcome back!", "BLACK IN", 2];

// Code for ammo boxes
this allowDamage false;
clearWeaponCargo this;
clearMagazineCargo this;
clearItemCargo this;
0 = ["AmmoboxInit",[this,true]] spawn BIS_fnc_arsenal;