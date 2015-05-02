	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/10
	//		Author:??
	//		TaskName:Ectype-energy-59277.s
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
		AddGuildDomainMonster( 59276 , 1 , $mapID , 254 , 238 , 0 , 0  , $GuildID , 1 )
		//????1??????????
		AddGuildDomainPlayerStatus($mapID, $GuildID , 7882 , 1 )
		//????2??????????
		AddGuildDomainPlayerStatus($mapID, $GuildID , 7882 , 2 )
		BC( "screen" , "map" , $mapID , "The Blue Energy Crystal is " , #name , "Surprise attack! All guild members receive an additional Accuracy/Dodge boost of: " )
			
	}
	