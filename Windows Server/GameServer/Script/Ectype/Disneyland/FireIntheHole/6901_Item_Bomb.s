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
		
		$map = GetPlayerInfo(-1,"mapid")
		if $map < 26121
			BC("screen","player",-1,"The item can only be used in the Pyramid Sealed Chamber in the instance Bang-Up Time.")
			return
		endif
		
		if $map > 26220
			BC("screen","player",-1,"The item can only be used in the Pyramid Sealed Chamber in the instance Bang-Up Time.")
			return
		endif
				
		//????
		$revaluet = SubPlayerInfo(-1,"item",59981,1)
		
		$x = GetPlayerInfo( -1 , "mapposx" )
		$y = GetPlayerInfo( -1 , "mapposy" )
		$ectype_ID = GetEctypeID( -1 , 569 )
		
		
		$result = AddMonsterByFloat(11989,1,$ectype_ID,$x,$y,0,0,1)
		if $result != 0
			BC( "screen" , "player" , -1 , "Failed to use. Item can only be used in the Pyramid Sealed Chamber." )
		endif
						
	}