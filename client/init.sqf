// ---------------------------------------------------------------------------
// This project is licensed under Arma Public License Share Alike 
// https://www.bistudio.com/community/licenses/arma-public-license-share-alike
// Copyright 2015 Alonso
// ---------------------------------------------------------------------------
private ["_spawnPoint"];

if (isDedicated) exitWith {};
diag_log "Initialising client";

0 fadeRadio 0;

[] call compile preprocessFileLineNumbers "client\functions.sqf";
[] call compile preprocessFileLineNumbers "client\loadout.sqf";
[] call compile preprocessFileLineNumbers "client\killedEventHandler.sqf";

ID_spawnPoints = [] call ID_collectAllSpawnPoints;

// Make sure player object has been created
waitUntil {!isNull player};

// Wait until mission is running
waitUntil {time > 0.1};

// No rabbits, snakes or wind
enableEnvironment false;

// Clean up any animation
player switchMove "";

// Only the side set in editor is allowed
if !(playerSide in [INDEPENDENT]) exitWith
{
   endMission "LOSER";
};

// Get player ready for respawn
[player] joinSilent createGroup playerSide;
player enableSimulation true;
player setVelocity [0,0,0];

// select spawn point
_spawnPointPos = getMarkerPos (ID_spawnPoints call BIS_fnc_selectRandom);
player setPosATL [_spawnPointPos select 0, _spawnPointPos select 1, getPosATL player select 2];

if ((vehicleVarName player) select [0,17] == "BIS_fnc_objectVar") then 
{ 
   player setVehicleVarName "" 
};

diag_log "Client ready";