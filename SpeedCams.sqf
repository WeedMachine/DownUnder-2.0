private ["_penalty"];

while {isciv} do 

{
DonatorHolder = false;
if("donator" call INV_HasLicense)then{DonatorHolder = true;};
_car    = vehicle player;
_speed  = speed _car;
_type   = typeof _car;

	{

	if ((player == driver _car) and (_car distance _x < 30) and (_speed >= 103) and !(_car iskindof "Air")) then 

		{ 

		_infos   = _type call INV_getitemArray;
		_license = (_infos select 4) select 1;

		titleCut [" ","white in",1];

		if(_speed >= 103  and _speed < 110) then {_penalty = 2};
		if(_speed >= 110 and _speed < 130) then {_penalty = 2};
		if(_speed >= 130 and _speed < 150) then {_penalty = 3};
		if(_speed >= 150 and _speed < 170) then {_penalty = 5};
		if(_speed >= 180 		 ) then {_penalty = 10};

		player groupchat format["You have just been flashed by a speed camera Slow down! (Limit: 103, Speed: %1)", round _speed];

		sleep 2;

		(format['if(!%3) then {server globalchat "%1 was photographed driving without a license! He is now wanted.";if(!("driving without a license" in %1_reason))then{%1_reason = %1_reason + ["driving without a license"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 10000;}', player, _license, (_license call INV_HasLicense)]) call broadcast; 

		if(demerits == 0)exitwith{};

		demerits = demerits - _penalty;
		if(demerits < 0)then{demerits = 0};

		player groupchat format["Demerit points lost: %1. Demerit points remaining: %2", _penalty, demerits];

			(format['if(%3 == 0) then 
			
			{server globalchat "%1 has lost his %2 license!";
			
						if(player == %1)then
				{
							if (!(DonatorHolder)) then
					{
							INV_LizenzOwner = INV_LizenzOwner - ["%2"];
							["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
								
						if ("car" call INV_HasLicense) then 
						{INV_LizenzOwner = INV_LizenzOwner - ["car"];
								
						};
			
					};	
					
				};		
			
			}', player, _license, demerits]) call broadcast; 

		}; 

	} foreach INV_Serverspeedcamarray;

sleep 0.5;

};
