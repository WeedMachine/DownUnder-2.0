_array = _this select 3;
_art = _array select 0;
_type = _array select 1;
_playerweight = call INV_GetOwnWeight;
_planttype = null;


_plantyield = 5;
_seedyield = 1;


if (_art == "Burn") then
{
		
	if (_type == "Apfel") then
	{
	
	_plant = nearestObject [player, "MAP_t_salix2s"];
	
	deleteVehicle _plant;
	player groupChat "You burned the Apple Tree";
	};

};


if (_art == "Harvest") then

{



if (harvestscript == 1) exitwith {player groupchat "you are already harvesting"};
	harvestscript = 1;


	switch _type do
	{
	case "Apfel": {_plantType = "MAP_t_salix2s";};
	};

		if(( _playerweight) + ((_type call INV_GetItemTypeKg)* _plantyield) + ((_type + "Seed" call INV_GetItemTypeKg)* _seedyield ) > INV_Tragfaehigkeit) exitwith {harvestscript = 0; player groupchat localize "STRS_inv_buyitems_get_zuschwer";};
		player removeaction (_this select 2);
		

		_plant = nearestObject [player, _plantType];

	    deletevehicle _plant;
	   [_type + "Seed", _seedyield] call INV_AddInventoryItem;
       [_type, _plantyield] call INV_AddInventoryItem;
	   
	    	
		player groupchat format["You Harvested %1 Plants", _type];
sleep 2;
harvestscript = 0;

};

//Edited by Weed
//Written by Dustoff and Edwood
