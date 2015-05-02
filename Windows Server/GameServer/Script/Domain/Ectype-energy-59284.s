	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/10
	//		Author:??
	//		TaskName:Ectype-energy-59284.s
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
		
		//????????
			//????,?????????
			if $GuildID == $GuildID_D
				SetGuildDomainMonsterDead($charID)
				AddGuildDomainMonster( 59279 , 1 , $mapID , 69 , 76 , 0 , 0  , $GuildID , 1 )
//				AddGuildDomainPlayerExp($mapID,2,250000)
				BC( "screen" , "map" , $mapID , "The Yellow Energy Crystal is " , #name , "Surprise attack! All guild members receive an additional HP boost of: " )
				AddGuildDomainPlayerStatus($mapID, $GuildID , 7883 , 1 )	
			else
			//????,?????????	
				SetGuildDomainMonsterDead($charID)
				AddGuildDomainMonster( 59278 , 1 , $mapID , 69 , 76 , 0 , 0  , $GuildID , 1 )
//				AddGuildDomainPlayerExp($mapID,1,250000)
				BC( "screen" , "map" , $mapID , "The Yellow Energy Crystal is " , #name , "Surprise attack! All guild members receive an additional HP boost of: " )
				AddGuildDomainPlayerStatus($mapID, $GuildID , 7883 , 1 )
			endif
			
	}
	