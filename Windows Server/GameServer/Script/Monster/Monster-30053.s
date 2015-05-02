	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/20
	//		Author:???
	//		TaskName:Monster-30053.s
	//		TaskID: ??
	//
	//****************************************
	
	function OnDead(){
	
		$ectype_id = GetEctypeID( -1 , 25 )
		#name = GetPlayerInfo( -1 , "name" )
		BC( "screen" , "map" ,$ectype_id , #name , "Behemoth Soul Shard acquired." )
		DropMonsterItems( -1 , 90038 )
		
	}
		
	