	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/23
	//		Author:???
	//		TaskName:AV-NPC-162-stone.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$Item1 = GetPlayerInfo( -1, "item", 12557 )
		if $Item1 < 5
			BC( "dialogbox", "player", -1, "You need 5 units of Lizard Blood." )
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 12557, 5 )
		if $SubItem1 != 0
			return
		endif
		
		$PlayerVar = GetPlayerVar( -1, 3704 )
		if $PlayerVar == 2
			FlyToMap( -1, 161, 83, 65 )
		else
			$Rad = RandomNumber( 1, 2 )
			if $Rad == 1
				AddStatus( -1, 10674, 1 )
			endif
			if $Rad == 2
				AddStatus( -1, 10673, 1 )
			endif
		endif
		
	}