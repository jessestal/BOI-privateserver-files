	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/23
	//		Author:???
	//		TaskName:Battle-Monster-guodu-59008.s
	//		TaskID: ???????????????
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$camp = GetBattleCamp( 220 , $id )
		#name = GetPlayerInfo( -1 , "name" )
		
		if $camp == 1
			#resname = SwapResourcePoint( $id , 59007, 1 )
			BC( "screen", "map", 220 , #name, " is attempting to capture the ", #resname, ". It will be completely captured in 20 seconds.")
			return
		endif
		
		#resname = SwapResourcePoint( $id , 59010 , 2 )
		BC( "screen", "map", 220 , "Sol occupies ", #resname, "." )
		
		AddMonster( 59017 , 2 ,220 , 63 , 65 , 1 )
		
	}