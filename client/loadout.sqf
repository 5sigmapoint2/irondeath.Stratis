// ---------------------------------------------------------------------------
// This project is licensed under Arma Public License Share Alike 
// https://www.bistudio.com/community/licenses/arma-public-license-share-alike
// Copyright 2015 Alonso
// ---------------------------------------------------------------------------

ID_setPlayerLoadout = {
   diag_log "Setting up player loadout";

   removeAllWeapons player;
   removeAllItems player;
   removeAllAssignedItems player;
   removeUniform player;
   removeVest player;
   removeBackpack player;
   removeHeadgear player;
   removeGoggles player;
   
   player addWeapon "Binocular"; 
   
   [] call (ID_loadouts call BIS_fnc_selectRandom);
   
   player linkItem "ItemMap";
   player linkItem "ItemCompass";
   player linkItem "ItemGPS";
};

ID_loadout1 = {
   player forceAddUniform "U_I_G_resistanceLeader_F";
   player addVest "V_Chestrig_khk";
   player addBackpack "B_AssaultPack_khk";
   player addHeadgear "H_MilCap_gry";
   player addGoggles "G_Sport_Blackred";

   player addmagazines ["9Rnd_45ACP_Mag", 3];
   player addmagazines ["30Rnd_45ACP_Mag_SMG_01", 2];

   player addWeapon "SMG_01_F";
   player addWeapon "hgun_ACPC2_F";
};

ID_loadout2 = {
   player forceAddUniform "U_BG_Guerrilla_6_1";
   player addVest "V_Rangemaster_belt";
   player addItemToVest "HandGrenade";
   player addBackpack "B_AssaultPack_cbr";
   player addHeadgear "H_Cap_tan";

   player addmagazines ["16Rnd_9x21_Mag", 3];
   player addmagazines ["30Rnd_9x21_Mag", 2];

   player addWeapon "SMG_02_F";
   player addWeapon "hgun_Rook40_F";
};

ID_loadout3 = {
   player forceAddUniform "U_BG_Guerilla3_1";
   player addVest "V_BandollierB_cbr";
   player addBackpack "B_AssaultPack_rgr";
   player addHeadgear "H_ShemagOpen_tan";

   player addmagazines ["6Rnd_45ACP_Cylinder", 3];
   player addmagazines ["30Rnd_556x45_Stanag", 2];

   player addWeapon "arifle_Mk20C_plain_F";
   player addWeapon "hgun_Pistol_heavy_02_F";
};

["ID_setPlayerLoadout"] call KK_fnc_compileFinal;
["ID_loadout1"] call KK_fnc_compileFinal;
["ID_loadout2"] call KK_fnc_compileFinal;
["ID_loadout3"] call KK_fnc_compileFinal;

ID_loadouts = [ID_loadout1, ID_loadout2, ID_loadout3];
