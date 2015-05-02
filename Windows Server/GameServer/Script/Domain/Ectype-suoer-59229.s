	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/06/29
	//		Author:??
	//		TaskName:Ectype-suoer-59229.s
	//		TaskID: ????????
	//
	//****************************************

	
	function OnDead(){
		//????CharID
		$charID = GetMonsterCharID()
		// ??Char?????MapID
		$mapID = GetMonsterMapID($charID)
		//?????????????
		#name = GetPlayerInfo( -1 , "name") 
		$GuildID = GetPlayerInfo(-1,"guildid")
		
		//?????????,??????
		
		$result = SetGuildDomainEnd( $mapID ,$GuildID,1 )
		
		if $result == 1
			AddGuildDomainPlayerExp($mapID,$GuildID,5000000)
			BC( "screen" , "map" , $mapID , "Thor has been defeated by " , #name , "! The attacking guild has won, all members received 5,000,000 EXP!" )
		endif	
		
		
	}
	