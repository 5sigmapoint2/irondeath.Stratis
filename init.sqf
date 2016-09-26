// ---------------------------------------------------------------------------
// This project is licensed under Arma Public License Share Alike 
// https://www.bistudio.com/community/licenses/arma-public-license-share-alike
// Copyright 2015 Alonso
// ---------------------------------------------------------------------------

diag_log format ["Kicking off: %1", missionName];

enableSaving [false, false];
enableSentences false;

[] call compile preprocessFileLineNumbers "kkUtils.sqf";

if (!isDedicated) then
{
		if (hasInterface) then // Normal player
		{
         [] execVM "client\init.sqf";
      };
}
else
{
   [] execVM "server\init.sqf";
};
