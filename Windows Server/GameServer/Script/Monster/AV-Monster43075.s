   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/16
	//		Author:???
	//		TaskName:AV-Monster43075.s
	//		TaskID:?????
	//****************************************
	
	function OnDead(){
		#name = GetPlayerInfo( -1 , "name" )
		$Random = RandomNumber( 1, 100 )
		$a = HaveTitle( -1 , 46 )
		if $Random < 33
			if $Random < 31
				AddPlayerInfo( -1, "item", 65344, 1 )
				BC( "screen", "server" , -1 ,"The hero ", #name , " has acquired an unidentified World Tree Branch by searching Nile River West!")
			else
				if $a == 0
					AddPlayerInfo( -1, "item", 64347, 1 )
					BC( "screen", "server" , -1 ,"The hero ", #name , " has acquired an Yggradsil Seed while searching for World Tree Branches!")
				else
					BC( "screen", "player" , -1 , "You have found nothing." )
				endif
			endif
		else
			BC( "screen", "player", -1, "You have found nothing." )
			return
		endif
		
		
	}
		