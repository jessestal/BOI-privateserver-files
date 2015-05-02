function OnUseItem(){
   			
			//????
			
			$gid = GetPlayerInfo( -1 , "guildid")
	  	if $gid == -1
	  		BC( "dialogbox", "player", -1, "You have not joined a guild!")
	  		return
	  	endif
			
			$gof = GetPlayerInfo( -1 , "guildoffer")
	  	if $gof < 150
	  		BC( "dialogbox", "player", -1, "Insufficient personal contributions!")
	  		return
	  	endif
	  	
			$r = SubPlayerInfo( -1, "item", 63462, 1 )
			if $r != 0
				return
			endif
			
			SubPlayerInfo( -1, "guildoffer", 150 )
			AddPlayerInfo( -1, "item", 36571, 1 )
			BC( "screen", "player", -1, "Deduct 150 points of contribution, obtain Glacier Wings!" )
		
}