	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:
	//		Author:
	//		TaskName:
	//		TaskID:
	//
	//****************************************
	
	
	
	function OnTaskDone(){
		
		$gid = GetPlayerInfo( -1 , "guildid" )
		
		//????
		$level = GetPlayerInfo( -1 , "level" )
		if $level <= 44
			$exp = $level * $level
			$exp = $exp * 80
			
			AddPlayerInfo( -1 , "exp" , $exp )
			
		else
			//??44?
			//??*??*80*(??*0.04 - 0.76)
			$exp = $level * $level
			$exp = $exp * 80
			$a = $level * 4
			$a = $a - 76
			$exp = $exp * $a
			$exp = $exp / 100
			
			AddPlayerInfo( -1 , "exp" , $exp )
			
		endif
		
		#name = GetPlayerInfo( -1 , "name" )
			AddPlayerInfo( -1 , "guildprosperity" , 750 )
			AddPlayerInfo( -1 , "guildmoney" , 22500 )
			AddPlayerInfo( -1 , "guildoffer",10)
			BC( "chat" , "guild" , $gid , "(" , #name , "Your Guild Fund has been increased by 22,500 by completing the Bronze Guild quest. The Prosperity of your Guild has been increased by 750." )
		
		
	
	}
