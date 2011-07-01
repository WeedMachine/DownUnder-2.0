if (!(createDialog "INV_ItemListDialog")) exitWith {hint "Dialog Error!";};
_buttonaction = _this select 0;
_buttontext = _this select 1;
buttonSetAction [5, {_buttonaction}];
ctrlSetText [5, _buttontext];
for [{_i=0}, {_i < (count INV_AlleItemsArray)}, {_i=_i+1}] do 
{
_item   = ((INV_AlleItemsArray select _i) select 0);
_infos  = (_item call INV_getitemArray);
_index  = lbAdd [1, format ["%1", (_infos call INV_getitemName)]];
lbSetData [1, _index, _item];
};
ctrlSetText[2, ""];
ctrlSetText[3, ""];
lbSetCurSel [1, 0];
_selected = (lbCurSel 1);
while {ctrlVisible 1038} do 
{
_item  = lbData [1, (lbCurSel 1)];
_infos = (_item call INV_getitemArray);
ctrlSetText [2,  format ["%1", (_infos call INV_getitemDescription2)]];
ctrlSetText [3,  format ["Weights: %1", (_infos call INV_getitemTypeKg)]];
if (not((lbCurSel 1) == _selected)) then 
{
_selected = (lbCurSel 1);
lbClear 4;
if (_item != "") then 
{
_benoetigteItems = (_item call INV_getitemMaterials);
{lbAdd [4, format["%1 - %2", ((_x select 0) call INV_getitemName), (_x select 1)] ];} forEach _benoetigteItems;
};
};
sleep 0.3;
};
