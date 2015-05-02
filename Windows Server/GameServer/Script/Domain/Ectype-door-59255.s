	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/08/09
	//		Author:??
	//		TaskName:Ectype-door-59255.s
	//		TaskID: 4?????
	//
	//****************************************

	
	function OnDead(){
		//????CharID
		$charID = GetMonsterCharID()
		// ??Char?????MapID
		$mapID = GetMonsterMapID($charID)
		//??????????
		OpenMask( 4 , $mapID )
		#name = GetPlayerInfo( -1 , "name") 
		//201208??????????,?????id
		$GuildID = GetPlayerInfo(-1,"guildid")
		#GuildName = GetPlayerInfo($playerid,"guildname")
		AddGuildDomainPlayerExp($mapID,$GuildID,300000)									
		BC( "screen" , "map" , $mapID , "The East Gate has been destroyed by " , #name , ". All members received ", #GuildName ,"300,000 EXP." )					
		
		//??????,?????2??????
		
		PlayEffect( -1 , "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" , 2 )
		
		PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		
	}
	