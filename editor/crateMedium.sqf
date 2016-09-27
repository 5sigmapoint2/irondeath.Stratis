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
   "U_B_CTRG_3",
   "U_B_CombatUniform_mcam_worn",
   "U_I_CombatUniform_shortsleeve"
];

_vests = [
   "V_PlateCarrier1_blk",
   "V_PlateCarrierGL_blk"
];

_headgear=[
   "H_HelmetLeaderO_ocamo",
   "H_HelmetLeaderO_oucamo",
   "G_Balaclava_oli"
];

_backpacks=[
];

_items = [
   "bipod_01_F_snd",
   "FirstAidKit"
];

_weapons=[
   "srifle_DMR_03_multicam_F",
   "srifle_DMR_06_camo_F",
   "srifle_EBR_F",
   "arifle_MXM_F",
   "LMG_Zafir_F",
   "LMG_Mk200_F",
   "arifle_MX_SW_F",
   "arifle_MX_GL_F",
   "arifle_Katiba_GL_F",
   "arifle_TRG21_GL_F",
   // TANOA
   "arifle_SPAR_01_snd_F",
   "arifle_SPAR_01_GL_snd_F",
   "arifle_SPAR_02_snd_F",
   "arifle_SPAR_03_snd_F",
   "arifle_AKM_F",
   "arifle_AK12_F",
   "arifle_CTARS_hex_F",
   "srifle_DMR_07_hex_F",
   "LMG_03_F"
];

_ammo=[
   "SmokeShell",
   "20Rnd_762x51_Mag",
   "30Rnd_65x39_caseless_mag",
   "100Rnd_65x39_caseless_mag_Tracer",
   "150Rnd_762x54_Box_Tracer",
   "200Rnd_65x39_cased_Box_Tracer",
   "1Rnd_HE_Grenade_shell",
   // TANOA
   "30Rnd_556x45_Stanag",
   "150Rnd_556x45_Drum_Mag_Tracer_F",
   "30Rnd_762x39_Mag_F",
   "100Rnd_580x42_Mag_Tracer_F",
   "20Rnd_650x39_Cased_Mag_F",
   "10Rnd_50BW_Mag_F",
   "200Rnd_556x45_Box_Tracer_Red_F"
];

[_crate, _weapons] call BIS_fnc_addVirtualWeaponCargo;
[_crate, _ammo] call BIS_fnc_addVirtualMagazineCargo;
[_crate, _backpacks] call BIS_fnc_addVirtualBackpackCargo;
[_crate, _uniforms + _vests + _headgear + _items ] call BIS_fnc_addVirtualItemCargo;
