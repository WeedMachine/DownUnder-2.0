_item   = _this select 0; 
_amount = _this select 1;

da = "THIS PLAYER TRY DROP " + format ["%1", _amount ] + ". NickName = " + (name player);


if(_amount <= 0)then { fuelshop3 GlobalChat "!!WARNING!! !!CHEATER!! KICK THIS PLAYER OR BAN", fuelshop3 GlobalChat da } else {



if ((!INV_CanUseInventory) or (!INV_CanDropItem)) exitWith {player groupChat localize "STRS_inv_inventar_cannotdrop";};

if(!isnull (nearestobjects[getpos player,["EvMoney","Suitcase"], 1] select 0))exitwith{player groupchat "You cannot drop items on top of each other. move and try again."};

if (_item call INV_getitemDropable) then 

{

if ([_item, -(_amount)] call INV_AddInventoryItem) then 

	{
	
	player groupChat localize "STRS_inv_inventar_weggeworfen";	

	if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};

	sleep 1.5;

	private "_class";
       

       

 
	if(_item == "geld")then{_class = "EvMoney"}else{_class = "Suitcase"};

	_pos = getposASL player;

	_object = _class createvehicle _pos;

	_object setposASL getposASL player;
	_object setvariable ["droparray", [_amount, _item], true];

	} 
	else 
	{
	
	player groupChat localize "STRS_inv_inventar_drop_zuwenig";
	
	};

} 
else 
{

player groupChat localize "STRS_inv_inventar_ablege_verbot";

};
};
