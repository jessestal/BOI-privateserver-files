	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/20
	//		Author:???
	//		TaskName:
	//		TaskID:??
	//
	//****************************************
	
	
	function OnUseItem(){
		//????
		
		$x = GetPlayerInfo( -1 , "mapx" )
		$y = GetPlayerInfo( -1 , "mapy" )
		$ectype_ID = GetEctypeID( -1 , 569 )
		
		
		$result = AddMonster( 11989 , 1 , $ectype_ID , $x , $y , 0 )
		if $result != 0
			BC( "screen" , "player" , -1 , "Failed to use. Item can only be used in the Pyramid Sealed Chamber." )
		endif
						
	}