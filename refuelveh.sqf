_art = _this select 0;
_vcl	= vehicle player;
if (_art == "use") then 
	{
	CopFeature = false;
	if (isCop) exitWith {CopFeature = true;};
		if (CopFeature) then 
		
		{

			_item = _this select 1;
			_anzahl = _this select 2;
				if (player == vehicle player)  exitWith {
			player groupChat localize "STRS_inv_items_repair_refuel_notincar";
			};

			   if (!(player == driver vehicle player)) exitWith {
			player groupChat localize "STRS_inv_items_repair_refuel_notdriver";
			};

				if ((fuel vehicle player) == 1)  exitWith {
			player groupChat localize "STRS_inv_items_refuel_notneeded";
			};


			[_item, -1] call INV_AddInventoryItem;
			player groupchat "Refueling Vehicle!";
			sleep 15;
			vehicle player setFuel 1;
				player groupChat localize "STRS_inv_items_refuel_refueled";

		}else{player groupChat "you can not use refuel cans"};

	};



