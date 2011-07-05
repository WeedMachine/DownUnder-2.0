DuMusicFull = 0;
DuMusicLite = 0;

if (isClass(configFile >> "CfgPatches" >> "DUmusicFull")) then
{
_h = [] execVM "CLAY_CarRadio\initCarRadio.sqf";

waitUntil{scriptDone  _h};
DuMusicFull = 1;
};

if (isClass(configFile >> "CfgPatches" >> "DUmusicLite")) then
{
_h = [] execVM "CLAY_CarRadio\initCarRadio.sqf";

waitUntil{scriptDone  _h};
DuMusicLite = 1;
};
sleep 10;
if (DuMusicFull == 1) exitwith {hint "Full Car Radio Enabled"}; 
if (DuMusicLite == 1) exitwith {hint "Lite Car Radio Enabled Full Version on AddonSync"};
if (DuMusicFull == 0) exitwith {hint "Car Radio is Not Installed"};        