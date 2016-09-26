// ---------------------------------------------------------------------------
// This project is licensed under Arma Public License Share Alike 
// https://www.bistudio.com/community/licenses/arma-public-license-share-alike
// Copyright 2015 Alonso
// ---------------------------------------------------------------------------

ID_KilledMessages = [ 
   "%1 is mostly dead",
   "%1 bit the dust",
   "%1 is now brown bread",
   "%1 is counting worms",
   "%1 is food for worms",
   "%1 has been pulverized",
   "%1 has been destroyed",
   "%1 has been annihilated",
   "%1 has been executed",
   "%1 has been fragged",
   "%1 has been finished",
   "%1 has been terminated",
   "%1 has expired and gone to meet its maker",
   "%1 has ceased to be",
   "%1 is an ex-human",
   "%1 is a late human",
   "%1 is gone to sing with the choir invisible",
   "%1 is in the horizontal phone booth",
   "%1 is sleeping with the fishes",
   "%1 is wasted",
   "%1 reached his expiration date",
   "%1 is leaving the server feet first",
   "%1 dropped dead", 
   "%1 went bung",
   "%1 went for a Burton",
   "%1 just became a root inspector",
   "%1 is belly up",
   "%1 is definitely done dancing",
   "%1 is dead meat",
   "%1 is going back home in a box",
   "%1 is making acquaintance with The Grim Reaper",
   "%1 is K.I.A",
   "%1 is T.U.",
   "%1 is not with us anymore",
   "%1 is speechless (an lifeless)",
   "%1 pegged out",
   "%1 has got coins on the eyes",
   "%1 is riding the pale horse",
   "%1 has no arguments left",
   "%1 was not very popular",
   "%1 is now fully aware bullets do kill",
   "%1 didn't have a chance",
   "%1 and dodos now share the same fate",
   "%1 came to a sticky end",
   "%1 is now dancing with Elvis",
   "%1 is now 21gr lighter",
   "%1 is no longer among the livings",
   "R.I.P %1",
   "%1 is caput",
   "%1 is now a stiff",
   "%1 was too young to buy the farm",
   "%1 felt ready to check out",
   "%1 kicked the oxygen habit",
   "%1 kicked the bucket",
   "%1 is six feet under",
   "%1 was put out of his misery"
];

player addEventHandler ["Killed", 
{
   private ["_killerName", "_target", "_targetName"];
   if (hasInterface) then
   {
      _target = _this select 0;
      _targetName = name _target;
      _killerName = name (_this select 1);

      if (!(_target getVariable ["BIS_revive_incapacitated", false])) then
      {
         format [ID_KilledMessages call BIS_fnc_selectRandom, _targetName] remoteExecCall ["systemChat", -2, true]; // everywhere but server
      }
      else
      {
         format ["%1 está herido", _targetName] remoteExecCall ["systemChat", -2, true]; // everywhere but server
      };
   };
}];
