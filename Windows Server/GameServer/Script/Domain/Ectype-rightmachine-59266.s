	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/08/09
	//		Author:??
	//		TaskName:Ectype-rightmachine-59266.s
	//		TaskID: ????????1??
	//
	//****************************************

	
	function OnDead(){
		//????CharID
		$charID = GetMonsterCharID()
		// ??Char?????MapID
		$mapID = GetMonsterMapID($charID)
		//???????????
		$zhanchang = GetPlayerDomainWarSide(-1 , -1)
		//??????????????
		#name = GetPlayerInfo( -1 , "name") 
		
		//???????????,?????????
		SetGuildDomainMonsterDead($charID)
		AddGuildDomainMonster( 59265 , 1 , $mapID , 268 , 163 , 0 , 0  , 1 , 1 )
		//???????????0??????0
		SetEctypeVar($mapID , 5 , 1)
		BC( "screen" , "map" , $mapID , "Defender Vessel Workbench has been " , #name , " surprisingly attacked. Defenders have occupied the workshop on the left side." )

		

	}
	