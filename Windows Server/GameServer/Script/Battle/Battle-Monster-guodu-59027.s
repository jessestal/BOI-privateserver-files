	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/23
	//		Author:???
	//		TaskName:Battle-Monster-guodu-59027.s
	//		TaskID: ???????????????
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$camp = GetBattleCamp( 234 , $id )
		#name = GetPlayerInfo( -1 , "name" )
		
		if $camp == 2
			#resname = SwapResourcePoint( $id , 59028 , 2 )
			BC( "screen", "map", 234 , #name, " is attempting to capture the ", #resname , ". It will be completely captured in 20 seconds.")
			return
		endif
		
		
		#resname = SwapResourcePoint( $id , 59029 , 1 )
		BC( "screen", "map", 234 , "Mani occupies ", #resname, "." )
		
		AddMonster( 59036 , 2 ,234 , 63 , 65 , 1 )
		
		
	}