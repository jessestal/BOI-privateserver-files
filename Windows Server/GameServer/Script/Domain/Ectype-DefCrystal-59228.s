	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/06/29
	//		Author:??  
	//   	Author2:20120819 ???  
	//		TaskName:Ectype-DefCrystal-59228.s
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
		$GuildID = GetPlayerInfo(-1,"guildid")
		#GuildName = GetPlayerInfo($playerid,"guildname")
		
		//?????????,??????		
		$result = SetGuildDomainEnd( $mapID ,$GuildID,1)
		
		if $result == 1
			AddGuildDomainPlayerExp($mapID,$GuildID,1500000)
			BC( "screen" , "map" , $mapID , "Defending Territory Crystal has been destroyed.", #GuildName ,"Attacking Guild was the victor! All their members received 1,500,000 EXP!" )
		endif	
		
		
	}

	