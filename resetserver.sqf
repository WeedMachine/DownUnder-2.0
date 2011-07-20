if (serverresetactive == 1) exitwith {player globalchat "Thank you the server scripts will reset soon"};
serverresetactive = 1;
publicVariable "serverresetactive";
sleep 300;
serverresetactive = 0;
publicVariable "serverresetactive";

if (isServer) then 

{

_h = [] execVM "e851a47aba937daa12af02679bd0bbac\8417a031bdadfb493a827cfec74bba14.sqf";

waitUntil{scriptDone _h};

};






