closedialog 0; // Closes Dialog Instantly

sleep 1; // Sleep the script before it checks

if (exportscript == 1) exitwith {player groupchat "you are already exporting please wait"}; //Checks that your not already exporting

_item 	      = _this select 0;
_infos        = _item call INV_getitemArray;
_shopnum      = gunshop1 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

sleep 1; // Sleep the script before it checks again

if (exportscript == 1) exitwith {player groupchat "you are already exporting please wait"};	 //Checks again

exportscript = 1; // The script starts now.

if(_stock >= _maxstock)exitwith{player groupchat "the shop has reached its maximum stock for this item"};

sleep 1;
																			
['geld', _preis] call INV_AddInventoryItem;

exportscript = 0; // End of script

player groupchat format["The weapon has been exported for $%1!", _preis];

call compile format['if(%1avail > 0)then{%1avail = %1avail - 1;["%1avail", %1avail] spawn ClientSaveVar};', _item];

format['["%1", (%2 + 1), %3] call INV_itemstocksupdate;', _item, _stock, _shopnum] call broadcast;



//Commented by Weed
