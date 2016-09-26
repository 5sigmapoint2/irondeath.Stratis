// ---------------------------------------------------------------------------
// This project is licensed under Arma Public License Share Alike 
// https://www.bistudio.com/community/licenses/arma-public-license-share-alike
// Copyright 2015 Alonso
// ---------------------------------------------------------------------------

private ["_crate", "_uniforms", "_vests", "_headgear", "_backpacks", "_weapons", "_ammo"];
_crate = _this select 0;

_crate allowDamage false;
clearWeaponCargoGlobal  _crate;
clearMagazineCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

0 = ["AmmoboxInit",[_crate,false]] spawn BIS_fnc_arsenal;

_uniforms = [
   "U_B_GhillieSuit",
   "U_O_GhillieSuit",
   "U_B_CTRG_1",
   "U_O_CombatUniform_ocamo",
   "U_O_CombatUniform_oucamo"
];

_vests = [
   "V_PlateCarrierGL_mtp",
   "V_PlateCarrier2_rgr",
   "V_PlateCarrierSpec_mtp"
];

_headgear=[
   "H_HelmetLeaderO_ocamo",
   "H_HelmetLeaderO_oucamo",
   "G_Balaclava_oli"
];

_backpacks=[
];

_items = [
   "FirstAidKit",
   "bipod_02_F_hex"
];

_weapons=[
   "srifle_DMR_05_tan_f",
   "srifle_DMR_02_camo_F",
   "MMG_01_hex_F",
   "MMG_02_camo_F",
   "srifle_DMR_04_Tan_F"   
];

_ammo=[
   "HandGrenade",
   "SmokeShell",
   "SmokeShellRed",
   "10Rnd_93x64_DMR_05_Mag",
   "10Rnd_338_Mag",
   "150Rnd_93x64_Mag",
   "130Rnd_338_Mag",
   "10Rnd_127x54_Mag"
];

[_crate, _weapons] call BIS_fnc_addVirtualWeaponCargo;
[_crate, _ammo] call BIS_fnc_addVirtualMagazineCargo;
[_crate, _backpacks] call BIS_fnc_addVirtualBackpackCargo;
[_crate, _uniforms + _vests + _headgear + _items ] call BIS_fnc_addVirtualItemCargo;
