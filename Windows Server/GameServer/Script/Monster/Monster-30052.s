	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/20
	//		Author:???
	//		TaskName:Monster-30052.s
	//		TaskID: 
	//
	//****************************************
	
	function OnDead(){
		
		#name = GetPlayerInfo ( -1 , "name" )
		$ectype_id = GetEctypeID( -1 , 25 )
		DropMonsterItems(-1 , 24050 )
		BC( "screen" , "map" , $ectype_id , #name,"Behemoth Chariot acquired." )
		BC( "chat" , "map" , $ectype_id , #name,"Behemoth Chariot acquired." )
	}
	
	