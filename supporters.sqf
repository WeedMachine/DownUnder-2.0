    ////////////////////////////////////
   //  			                     //
  //     Down Under Community       //
 //         Supporter Script	   //
////////////////////////////////////


_uid = getPlayerUID vehicle player;
	

	if(_uid in SupporterFeatureList) then

		{
			sleep 4;
			titletext [localize "STRS_supporter","PLAIN DOWN"];;
			sleep 4;
			titletext [localize "STRS_supporter_info","PLAIN DOWN"];
			sleep 4;
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

	
		

