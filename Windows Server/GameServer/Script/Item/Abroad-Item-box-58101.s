	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/13
	//		Author:???
	//		TaskName:Abroad-Item-box-58101.s
	//		TaskID:?????
	//****************************************
	
	function OnUseItem(){
		
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 6
			BC( "screen", "player", -1 , "You need at least 6 empty slots in your bag. Unable to open reward pack." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 58101 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 6392 , 1 )
		AddPlayerInfo( -1 , "item" , 6388 , 1 )
		AddPlayerInfo( -1 , "item" , 6057 , 1 )
		AddPlayerInfo( -1 , "item" , 58015 , 1 )
		AddPlayerInfo( -1 , "item" , 63066 , 1 )
		$sex = GetPlayerInfo( -1 , "sex" )
		if $sex == 0
			AddPlayerInfo( -1 , "item" , 36378 , 1 )
		else
			AddPlayerInfo( -1 , "item" , 36701 , 1 )
		endif
		
	}