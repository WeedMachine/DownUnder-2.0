
BC_FIC =
{
	_ok = createDialog "fic_records";
	_list = 91;
	_reason_list = 63;
	{
		_index = lbAdd [_list, format["Date-Time: %1",_x select 0]];
		_index = lbAdd [_list, format["Name: %1", _x select 1]];
		_index = lbAdd [_list, format["Reason: %1", _x select 2]];
		_index = lbAdd [_list, format["Location: %1", _x select 3]];
		_index = lbAdd [_list, format["Vehicle: %1", _x select 4]];
		_index = lbAdd [_list, format["Disposition: %1", _x select 5]];
		_index = lbAdd [_list, ""];
	} foreach fic_array;
	
	{
		_index = lbAdd [_reason_list, _x select 0];
		lbSetData [_reason_list, _index, _x select 0];
	} foreach reason_array;
};

BC_UpdateFIC = 
{
	
	_list = 91;
	_timedate = (ctrlText 61);
	_name = (ctrlText 62);
	_reason_list = 63;
	_address = (ctrlText 64);
	_vehicle = (ctrlText 65);
	_dispo = (ctrlText 66);
	_index = lbCurSel _reason_list; _reason = lbData [_reason_list, _index];
	if ( (_index < 0) OR (_name == "") ) exitWith {};
	lbSetCurSel [_reason_list, 0];
		
	if (_address == "") then {address = "N/A"} else {address = _address};
	if (_vehicle == "") then {veh = "Pedestrian"} else {veh = _vehicle};
	if (_dispo == "") then {disposition = "None"} else {disposition = _dispo};
	
	fic_array = fic_array + [[_timedate, _name, _reason, address, veh, disposition]];
	publicVariable "fic_array";
	["fic_array", fic_array] spawn ClientSaveVar;
	
	lbClear _list;
	{
		_index = lbAdd [_list, format["Date-Time: %1",_x select 0]];
		_index = lbAdd [_list, format["Name: %1", _x select 1]];
		_index = lbAdd [_list, format["Reason: %1", _x select 2]];
		_index = lbAdd [_list, format["Address: %1", _x select 3]];
		_index = lbAdd [_list, format["Vehicle: %1", _x select 4]];
		_index = lbAdd [_list, format["Disposition: %1", _x select 5]];
		_index = lbAdd [_list, ""];
	} foreach fic_array;
	
	ctrlSetText [61, ""];
	ctrlSetText [62, ""];
	ctrlSetText [64, ""];
	ctrlSetText [65, ""];
	ctrlSetText [66, ""];
};

reason_array = [ [ "Speeding" ],[ "Failure to Yeild" ],[ "DWI" ],[ "Reckless Driving" ],[ "Accident" ],[ "Domestic Disturbance" ], [ "Sexual Harassment" ], [ "Other" ] ];

BC_report =
{
	_ok = createDialog "report_records";
	_list = 91;
	_reason_list = 63;
	{
		_index = lbAdd [_list, format["Date-Time: %1",_x select 0]];
		_index = lbAdd [_list, format["Name: %1", _x select 1]];
		_index = lbAdd [_list, format["Reason: %1", _x select 2]];
		_index = lbAdd [_list, format["Address: %1", _x select 3]];
		_index = lbAdd [_list, format["Vehicle: %1", _x select 4]];
		_index = lbAdd [_list, format["Disposition: %1", _x select 5]];
		_index = lbAdd [_list, ""];
	} foreach report_array;
	
	{
		_index = lbAdd [_reason_list, _x select 0];
		lbSetData [_reason_list, _index, _x select 0];
	} foreach reason_array;
};

BC_Updatereport = 
{
	
	_list = 91;
	_timedate = (ctrlText 61);
	_name = (ctrlText 62);
	_reason_list = 63;
	_address = (ctrlText 64);
	_vehicle = (ctrlText 65);
	_dispo = (ctrlText 66);
	_index = lbCurSel _reason_list; _reason = lbData [_reason_list, _index];
	if ( (_index < 0) OR (_name == "") ) exitWith {};
	lbSetCurSel [_reason_list, 0];
		
	if (_address == "") then {address = "N/A"} else {address = _address};
	if (_vehicle == "") then {veh = "Pedestrian"} else {veh = _vehicle};
	if (_dispo == "") then {disposition = "None"} else {disposition = _dispo};
	
	report_array = report_array + [[_timedate, _name, _reason, address, veh, disposition]];
	publicVariable "report_array";
	["report_array", report_array] spawn ClientSaveVar;
	
	lbClear _list;
	{
		_index = lbAdd [_list, format["Date-Time: %1",_x select 0]];
		_index = lbAdd [_list, format["Name: %1", _x select 1]];
		_index = lbAdd [_list, format["Reason: %1", _x select 2]];
		_index = lbAdd [_list, format["Address: %1", _x select 3]];
		_index = lbAdd [_list, format["Vehicle: %1", _x select 4]];
		_index = lbAdd [_list, format["Disposition: %1", _x select 5]];
		_index = lbAdd [_list, ""];
	} foreach report_array;
	
	ctrlSetText [61, ""];
	ctrlSetText [62, ""];
	ctrlSetText [64, ""];
	ctrlSetText [65, ""];
	ctrlSetText [66, ""];
};

reason_array = [ [ "Speeding" ],[ "Failure to Yield" ],[ "DWI" ],[ "Reckless Driving" ],[ "Accident" ],[ "Domestic Disturbance" ], [ "Sexual Harrasment" ], [ "Other" ] ];
