	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/06/29
	//		Author:??
	//		TaskName:Ectype-AtkCrystal-59227.s
	//		TaskID: ??????????
	//
	//****************************************

	
	function OnDead(){
		//????CharID
		$charID = GetMonsterCharID()
		// ??Char?????MapID
		$mapID = GetMonsterMapID($charID)
		//???????????????
		#name = GetPlayerInfo( -1 , "name") 
		//???????id
		$GuildID = GetGuildDomainMasterGuild($mapID)
		
		//?????????,??????		
		$result = SetGuildDomainEnd( $mapID ,$GuildID,2)
		
		if $result == 1
			AddGuildDomainPlayerExp($mapID,$GuildID,1500000)
			BC( "screen" , "map" , $mapID , "Attacker Energy Crystal has been destroyed. Defending Guild won the battle. All members of the Defending Guild will receive 1,500,000 EXP!" )
		endif	
		
		
	}
	