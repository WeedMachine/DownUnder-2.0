_weaponfactory  =

[

"Binocular",
"GPS",
"NVGoggles",
"Makarov",
"8Rnd_9x18_Makarov",
"M9",
"Rnd_9x19_M9",
"M9SD",
"15Rnd_9x19_M9SD",
"Colt1911",
"Rnd_45ACP_1911",
"AK_47_S",
"AK_47_M",
"30Rnd_762x39_AK47",
"AK74",
"AKS74U",
"30Rnd_545x39_AK",
"AKS_74_UN_Kobra",
"30Rnd_545x39_AKSD",
"RPK_74",
"75Rnd_545x39_RPK",
"HandGrenade_East"

];

_terrorfactoryitems    = 

[

"Binocular", 
"NVGoggles",
"GPS",
"lockpick",
"medikit",
"M9",
"Rnd_9x19_M9",
"Colt1911",
"Rnd_45ACP_1911",
"Saiga12K",
"Rnd_B_Saiga12_74Slug",
"M1014",
"Huntingrifle",
"x_22_LR_17_HMR",
"MP5A5",
"30Rnd_9x19_MP5",
"AK74",
"AK74GL",
"AKS74U",
"AKS_GOLD",
"AKS74pso",
"30Rnd_545x39_AK",
"30Rnd_762x39_AK47",
"1Rnd_HE_GP25",
"SVD",
"10Rnd_762x54_SVD",
"PK",
"100Rnd_762x54_PK",
"RPG7V",
"PG7VR", 
"HandGrenade_East",
"PipeBomb", 
"fernzuenderbombe", 
"zeitzuenderbombe", 
"aktivierungsbombe", 
"geschwindigkeitsbombe", 
"selbstmordbombe", 
"fernzuender",
"roadblock",
"bargate",
"searchlight",
"roadcone",
"fireplace",
"bunkersmall"
 
];

_terrorfactory=

[

"Pickup_PK_INS",
"Offroad_DSHKM_INS",
"Offroad_SPG9_Gue",
"BRDM2_INS",
"T34"

];

_vehiclefactory=

[

"MMT_Civ",
"MP_MB",
"TT650_Civ",
"TT650_Ins",
"Tractor",
"Skoda",
"SkodaBlue",
"SkodaRed",
"SkodaGreen",
"Lada_base",
"Civcar",
"Civcarbl",
"Civcarbu",
"Civcargr",
"Civcarre",
"Civcarsl",
"Civcarwh",
"qin_evoix_black",
"qin_evoix_blue",
"qin_evoix_gray",
"qin_evoix_green",
"qin_evoix_orange",
"qin_evoix_red", 
"Lada1",
"Lada2",
"Car_hatchback",
"Car_Sedan",
"VWGolf",
"fury",
"barcuda",
"cuda",
"hemicuda",
"challenger",

"Smallboat_1",
"Smallboat_2",
"Fishing_Boat",
"Zodiac",
"PBX",

"UAZ_RU",
"HMMWV",
"hilux1_civil_1_open",
"hilux1_civil_2_covered",
"hilux1_civil_3_open",
"datsun1_civil_1_open",
"datsun1_civil_2_covered",
"datsun1_civil_3_open",


"UralCivil",
"UralCivil2",
"KamazOpen",
"V3S_Civ",
"Ikarus",
"MTVR"
];

_sportsfactory=

[

"ASTON_MARTIN_DB9",
"BMW_135I",
"BMW_M3_GTR",
"BMW_M3_RALLY",
"CHEVROLET_CAMARO_SS_396",
"chevrolet_chevelle",
"CHRYSLER_300",
"CHRYSLER_B_limmo",
"CORVETTE_Z06",
"FORD_MUSTANG_SHELBY_COBRA",
"FORD_MUSTANG_SHELBY_COBRA1",
"FORD_SHELBY_GT",
"MERCEDES_BENZ_CLK_500",
"JAGUAR_XK",
"MERCEDES_BENZ_CLK_500",
"NISSAN_SKYLINE_GT_R_Z",
"NISSAN_SKYLINE_GT_R_Z2"

];

_itemfactory=

[

"Binocular",
"GPS",
"NVGoggles",
"campeast",
"fireplace",
"bunkersmall",
"Camonet",
"fortenvelopesmall",
"Barricade",
"hideout",
"Tor",
"Jaegerstand",
"Blechzaun",
"medikit",
"kleinesreparaturkit",
"reparaturkit",
"waffentasche",
"Itembag",
"defuser",
"vclammo",
"lockpick",
"lighter",
"Shovel",
"Pickaxe",
"JackHammer",
"nitro",
"supgrade1",
"supgrade2",
"supgrade3",
"supgrade4"

];

_tairfactory =

[

"Mi17_Ins",
"MH6J_EP1",
"HMMWV",
"UAZ_RU",
"Ural_CDF",
//"GAZ_Vodnik_MedEvac",
"Pickup_PK_INS",
"Offroad_DSHKM_INS",
"reparaturkit",
"nitro"

];

_airfactory = 

[

"Mi17_Civilian",
"MH6J_EP1",
"GNT_C185F", 
"GNT_C185", 
"GNT_C185E", 
"GNT_C185R"

];

