    ////////////////////////////////////
   //  			                     //
  //     Down Under Community       //
 //         Supporter List		   //
////////////////////////////////////


_uid = getPlayerUID vehicle player;
	

if (_uid == "976769") then
{
sleep 30;
titletext [format [localize "STRS_supporter",Weed],"PLAIN DOWN"];
sleep 4;
titletext [localize "STRS_supporter_info","PLAIN DOWN"];
sleep 4;
titletext [localize "STRS_supporter_info2","PLAIN DOWN"];
INV_LizenzOwner = INV_LizenzOwner + ["realestate"];

};

if (_uid == "1083009") then
{
sleep 30;
titletext [format [localize "STRS_supporter",name player],"PLAIN DOWN"];
sleep 4;
titletext [localize "STRS_supporter_info","PLAIN DOWN"];
sleep 4;
titletext [localize "STRS_supporter_info2","PLAIN DOWN"];
INV_LizenzOwner = INV_LizenzOwner + ["realestate"];

};

if (_uid == "1012993") then
{
sleep 30;
titletext [format [localize "STRS_supporter",name player],"PLAIN DOWN"];
sleep 4;
titletext [localize "STRS_supporter_info","PLAIN DOWN"];
sleep 4;
titletext [localize "STRS_supporter_info2","PLAIN DOWN"];
INV_LizenzOwner = INV_LizenzOwner + ["realestate"];

};

if (_uid == "1885825") then
{
sleep 30;
titletext [format [localize "STRS_supporter",name player],"PLAIN DOWN"];
sleep 4;
titletext [localize "STRS_supporter_info","PLAIN DOWN"];
sleep 4;
titletext [localize "STRS_supporter_info2","PLAIN DOWN"];
INV_LizenzOwner = INV_LizenzOwner + ["realestate"];
if (isCop) then {
['marijuana', 5] call INV_SetItemAmount;};

};


if (_uid == "3734278") then
{
sleep 30;
titletext [format [localize "STRS_supporter",name player],"PLAIN DOWN"];
sleep 4;
titletext [localize "STRS_supporter_info","PLAIN DOWN"];
sleep 4;
titletext [localize "STRS_supporter_info2","PLAIN DOWN"];
INV_LizenzOwner = INV_LizenzOwner + ["realestate"];
if (isCop) then {
['marijuana', 5] call INV_SetItemAmount;};

};

