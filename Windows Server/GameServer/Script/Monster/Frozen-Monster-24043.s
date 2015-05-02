	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/6/25
	//		Author:???
	//		TaskName:Frozen-Monster-24043.s
	//		TaskID:????
	//****************************************
 
 
	function OnDead(){
	
		DropMonsterItems(-1, 24043 )
		
		$guildid = GetPlayerInfo ( -1 , "guildid" )
		$Lost = IsFrozenFortLost( $guildid )
		if $Lost == 0
			BC( "screen", "player", -1, "Your guild fountain has been destroyed. You lost the chance to gain battlefield scores." )
			return
		endif
		AddFrozenFortScore( -1 , 10 )
		BC( "screen", "player", -1, "Your Guild has gained 10 points toward its Frozen Battlefield Score." )
	}
	