// rob gas station script, called on client, the amount u steal is determined by a server loop, in stationrobloop.sqf
// written by eddie vedder edit by whippy


_selection = ((_this select 3) select 0);

if (_selection == "station 1") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the Servo!";
	}; 
_sel = "Service Station 1";
(format['if(!("Robbed a Servo" in %1_reason))then{%1_reason = %1_reason + ["Robbed a Servo"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station1money] call INV_AddInventoryItem;
(format ['server globalChat "Someone robbed %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the Service Station 1!", station1money];
station1money = 0;
publicvariable "station1money";
};

if (_selection == "station 2") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the Servo!";
	};
_sel = "Service Station 2";
(format['if(!("Robbed a Servo" in %1_reason))then{%1_reason = %1_reason + ["Robbed a Servo"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station2money] call INV_AddInventoryItem;
(format ['server globalChat "Someone robbed %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the Service Station 2!", station2money];
station2money = 0;
publicvariable "station2money";
};

if (_selection == "station 3") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the Servo!";
	};
_sel = "Service Station 3";
(format['if(!("Robbed a Servo" in %1_reason))then{%1_reason = %1_reason + ["Robbed a Servo"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station3money] call INV_AddInventoryItem;
(format ['server globalChat "Someone robbed %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the Service Station 3!", station3money];
station3money = 0;
publicvariable "station3money";
};

if (_selection == "station 4") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the Servo!";
	};
_sel = "Service Station 4";
(format['if(!("Robbed a Servo" in %1_reason))then{%1_reason = %1_reason + ["Robbed a Servo"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station4money] call INV_AddInventoryItem;
(format ['server globalChat "Someone robbed %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the Service Station 4!", station4money];
station4money = 0;
publicvariable "station4money";
};

if (_selection == "station 5") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the Servo!";
	};
_sel = "Service Station 5";
(format['if(!("Robbed a Servo" in %1_reason))then{%1_reason = %1_reason + ["Robbed a Servo"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station5money] call INV_AddInventoryItem;
(format ['server globalChat "Someone robbed %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the Service Station 5!", station5money];
station5money = 0;
publicvariable "station5money";
};

if (_selection == "station 6") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the Servo!";
	};
_sel = "Service Station 6";
(format['if(!("Robbed a Servo" in %1_reason))then{%1_reason = %1_reason + ["Robbed a Servo"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station6money] call INV_AddInventoryItem;
(format ['server globalChat "Someone robbed %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from Service Station 6!", station6money];
station6money = 0;
publicvariable "station6money";
};

