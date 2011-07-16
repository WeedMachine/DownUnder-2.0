    ////////////////////////////////////
   //  			                     //
  //     Down Under Community       //
 //         Supporter Script	   //
////////////////////////////////////


_uid = getPlayerUID vehicle player;
	

	if(_uid in SupporterFeatureList) then

		{
			sleep 26;
			titletext [format [localize "STRS_supporter", name player ],"PLAIN DOWN"];
			sleep 6;
			playsound "coin";
			titletext [localize "STRS_supporter_info","PLAIN DOWN"];
			sleep 6;
			titletext [localize "STRS_supporter_info2","PLAIN DOWN"];
			INV_LizenzOwner = INV_LizenzOwner + ["donator"];
		
		};

	if (_uid in SupporterFeatureCarePackage) then
		
		{
			if (isCop) then 
				{
					['marijuana', 5] call INV_SetItemAmount;
				};

		};

	
		
//STRS_supporter
