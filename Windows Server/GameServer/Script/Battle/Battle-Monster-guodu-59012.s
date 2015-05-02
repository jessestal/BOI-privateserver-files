	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/23
	//		Author:???
	//		TaskName:Battle-Monster-guodu-59012.s
	//		TaskID: ???????????????
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$camp = GetBattleCamp( 220 , $id )
		#name = GetPlayerInfo( -1 , "name" )
		
		if $camp == 2
			#resname = SwapResourcePoint( $id , 59013 , 2 )
			BC( "screen", "map", 220 , #name, " is attempting to capture the ", #resname , ". It will be completely captured in 20 seconds.")
			return
		endif
		
		
		#resname = SwapResourcePoint( $id , 59014 , 1 )
		BC( "screen", "map", 220 , "Mani occupies ", #resname, "." )
		
		AddMonster( 59016 , 2 ,220 , 66 , 41 , 1 )
		
		
	}