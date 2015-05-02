	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/08/09
	//		Author:??
	//		TaskName:Ectype-rightmachine-59265.s
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
		AddGuildDomainMonster( 59266 , 1 , $mapID , 268 , 163 , 0 , 0  , 2 , 1 )
		//???????????0??????1
		SetEctypeVar($mapID , 5 , 2)
		BC( "screen" , "map" , $mapID , "Attacker Vessel Workbench has been " , #name , " surprisingly attacked. Defenders have occupied this workshop" )
								
	}
	