if(isServer)then

{

for [{_i=0}, {_i < count gangareas}, {_i=_i+1}] do {(gangareas select _i) setvariable["control", "cops", true]};

TankenCost = 100; publicvariable "TankenCost";
bombactive = false; publicvariable "bombactive";

respawnarray 		= [respawn1,respawn2,respawn3,respawn4,respawn5,respawn6,respawn7,respawn8,respawn9,respawn10,respawn11,respawn12];
CityLocationArray   = [[CityLogic1, 500], [CityLogic2, 400], [CityLogic4, 500], [CityLogic5, 200], [Militarybase, 200],[CityLogic6, 180],[CityLogic7, 120]];
sobrerlaubt 		= [];
keineGun 			= [];
keincriminal 		= [];
keinterror 			= [];
adminliste 			= ["976769"];
superadminliste 	= ["976769"];
mainvar 			= true;
publicVariable "mainvar";
publicVariable "respawnarray";

onplayerconnected '

publicVariable "GesetzArray";
publicVariable "INV_ItemTypenArray";
publicvariable "INV_itemstocks";
currentTime = daytime; publicvariable "currentTime";

format["if(%1)then{power1 setdamage 0};if(%2)then{power2 setdamage 0};", alive power1, alive power2] call broadcast;

';

};

//=================================================================================
INV_smscost				 = 100;
add_civmoney			 = 1500;
add_copmoney		 	 = 4000;
add_workplace		 	 = 5000;
copchoprespawntime       = 120;
CopWaffenAvailable       = 0;							
CopIsInPrison            = false;					
CopInPrisonTime          = 300;								
shooting_self            = 0;										
srHinbewegen             = 0;														
deadcam                  = 0;											
isstunned                = false;													
hatGanggebietErobert     = false;												
Antwort                  = 0;           									
CivTimeInPrison          = 0;           			
CopLog                   = [];          														
MayorSteuern             = 0;           						
MayorBekommtSteuern      = 75;          		        	
chiefSteuern             = 0;           						
chiefBekommtSteuern      = 75;				
konvoyrespawnzeit        = 10;
eigene_zeit              = time;				
money_limit              = 15000000;
bank_limit		 		 = 15000000; 										
wantedbonus              = 500;         														
StunActiveTime           = 0;  
StunTimePerHit			 = 20; 
MaxStunTime				 = 20;        									 				
GeldStehlenMax           = 200000;
demerits                 = 0;
gtbonus 		 = 10;
gtactive		 = false;
keyblock		 = false;
fic_array             = [];
report_array             = [];
maxboars		 = 35;
maxrabbits		 = 35;
maxmanitime		 = 2400;
powerrestorecost	 = 50000;
impoundpay		 = 1000;
noholster		 = false;
MGcost			 = 10000;
PKcost			 = 10000;
SQUADcost		 = 20000;
maxinfai		 = 16;
firestrikes		 = 3;
exportscript	 = 0;
totalstrikes		 = 3;
facworkercost		 = 5000;
maxfacworkers		 = 100;
firingcaptive		 = false;
pickingup   		 = false;
lockpickchance		 = 40;
planting		 = false;
payingbail			= false;
drugstockinc		 = 900;
druguserate		 = 120;
milking			= false;

//===== Gas station robbing
maxstationmoney = 40000;


//==============================PETROL/OIL=========================================
petroluse                = 1;
maxpetroluse             = 300; 
oildemand                = 0.25;
oilsellpricedec          = 30;
oilbaseprice		 = 10000;
//==============================MINING=============================================
shoveldur=20;
shovelmax=2;
pickaxedur=50;
pickaxemax=3;
hammerdur=100;
hammermax=4;
working=false;
//===============================GANGS=============================================
gangincome		 = 5000;
gangcreatecost		 = 100000;
gangdeltime		 = 900;
gangsarray		 = [];
gangmember		 = false;
gangleader		 = false;
gangareas		 = [gangarea1,gangarea2,gangarea3];
//=================================================================================	      							

['schluesselbund', 1] call INV_SetItemAmount;
['handy', 1] call INV_SetItemAmount;

playerWeapons            = [];														
playerMagazines          = [];
weaponsloaded		 = false;
CopStartGear_Mags        = 

[

"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_74Slug", 
"8Rnd_B_Beneli_74Slug", 
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_74Slug", 
"8Rnd_B_Beneli_74Slug", 
"8Rnd_B_Beneli_74Slug",
"7Rnd_45ACP_1911", 
"7Rnd_45ACP_1911",
"7Rnd_45ACP_1911", 
"7Rnd_45ACP_1911",
"7Rnd_45ACP_1911",
"7Rnd_45ACP_1911",
"7Rnd_45ACP_1911",
"7Rnd_45ACP_1911"

];

CopStartGear_Weap        = ["M1014","Colt1911","ItemGPS","NVGoggles","Binocular"];

if (iscop) then 

