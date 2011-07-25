//License Array Suited to the Down Under Mission
//Please note these licenses are custom to the spawn locations for civ's 

if (player in auspawn) then {

INV_Lizenzen = 

[
["car",university,localize "STRS_license_car",10000],
["boat",university,localize "STRS_license_boat",5000],
["truck",university,localize "STRS_license_truck",15000],
["engineer",university,localize "STRS_license_engineer",25000],
["air",university,localize "STRS_license_air",150000],
["sobr_training",copsobr,localize "STRS_license_copswat",150000],
["auspass",university,"Australian Passport",20000],
["bounty",university,"Bountyhunter License",50000],			//Kopfgeldjäger Lizens

["diamond",Diamond_1,"Diamond processor's license",25000],
["Baker",Bakery_1,"Baker's license",10000],
["oil",Oil_1,"Oil processor's license",75000],
["cocaine ga1",gangarea1,"GA1 cocaine Drug processor's license",25000],
["lsd ga1",gangarea1,"GA1 LSD Drug processor's license",25000],
["heroin ga2",gangarea2,"GA2 Heroin Drug processor's license",25000],
["lsd ga2",gangarea2,"GA2 LSD Drug processor's license",25000],
["heroin ga3",gangarea3,"GA3 Heroin Drug processor's license",25000],
["marijuana ga3",gangarea3,"GA3 Marijuana Drug processor's license",25000],
["Pistol",licenseflag2,"Pistol License",35000],
["Rifle",licenseflag2,"Rifle License",50000],
["probator",copbank,localize "STRS_license_probator",10000],
["patrol_training",copbank,localize "STRS_license_coppatrol",25000],
["response_training",copbank,localize "STRS_license_copresponse",50000],
["air_support_training",copbank,localize "STRS_license_copairsupport",100000],
["terror",terrorshop,"Terrorist training",250000],

["donator",objnull,localize "STRS_realestate_permit",1],
["Notforcivs",Nicht_DA,"Notforcivs",1],						//Notwendige Lizens für alle Autos die Civs nicht fahren dürfen. Sichert das sie in diesen geblitz werden und sie nicht kaufen können
["Notforcops",Nicht_DA,"NotforCops",1],						//Notwendige Lizens für alle Gegenstände die Cops nicht kaufen dürfen
["kaviar",Kaviafabrik,"Caviar license",25000],
["Citizen of Chernogorsk",Nicht_DA,"Citizen of Chernogorsk",0]
//["medic",university,localize "STRS_license_medic",5000]
//["assassin",agunshop,"Assassin training",30000],
//["pick-up",university,localize "STRS_licence_pick-up",25000],
];};

if (player in nzspawn) then {

INV_Lizenzen = 

[
["car",university1,localize "STRS_license_car",10000],
["boat",university1,localize "STRS_license_boat",5000],
["truck",university1,localize "STRS_license_truck",15000],
["nzpass",university1,"New Zealand Passport",20000],
["response_training",copcar2,localize "STRS_license_copresponse",50000],
["air_support_training",copcar2,localize "STRS_license_copairsupport",100000],

["probator",copcar2,localize "STRS_license_probator",10000],
["patrol_training",copcar2,localize "STRS_license_coppatrol",25000],
["engineer",university1,localize "STRS_license_engineer",25000],
["bounty",university1,"Bountyhunter License",50000],

["diamond",Diamond_1,"Diamond processor's license",25000],
["Baker",Bakery_1,"Baker's license",10000],
["oil",Oil_1,"Oil processor's license",75000],
["cocaine ga1",gangarea1,"GA1 cocaine Drug processor's license",25000],
["lsd ga1",gangarea1,"GA1 LSD Drug processor's license",25000],
["heroin ga2",gangarea2,"GA2 Heroin Drug processor's license",25000],
["lsd ga2",gangarea2,"GA2 LSD Drug processor's license",25000],
["heroin ga3",gangarea3,"GA3 Heroin Drug processor's license",25000],
["marijuana ga3",gangarea3,"GA3 Marijuana Drug processor's license",25000],
["Pistol",licenseflag2,"Pistol License",35000],
["Rifle",licenseflag2,"Rifle License",50000],
["probator",copbank,localize "STRS_license_probator",10000],
["patrol_training",copbank,localize "STRS_license_coppatrol",25000],
["response_training",copbank,localize "STRS_license_copresponse",50000],
["air_support_training",copbank,localize "STRS_license_copairsupport",100000],
["terror",terrorshop,"Terrorist training",250000],

["donator",objnull,localize "STRS_realestate_permit",1],
["Notforcivs",Nicht_DA,"Notforcivs",1],						//Notwendige Lizens für alle Autos die Civs nicht fahren dürfen. Sichert das sie in diesen geblitz werden und sie nicht kaufen können
["Notforcops",Nicht_DA,"NotforCops",1],						//Notwendige Lizens für alle Gegenstände die Cops nicht kaufen dürfen
["kaviar",Kaviafabrik,"Caviar license",25000],
["Citizen of Chernogorsk",Nicht_DA,"Citizen of Chernogorsk",0]
];};

INV_LizenzOwner = [];

