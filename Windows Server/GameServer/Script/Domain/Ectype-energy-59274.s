	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/10
	//		Author:??
	//		TaskName:Ectype-energy-59274.s
	//		TaskID:??????(?)????
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
		AddGuildDomainMonster( 59275 , 1 , $mapID , 69 , 238 , 0 , 0  , $GuildID , 1 )
		//????2??????????
		AddGuildDomainPlayerStatus($mapID, $GuildID , 7881 , 2 )
		//????1??????????
		AddGuildDomainPlayerStatus($mapID, $GuildID , 7881 , 1 )
		BC( "screen" , "map" , $mapID , "The Red Energy Crystal is " , #name , "Surprise attack! All guild members receive an additional Attack boost of: " )
	
			
	}
	