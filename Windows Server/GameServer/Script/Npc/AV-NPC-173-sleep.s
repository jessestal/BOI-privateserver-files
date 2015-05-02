	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/23
	//		Author:???
	//		TaskName:AV-NPC-173-sleep.s
	//		TaskID:??
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$Item = GetPlayerInfo( -1, "item", 12561 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "You don't have Opaque Guardian Insignia." )
			return
		endif
		
		$Var = GetPlayerVar( -1, 3693 )
		if $Var >= 20
			BC( "dialogbox", "player", -1, "You can make 20 donations each time you enter Opaque Temple." )
			return
		endif
			
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 12561, 1 )
		if $SubItem != 0
			return
		endif
		
		$ServerVar = GetServerVar( 12 )
		$ServerVar = $ServerVar + 1
		SetServerVar( 12, $ServerVar )
		$ServerVar = GetServerVar( 12 )
		
		if $ServerVar >= 1000
			AddMonster( 30051, 1, 161, 88, 87, 0 )
			BC("screen", "servergroup", -1, "Being disturbed by the adventurers, Opaque Temple's guardians are awaking from their long slumber.")
			SetServerVar( 12, 0 )
		endif
		
		$Var = GetPlayerVar( -1, 3693 )
		if $Var == 19
			AddPlayerInfo( -1, "item", 12640, 1 )
		endif
		$Var = $Var + 1
		SetPlayerVar( -1, 3693, $Var )
		$playervar = GetPlayerVar( -1, 3693 )
		BC("screen", "player", -1, "You have made ",$playervar," donations.")
		$Random = RandomNumber( 1, 3 )
		$Rad = RandomNumber( 1, 2 )
		if $Random == 1
			AddPlayerInfo( -1, "item", 12418, $Rad )
			return
		endif
		if $Random == 2
			AddPlayerInfo( -1, "item", 12522, $Rad )
			return
		endif
		if $Random == 3
			AddPlayerInfo( -1, "item", 12525, $Rad )
			return
		endif
		
	}