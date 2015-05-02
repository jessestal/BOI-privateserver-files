	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/13
	//		Author:???
	//		TaskName:Abroad-Item-box-58102.s
	//		TaskID:?????
	//****************************************
	
	function OnUseItem(){
		
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 2
			BC( "screen", "player", -1 , "You need at least 2 empty slots in your bag. Unable to open reward pack." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 58102 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 58013 , 1 )
		AddPlayerInfo( -1 , "item" , 60013 , 5 )
		
	}