{
						
RadioTextMsg_1 = "Put your hands up!";				
RadioTextMsg_2 = "Turn the engine off and get out of your vehicle!";
RadioTextMsg_3 = "Drop your weapon and put your hands on your head!";
RadioTextMsg_4 = "Your free to go!";		

}
else 
{
																				
RadioTextMsg_1 = "Put your hands up now!";
RadioTextMsg_2 = "Step away from the vehicle!";		
RadioTextMsg_3 = "Do it now or your dead!";						
RadioTextMsg_4 = "Dont shoot i give up!";

};
			
RadioTextArt_1 = "direct";												
RadioTextArt_2 = "direct";											
RadioTextArt_3 = "direct";				
RadioTextArt_4 = "direct";																
		
publicarbeiterarctionarray= [];						

for [{_i=1}, {_i <= civscount}, {_i=_i+1}] do 

{
		
call compile format ["
kopfgeld_civ%1      = 0;	
civ%1_wanted        = 0;
civ%1_bounty        = 0;
civ%1_mayor         = 0;
civ%1_reason        = [];	
civ%1_arrest        = 0;		
civ%1_markerjammed  = 0;
", _i];		

};

for [{_i=1}, {_i <= copscount}, {_i=_i+1}] do 

{
		
call compile format ["	
cop%1_chief       	 = 0;		
cop%1_markerjammed   = 0;
", _i];		

};

if(isnil "param1")then{param1 = 0};
if(isnil "param2")then{param2 = 1004};

SkipTimeDay	   	 = (floor(param2/100)); 	
SkipTimeNight  	   	 = (param2 mod 100); 

isdead			 = 0;			
local_arrest             = 0;
extradeadtime		 = 0;
respawntimeinc		 = 30;							
killedplayerinc          = 30;          												
respawnzeit              = 30;          										
DeadWaitSec              = respawnzeit; 							
DeadTimeMax              = 150;         								
deadtimebonus            = 0.001;       															
deadtimes                = 0;
suicidepenalty		 = 500; 
CopsKilled               = 0;           									
CivsKilled               = 0;           												
SelfKilled               = 0;
killstrafe               = 25000;			
copteamkillstrafe	 = 25000;		
GesetzAnzahl             = 10;         				
GesetzArray              = ["Always Drive on the RIGHT side of the road", "DONT place buildings or hideouts on streets", "Always Holster weapons in Towns 1k/1min jail.","Completing an assassination mission is murder", "", "","", "", "", ""];
									
if(debug)then{suicidepenalty = 0;respawntimeinc = 0;killedplayerinc = 0};  

isMayor                  = false;      	
WahlArray                = [];         
MayorNumber              = -1;         	
MayorExtraPay            = 5000;
kraftwerk			  	 = 1;     							

for [{_i=0}, {_i < playercount}, {_i=_i+1}] do {WahlArray = WahlArray + [ [] ];};												

ischief                  = false;
WahlArrayc               = [];
chiefNumber              = -1;
chiefExtraPay            = 5000;

for [{_i=0}, {_i < playercount}, {_i=_i+1}] do {WahlArrayc = WahlArrayc + [ [] ];};

deadcam_target_array     = 

[
	
[17205.75,99198.17,-49454.65],	
[114238.47,12719.49,3040.26],										
[114238.47,12719.49,3040.28],										
[9396.48,-87407.76,-3495.99],										
[9396.48,-87407.76,-3495.72],																				
[13328.19,-76559.05,-45508.50]		

];
					
deadcam_position_array   = 

[
					
[6573.78,2365.67,19.16],										
[6563.33,2409.16,3.60],										
[6598.98,2409.17,3.60],										
[6615.21,2406.75,2.60],										
[6616.97,2469.89,3.60],																			
[6575.55,2451.36,19.46]

];

escort_cost               = 5000;
escortmoneyprosekunde	 = 5000;
escort_money_per_sec	= 1200;
maxescort                 = 3;
copescortallowed          = 0;
localescort               = 0;
localescortcounter        = 0;
atmscriptrunning = 0;
shopactivescript = 0;							
deadcam_wechsel_dauer    = 5;													
deadcam_kameraposition   = round(random (count deadcam_position_array - 1));	
slave_cost               = 50000;
slavemoneyprosekunde	 = 3000;
maxslave                 = 5;
copslaveallowed          = 1;
localslave               = 0;
localslavecounter        = 0;			
huren_cost               = 10000;  								
hoemoneyprosekunde       = 1000;   							
maxhuren                 = 3;     			
copworkerallowed         = 1;     										
pimpactive               = 0;			
localhuren               = 0;									
localhurencounter        = 0;					
speedbomb_minspeed       = 1;												
speedbomb_maxspeed       = 100;									
speedbomb_mindur         = 10; 							
speedbomb_maxdur         = 300;	
zeitbombe_mintime        = 10;				
zeitbombe_maxtime        = 0;	
HideoutLocationArray     = [];
publichideoutarray       = [];
hideoutcost		 = 20000;
marker_ausserhalb        = param1; 														
marker_innerhalb         = 5;      			
marker_CopDistance       = 150;    					
CivMarkerUngenau         = 20;     								
copmarker_on             = 1; 
despawnarray	 	 = [["EvMoney", 300], ["Suitcase", 300]];
workplacearray           = [[workplace1, 80], [workplace2, 80], [workplace3, 60], [workplace4, 40]];
escortarray              = [[redlightdistrict1, 80], [redlightdistrict2, 80], [redlightdistrict3, 80]];
huntingarray             = [["boarhunting", 300]];
nonlethalweapons	 = ["Binocular", "NVGoggles", "ItemMap", "ItemCompass", "ItemRadio", "ItemWatch", "ItemGPS"];
slavearray               = workplacearray;
timeinworkplace          = 0;
wpcapacity               = 10;
INV_hasitemshop          = 0;
INV_haswepshop           = 0;
gunlicensetargets	 		= [t11,t12,t21,t22,t31,t32,t41,t42,t51,t52,t61,t62,t71,t72,t81,t82,t91,t92,t101,t111,t112,t121,t131,t132,t133,t134,t135];
BuildingsOwnerArray 	 	= [];
INV_Serverspeedcamarray 	= [];
HideoutLocationArray 		= [];
CityLocationArray       	= [[CityLogic1, 700], [CityLogic2, 500], [CityLogic3, 500], [CityLogic4, 500], [CityLogic5, 200], [Militarybase, 200],[CityLogic6, 200],[CityLogic7, 200]];

SkinTerrB                = 250000; 
SkinTerr                 = 60000;           
SkinTerrL                = 45000;

CivSkin                  = 20000;

Hospital                 = 1500;


if(isciv) then

{

BuyAbleBuildingsArray    = 

[

["wp1", "Workplace 1", workplace_getjobflag_1, 25000, 1500, "wp", "WpAblage_1"],							
["wp2", "Workplace 2", workplace_getjobflag_2, 45000, 2500, "wp", "WpAblage_2"],							
["wp3", "Workplace 3", workplace_getjobflag_3, 60000, 5000, "wp", "WpAblage_3"],
["wp4", "Workplace 4", workplace_getjobflag_4, 25000, 1500, "wp", "WpAblage_4"]

];

};

civclassarray		 = 

[

"Assistant",
"Citizen1",
"Citizen2",
"Citizen3",
"Citizen4",
"Profiteer1",
"Profiteer2",
"Profiteer3",
"Profiteer4",
"Rocker1",
"Rocker2",
"Rocker3",
"Rocker4",
"SchoolTeacher",
"Villager1",
"Villager2",
"Villager3",
"Villager4",
"Woodlander1",
"Woodlander2",
"Woodlander3",
"Woodlander4",
"Worker1",
"Worker2",
"Worker3",
"Worker4",

"Damsel1",
"Damsel2",
"Damsel3",
"Damsel4",
"Damsel5",
"Farmwife1",
"Farmwife2",
"Farmwife3",
"Farmwife4",
"Farmwife1",
"Hooker1",
"Hooker2",
"Hooker3",
"Hooker4",
"Hooker5",
"HouseWife1",
"HouseWife2",
"HouseWife3",
"HouseWife4",
"HouseWife5",
"Madam1",
"Madam2",
"Madam3",
"Madam4",
"Madam5",
"Secretary1",
"Secretary2",
"Secretary3",
"Secretary4",
"Secretary5",
"Sportswoman1",
"Sportswoman2",
"Sportswoman3",
"Sportswoman4",
"Sportswoman5",
"WorkWoman1",
"WorkWoman2",
"WorkWoman3",
"WorkWoman4",
"WorkWoman5"

];

SupporterFeatureList 	=

[

"976769", // WeedMachine
"1083009", // Whippy
"1012993", // Swampy
"1885825", // Riggs
"3734278", //Rampage
"915905",
"1664390", //DunNZ
"433856", //Jan
"1047169", // Jonzie
"4464646" //Dustoff

];
publicVariable "SupporterFeatureList";

SupporterFeatureCarePackage  =

[
"1885825" // Riggs
];
publicVariable "SupporterFeatureCarePackage";



civslavearray		 = ["Citizen1","Citizen2","Citizen3","Citizen4"];
civworkerarray		 = ["Worker1","Worker2","Worker3","Worker4"];
civescortarray		 = ["Hooker1","Hooker2","Hooker3","Hooker4","Hooker5"];
terroristarray   	 = ["GUE_Soldier_1", "GUE_Soldier_2", "GUE_Soldier_3", "Ins_Soldier_Sab", "Ins_Soldier_2", "GUE_Soldier_CO", "GUE_Soldier_AT", "Ins_Soldier_AR", "Ins_Soldier_CO"];
Coplavearray		 = ["Policeman"];

IntroInit          = 0;

