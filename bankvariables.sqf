if(interndebug)then{['geld', 5000000] call INV_addinventoryitem};

StartGeld                = 25000; 
robb_timeSperre          = 600;   
local_useBankPossible    = true;  
maxinsafe                = 100000;
BankRaubKontoverlust     = 4000;  
ShopRaubKontovershop     = 0;
ShopRaubProzentVershop   = 0;
rblock			 = 600;
stolencash		 = 0;
Maxbankrobpercentlost    = 0.1; 
bank_steuer              = 5;     
zinsen_prozent           = 1.5;     
zinsen_dauer             = 300;   
robenable              	 = true;     
Kontostand               = StartGeld; 
shopflagarray            = [shop1,shop2,shop3,shop4,shop5];
bankflagarray            = [mainbank, copbank, copsobr, atm1, atm2, atm3, atmpf, atmassa, bank5, bank6];
drugsellarray		 = [mdrugsell,cdrugsell,ldrugsell,hdrugsell];
TankstellenArray         = 

[
(nearestobject[getpos fuelshop1,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop2,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop3,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop4,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop5,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop6,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop7,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop8,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop9,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop10,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop11,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop12,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop13,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop14,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop15,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop16,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop17,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop18,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop19,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop20,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop21,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop22,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop23,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop24,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop25,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop26,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop27,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop28,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop29,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop30,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop31,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop32,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop33,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop34,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop35,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop36,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop37,"Land_A_FuelStation_Feed"])

];