_alcoholfactory = ["beer","beer2","vodka","smirnoff","wiskey","wine","wine2"];

_efactory = ["ebauteile"];
_Oilraffinerie = ["OilBarrel"];
_Steelfactory = ["steel"];
_Steelfactory = ["steel"];
_Juwelier	  = ["EDiamondring","Diamondring"];
_Baekerei	  = ["Apfelkuchen","Bread"];


vehiclequeue  	= [];
tvehiclequeue 	= [];
weaponqueue 	= [];
itemqueue 	= [];
avehiclequeue	= [];
tavehiclequeue	= [];
alcoholfactoryqueue  = [];
terrorfactoryitemsqueue = [];
efactoryqueue  = [];
Oilraffineriequeue  = [];
Steelfactoryqueue  = [];

Juwelierqueue  = [];
Baekereiqueue  = [];
sportsvehiclequeue = [];

INV_ItemFabriken =

[

[Vehiclefactory,"factory1","Vehicle Factory",dummyobj,vfacspawn,_vehiclefactory,150000,"Fabrikablage1", "vehiclequeue"],
[ItemFabrik_1,"factory3","General Factory",igunbox,dummyobj,_itemfactory,100000,"Fabrikablage3", "itemqueue"],
[weaponfactory,"factory4","Weapon Factory",wfgunbox,dummyobj,_weaponfactory,350000,"Fabrikablage4", "weaponqueue"],
//[terrorshop2,"factory5","Terror Factory",dummyobj,tfacspawn,_terrorfactory,350000,"Fabrikablage5", "tvehiclequeue"],
[tairshop,"factory6","Terrorist Vehicle Factory",dummyobj,tairspawn,_tairfactory,850000,"Fabrikablage6", "tavehiclequeue"],
[alcoholfactory,"factory7","Alcohol Factory",dummyobj,dummyobj,_alcoholfactory,25000,"Fabrikablage7", "alcoholfactoryqueue"],
//[terrorfactoryitems,"factory8","Terror item factory",tgunbox,dummyobj,_terrorfactoryitems,600000,"Fabrikablage8", "terrorfactoryitemsqueue"] 
[Electronic_Factory,"factory9","Electronic Component Factory",dummyobj,dummyobj,_efactory,150000,"Fabrikablage9", "efactoryqueue"],
[Oil_1,"factory10","Oil Refinery",dummyobj,dummyobj,_Oilraffinerie,50000,"Fabrikablage10", "Oilraffineriequeue"],
[Steel_Fac,"factory11","Steel Factory",dummyobj,dummyobj,_Steelfactory,75000,"Fabrikablage11", "Steelfactoryqueue"],
[Diamond_1,"factory12","Jeweler",dummyobj,dummyobj,_Juwelier,50000,"Fabrikablage12", "Juwelierqueue"],
[sportsfactory,"factory14","Sports Car Factory",dummyobj,sfacspawn,_sportsfactory,600000,"Fabrikablage14", "sportsvehiclequeue"],
[airfac,"factory15","Air Factory",dummyobj,airfacspawn,_airfactory,750000,"Fabrikablage15", "avehiclequeue"],
[Bakery_2,"factory13","Industrial Bakery",dummyobj,dummyobj,_Baekerei,20000,"Fabrikablage13", "Baekereiqueue"]

];

INV_Fabrikowner = [];

INV_FarmItemArray = 

[

[[["fishingwhale",400]],"Whale",2,1,["Ship"]],
[[["fishingbass",400]],"bass",7,4,["Ship"]],
[[["fishingblowfish",200]],"blowfish",15,8,["Ship"]],
[[["fishingherring",200]],"herring",15,8,["Ship"]],
[[["fishingmackerel",200]],"mackerel",15,8,["Ship"]],
[[["cocafield",30]],"Unprocessed_cocaine",15,4,["Man"]],
[[["marifield",30]],"Unprocessed_marijuana",15,4,["Man"]],
[[["lsdfield",30]],"Unprocessed_lsd",15,4,["Man"]],
[[["heroinfield",30]],"Unprocessed_heroin",15,4,["Man"]],
[[["DiamondArea1",5]],"Diamond rock",15,1,["Man"]],
[[["GoldArea1",5]],"Gold",15,1,["Man"]],
[[["farmarea1",70]],"getreide",20,10,["tractor"]],
[[["farmarea2",70]],"getreide",20,10,["tractor"]],
[[["farmarea3",70]],"getreide",20,10,["tractor"]],
[[["apfelfeld",70]],"Apfel",20,10,["Man"]],
[[["stoerfischen",23]],"Stoer",15,1,["Man"]]

];

fishingarray =
[

[["barramundiarea",20], "barramundi",4],
[["troutarea",20], "trout",3]

];

Miningarray = 

[

[["OilArea",20],"Oil",12],
[["OilArea2",15],"Oil",12],
[["OilArea3",12],"Oil",12],
[["IronArea",30],"iron",12],
[["SteelArea",40],"steel",12],
[["CopperArea",30],"copper",12],
[["GlassArea",30],"glass",12],
[["SiliconArea",30],"silicon",12],
[["BlackPowderArea",30],"black powder",12],
[["WoodArea",30],"wood",12],
[["CoalArea",30],"coal",12]

];










