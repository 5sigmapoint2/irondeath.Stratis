// ---------------------------------------------------------------------------
// This project is licensed under Arma Public License Share Alike 
// https://www.bistudio.com/community/licenses/arma-public-license-share-alike
// Copyright 2015 Alonso
// ---------------------------------------------------------------------------

private ["_crate", "_uniforms", "_vests", "_headgear", "_backpacks", "_items", "_weapons", "_ammo"];
_crate = _this select 0;

_crate allowDamage false;
clearWeaponCargoGlobal  _crate;
clearMagazineCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

0 = ["AmmoboxInit",[_crate,false]] spawn BIS_fnc_arsenal;

_uniforms = [
];

_vests = [
   "V_BandollierB_cbr"
];

_headgear=[
   "H_HelmetB_camo",
   "H_HelmetB_light_black",
   "G_Bandanna_tan",
   "H_HelmetSpecO_ocamo"
];

_backpacks=[
];

_items = [
];

_weapons=[
   "arifle_Katiba_F",
   "arifle_MX_F",
   "arifle_TRG21_F",
   "SMG_01_F",
   "SMG_02_F",
   // TANOA
   "SMG_05_F",
   "arifle_AKS_F"
];

_ammo=[
   "30Rnd_65x39_caseless_mag",
   "30Rnd_65x39_caseless_green",
   "30Rnd_556x45_Stanag",
   "30Rnd_45ACP_Mag_SMG_01",
   "30Rnd_9x21_Mag",
   // TANOA
   "30Rnd_9x21_Mag_SMG_02",
   "30Rnd_545x39_Mag_F"
];

[_crate, _weapons] call BIS_fnc_addVirtualWeaponCargo;
[_crate, _ammo] call BIS_fnc_addVirtualMagazineCargo;
[_crate, _backpacks] call BIS_fnc_addVirtualBackpackCargo;
[_crate, _uniforms + _vests + _headgear + _items] call BIS_fnc_addVirtualItemCargo;
