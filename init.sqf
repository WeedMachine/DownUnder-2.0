enableSaving [false, false];
WEST setFriend [EAST, 1];
EAST setFriend [WEST, 1];
version        	= "1.01";
compatible     	= 102;
internDebug    	= false;
debug          	= false;
addonversion   	= false;
dedicatedServer = false;
copscount      	= 17;
civscount      	= 34;
playercount    	= 51;
debugarray     	= [];
StartMoney     	= 20000;
nopop	   	= true;	
canuseshopagain = 1;

maxfacworkers2 = 90;
facworkercost2 = 5000;

publicVariable "INV_ItemTypenArray";
publicvariable "INV_itemstocks";

[] execVM "briefing.sqf";

call compile preprocessfile "triggers.sqf";

waitUntil { ( (time > 1) and ((alive player) or (local server)) ) };

_h = [] execVM "playerarrays.sqf";																																			

waitUntil{!isNil"rolenumber"};

if (player in auspawn) then {
if(!internDebug)then{["auspawn"] execVM "introcam.sqf";["texte"] execVM "introcam.sqf";};};

if (player in nzspawn) then {
if(!internDebug)then{["nzspawn"] execVM "introcam.sqf";["texte"] execVM "introcam.sqf";};};

if(local server)then{execVM "targets.sqf";};

_h = [53, rolenumber] execVM "initfuncs.sqf";

waitUntil{scriptDone  _h};

_h = [playerarray, playerstringarray, !iscop] execVM "INVvars.sqf";

waituntil{scriptDone  _h};

_h = [] execVM "bankexec.sqf";

waitUntil{scriptDone  _h};

_h = []	execVM "execlotto.sqf";

waitUntil{scriptDone  _h};

_h = [] execVM "initWPmissions.sqf";

waitUntil{scriptDone  _h};

_h = [] execVM "gfx.sqf";

waitUntil{scriptDone  _h};

_h = [] execVM "animList.sqf";

waitUntil{scriptDone  _h};

_h = []	execVM "miscfunctions.sqf";

waitUntil{scriptDone  _h};

_h = [] execVM "variables.sqf";

waitUntil{scriptDone  _h};

waitUntil {!isNil"IntroInit"};

[SkipTimeDay, SkipTimeNight, 1] execVM "skiptime.sqf"; 
[] execVM "weather.sqf";
setPitchBank = compile preprocessfile "setPitchBank.sqf";

publicvariable "station1robbed";
publicvariable "station2robbed";
publicvariable "station3robbed";
publicvariable "station4robbed";
publicvariable "station5robbed";
publicvariable "station6robbed";

if(!dedicatedserver) then

{

["clientloop"] execVM "commonloop.sqf";
[0,0,0,["clientloop"]] execVM "gangs.sqf";
[] execVM "respawn.sqf";
[] execVM "itemactions.sqf";
[] execVM "petrolactions.sqf";
//[] execVM "holsterscriptveh.sqf";
[] execVM "SpeedCams.sqf";
[] execVM "nametags.sqf";
[] execVM "initplayer.sqf";
//[] execVM "teargas.sqf";
[] execVM "power.sqf";
[] execVM "HQbomb.sqf";
[] execVM "supporters.sqf";
[2] execVM "markers.sqf";
[3] execVM "markers.sqf";
[] execVM "salaries.sqf";
[] execVM "actions.sqf";
[] execVM "PoliceFuncs.sqf";

[] execVM "SWATCHANGE.sqf";

for [{_i=0}, {_i < (count INV_ItemFabriken)}, {_i=_i+1}] do {_i execVM "facqueue.sqf"};

player addEventHandler ["fired", {["fired", (_this select 4), (_this select 1)] execVM "stun.sqf";}];
player addEventHandler ["handleDamage", {_this call compile preprocessfile "sethit.sqf"}];

onKeyPress = compile preprocessFile "onKeyPress.sqf";
waituntil {!(IsNull (findDisplay 46))};
(findDisplay 46) displaySetEventHandler ["KeyDown", "_this call onKeyPress"];

};

if (isServer) then 

{

_h = [] execVM "e851a47aba937daa12af02679bd0bbac\8417a031bdadfb493a827cfec74bba14.sqf";

waitUntil{scriptDone _h};

//=======================rob gas station init and variables================
[] execVM "stationrobloop.sqf";
station1money = 5000;
publicvariable "station1money";

station2money = 5000;
publicvariable "station2money";

station3money = 5000;
publicvariable "station3money";

station4money = 5000;
publicvariable "station4money";

station5money = 5000;
publicvariable "station5money";

station6money = 5000;
publicvariable "station6money";

waitUntil{scriptDone  _h};


for [{_i=0}, {_i < (count INV_ItemShops)}, {_i=_i+1}] do {((INV_ItemShops select _i) select 0) execVM "nomove.sqf"; sleep 0.2;};
for [{_i=0}, {_i < (count workplacejob_deliveryflagarray)}, {_i=_i+1}] do {(workplacejob_deliveryflagarray select _i) execVM "nomove.sqf"; sleep 0.2;};

};

waituntil {!isnil "bis_fnc_init"};
_fnc = ["ca\missions_pmc\data\ui_gps_ca.paa",-0.05,0.16] call bis_fnc_customGPS;

_h = [] execVM "DUInitCarRadio.sqf";

waitUntil{scriptDone  _h};

xx = [this] execvm "\GNT_FSF\Lash.sqf";



