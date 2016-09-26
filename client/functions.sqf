// ---------------------------------------------------------------------------
// This project is licensed under Arma Public License Share Alike 
// https://www.bistudio.com/community/licenses/arma-public-license-share-alike
// Copyright 2015 Alonso
// ---------------------------------------------------------------------------

ID_collectAllSpawnPoints = {
   private ["_spawnPoints", "_marker"];
   
   _spawnPoints = [];
   // Look for all valid spawn points
   {
     _marker = toArray _x;
     _marker resize 17;
     if (toString _marker == "respawn_guerrila_") then {
         _spawnPoints pushBack _x;
     }
   } forEach allMapMarkers;
   
   _spawnPoints;
};

["ID_collectAllSpawnPoints"] call KK_fnc_compileFinal;