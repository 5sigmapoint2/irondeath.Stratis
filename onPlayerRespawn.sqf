// ---------------------------------------------------------------------------
// This project is licensed under Arma Public License Share Alike 
// https://www.bistudio.com/community/licenses/arma-public-license-share-alike
// Copyright 2015 Alonso
// ---------------------------------------------------------------------------

// https://forums.bistudio.com/topic/182228-scripted-event-handler-for-entering-and-exiting-incap-state/

private ["_incapacitated"];

// When the player dies enableFatigue is set to true after the respawn
player enableFatigue false;

_incapacitated=player getVariable ["BIS_revive_incapacitated", false];
if (!_incapacitated) then
{
   [] call ID_setPlayerLoadout;

   // Handle hitting the ground
   player addeventhandler ["HandleDamage", {
      _unit = _this select 0;
      _source = _this select 3;
      if (_unit == _source) then
      {
         player switchmove "";
         [] spawn {
            sleep 5;
            player removeAllEventHandlers "HandleDamage";
         }
      };
      0;
   }];

   // Now increase the height
   player setPosATL [getPosATL player select 0, getPosATL player select 1, (getPosATL player select 2) + 600];
};
