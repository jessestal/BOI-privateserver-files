	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/10
	//		Author:??
	//		TaskName:Ectype-energy-59279.s
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
		AddGuildDomainMonster( 59278 , 1 , $mapID , 69 , 76 , 0 , 0  ,$GuildID , 1 )
		//????1??????????
		AddGuildDomainPlayerStatus($mapID, $GuildID , 7883 , 1 )
		//????2??????????
		AddGuildDomainPlayerStatus($mapID, $GuildID , 7883 , 2 )
		BC( "screen" , "map" , $mapID , "The Yellow Energy Crystal is " , #name , "Surprise attack! All guild members receive an additional HP boost of: " )
			
	}
	