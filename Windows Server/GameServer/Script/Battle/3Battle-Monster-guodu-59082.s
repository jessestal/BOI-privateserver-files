	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/23
	//		Author:???
	//		TaskName:3Battle-Monster-guodu-59082.s
	//		TaskID: ???????????????
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$camp = GetBattleCamp( 256 , $id )
		#name = GetPlayerInfo( -1 , "name" )
		
		if $camp == 2
			#resname = SwapResourcePoint( $id , 59083 , 2 )
			BC( "screen", "map", 256 , #name, " is attempting to re-capture the ", #resname , ". It will be occupied completely in 20 seconds.")
			return
		endif
		
		#resname = SwapResourcePoint( $id , 59084 , 1 )
		BC( "screen", "map", 256 , "Gramr occupies ", #resname, "." )
		
		AddMonster( 59096 , 2 ,256 , 56 , 85 , 1 )
	}