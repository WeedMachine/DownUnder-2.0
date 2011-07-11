//Skript zum exportieren von Items - ITEM EXPORTING SCRIPT
_item    = _this select 0;
_infos   = _item call INV_getitemArray;

_carobjectinv   = (tuning1 call INV_getshopArray) select 4;
_equiinv	= (equipshop call INV_getshopArray) select 4;
_fuelinv	= (fuelshop1 call INV_getshopArray) select 4;
_mininginv	= (Oil_1 call INV_getshopArray) select 4;


if ([_item, _carobjectinv] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute2")) exitWith {hint "Dialog Error!"};

//=====================Nubak Tuning SHOP====================================

_shopnum      = tuning1 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["Nubak for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportitem.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

//=====================Kinsella Tuning SHOP====================================

_shopnum      = tuning2 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [4, format["Kinsella for $%1", _preis]];
buttonSetAction [4, format['[%1,"%2",%3,%4,%5] execVM "exportitem.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];


};



if ([_item, _equiinv] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute1")) exitWith {hint "Dialog Error!"};

//=====================Bolabongo Equipment Shop====================================

_shopnum      = equipshop call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["Bolabongo for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportitem.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

};



if ([_item, _fuelinv] call INV_iteminshop) exitwith

{

if (!(createDialog "Distribute6")) exitWith {hint "Dialog Error!"};

//=====================Kinsella service station====================================

_shopnum      = fuelshop1 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["Kinsella for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportitem.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

//=====================Kwako service station====================================

_shopnum      = fuelshop2 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [4, format["Kwako for $%1", _preis]];
buttonSetAction [4, format['[%1,"%2",%3,%4,%5] execVM "exportitem.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

//=====================Bolabongo service station====================================

_shopnum      = fuelshop3 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [5, format["Bolabongo for $%1", _preis]];
buttonSetAction [5, format['[%1,"%2",%3,%4,%5] execVM "exportitem.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

//=====================Obmewa service station====================================

_shopnum      = fuelshop4 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [6, format["Obmewa for $%1", _preis]];
buttonSetAction [6, format['[%1,"%2",%3,%4,%5] execVM "exportitem.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

//=====================Harvest Land service station====================================

_shopnum      = fuelshop5 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [6, format["Harvest Land for $%1", _preis]];
buttonSetAction [6, format['[%1,"%2",%3,%4,%5] execVM "exportitem.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

//====================Orellan service station====================================

_shopnum      = fuelshop6 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [6, format["Orellan for $%1", _preis]];
buttonSetAction [6, format['[%1,"%2",%3,%4,%5] execVM "exportitem.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];
};

if ([_item, _mininginv] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute1")) exitWith {hint "Dialog Error!"};

//=====================Canto Equipment Shop====================================

_shopnum      = Oil_1 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["Mining equipment for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportitem.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

};


player groupchat "There are no shops interested in buying this from you!";





