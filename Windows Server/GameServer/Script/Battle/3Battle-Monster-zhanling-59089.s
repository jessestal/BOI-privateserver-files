	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/23
	//		Author:???
	//		TaskName:3Battle-Monster-zhanling-59089.s
	//		TaskID: ????????????????
	//
	//****************************************
	
	function OnDead(){
	
		$id = GetPlayerID()
		#name = GetPlayerInfo( -1 , "name" )
		
		#resname = SwapResourcePoint( $id , 59088 , 2 )
		BC( "screen", "map", 256 , #name, " is attempting to re-capture the ", #resname, ". It will be occupied completely in 20 seconds." )
		
	}