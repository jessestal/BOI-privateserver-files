	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/08/09
	//		Author:??
	//		TaskName:Ectype-leftmachine-59262.s
	//		TaskID: ????1??
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
		
		//?????1?????,?????????
		SetGuildDomainMonsterDead($charID)
		AddGuildDomainMonster( 59272 , 1 , $mapID , 57 , 163 , 0 , 0  , 2 , 1 )
		//???????????0??????1
		SetEctypeVar($mapID , 4 , 2)
		BC( "screen" , "map" , $mapID , "A Vehicle Workbench has been " , #name , " attacked. The Defenders have taken a workbench!" )
								
	}
	