// server keeps track of cash in gas stations, and makes the variable public
// written by eddie vedder
while {true} do
{
_randomamount = ceil ((random 250) + 250);
if (station3money < maxstationmoney) then
	{	
	station1money = station1money + _randomamount;
	if (station1money > maxstationmoney) then {station1money = maxstationmoney;};
	};

if (station3money < maxstationmoney) then
	{
	station2money = station2money + _randomamount;
	if (station2money > maxstationmoney) then {station2money = maxstationmoney;};
	};
if (station3money < maxstationmoney) then
	{
	station3money = station3money + _randomamount;
	if (station3money > maxstationmoney) then {station3money = maxstationmoney;};
	};
if (station4money < maxstationmoney) then
	{
	station4money = station4money + _randomamount;
	if (station4money > maxstationmoney) then {station4money = maxstationmoney;};
	};
if (station5money < maxstationmoney) then
	{
	station5money = station5money + _randomamount;
	if (station5money > maxstationmoney) then {station5money = maxstationmoney;};
    };
if (station6money < maxstationmoney) then
	{
	station6money = station6money + _randomamount;
	if (station6money > maxstationmoney) then {station6money = maxstationmoney;};
    };	
publicvariable "station1money";
publicvariable "station2money";
publicvariable "station3money";
publicvariable "station4money";
publicvariable "station5money";
publicvariable "station6money";

sleep 30;
};




//eddie vedder