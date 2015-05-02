	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/10
	//		Author:??
	//		TaskName:Ectype-energy-59281.s
	//		TaskID: ??????(?)????
	//
	//****************************************

	
	function OnDead(){
		//????CharID
		$charID = GetMonsterCharID()
		// ??Char?????MapID
		$mapID = GetMonsterMapID($charID)
		//???????????
		$GuildID = GetPlayerInfo(-1,"guildid")
		$GuildID_D = GetGuildDomainMasterGuild($ectype_ID)
		//??????????????
		#name = GetPlayerInfo( -1 , "name") 
		
		SetGuildDomainMonsterDead($charID)
		AddGuildDomainMonster( 59280 , 1 , $mapID , 254 , 76 , 0 , 0  , $GuildID , 1 )
		//????1??????????
		AddGuildDomainPlayerStatus($mapID, $GuildID , 7884 , 1 )
		//????2??????????
		AddGuildDomainPlayerStatus($mapID, $GuildID , 7884 , 2 )
		BC( "screen" , "map" , $mapID , "The Gold Energy Crystal is " , #name , "Surprise attack! All guild members receive an additional Defense boost of: " )
			
	}
	