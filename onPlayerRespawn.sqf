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
   player removeAllEventHandlers "HandleDamage";

   [] call ID_setPlayerLoadout;

   // Handle hitting the ground
   diag_log "Adding event handler";
   player addeventhandler ["HandleDamage", {
      if ( (_this select 4) == "" ) then
      {
         player switchmove "";
         0;
      }
   }];

   // Now increase the height
   diag_log "Setting spawn position";
   player setPosATL [getPosATL player select 0, getPosATL player select 1, (getPosATL player select 2) + 600];

   [] spawn {
      sleep 16;
      player removeAllEventHandlers "HandleDamage";
   }
};
