closedialog 0;

if (_exportscript == 1) exitwith {player groupchat "you are already exporting please wait"};

_preis      = _this select 0;
_item       = _this select 1;
_stock      = _this select 2;
_maxstock   = _this select 3;
_shopnum    = _this select 4;

call compile format['if(%1avail > 0)then{%1avail = %1avail - 1;["%1avail", %1avail] spawn ClientSaveVar};', _item];

sleep 2;
if (_exportscript == 1) exitwith {player groupchat "you are already exporting please wait"};	
_exportscript = 1;

if(_stock >= _maxstock)exitwith{player groupchat "the shop has reached its maximum stock for this item/vehicle";_exportscript = 0};
																			
player groupchat format["The vehicle has been exported for $%1!", _preis];
sleep 1;
['geld', _preis] call INV_AddInventoryItem;
_exportscript = 0;

format['["%1", (%2 + 1), %3] call INV_itemstocksupdate;', _item, _stock, _shopnum] call broadcast;

