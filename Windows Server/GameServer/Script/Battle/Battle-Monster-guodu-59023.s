	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/23
	//		Author:???
	//		TaskName:Battle-Monster-guodu-59023.s
	//		TaskID: ???????????????
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$camp = GetBattleCamp( 234 , $id )
		#name = GetPlayerInfo( -1 , "name" )
		
		if $camp == 1
			#resname = SwapResourcePoint( $id , 59022, 1 )
			BC( "screen", "map", 234 , #name, " is attempting to capture the ", #resname, ". It will be completely captured in 20 seconds.")
			return
		endif
		
		#resname = SwapResourcePoint( $id , 59025 , 2 )
		BC( "screen", "map", 234 , "Sol occupies ", #resname, "." )
		
		AddMonster( 59037 , 2 ,234 , 56 , 85 , 1 )
		
	}