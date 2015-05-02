	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/25
	//		Author:??
	//		TaskName:Ectype-leftmachine-59264.s
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
		
		//????????
		//????,?????????
		
		if $zhanchang == 1
			SetGuildDomainMonsterDead($charID)
			AddGuildDomainMonster( 59272 , 1 , $mapID , 57 , 163 , 0 , 0  , 2 , 1 )
			//???????????4??????2,??????
			SetEctypeVar( $mapID ,  4 , 2 )
			AddGuildDomainPlayerExp($mapID,2,200000)
			BC( "screen" , "map" , $mapID , "A Vehicle Workbench has been " , #name , " attacked. Defenders will get 200,000 EXP." )
		endif
		//????,?????????	
		if $zhanchang == 0
			SetGuildDomainMonsterDead($charID)
			AddGuildDomainMonster( 59271 , 1 , $mapID , 57 , 163 , 0 , 0  , 1 , 1 )
			//???????????4??????1,??????
			SetEctypeVar( $mapID ,  4 , 1 )
			AddGuildDomainPlayerExp($mapID,1,200000)
			BC( "screen" , "map" , $mapID , "A Vehicle Workbench has been " , #name , " attacked. Attackers will get 200,000 EXP." )
		endif
			
				
		

	}
	