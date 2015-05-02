	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/23
	//		Author:???
	//		TaskName:3Battle-Monster-zhongli-59091.s
	//		TaskID: ???,???????
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$camp = GetBattleCamp( 256 , $id ) 
		#name = GetPlayerInfo( -1 , "name" )
		
		if $camp == 1
			#resname = SwapResourcePoint( $id , 59092, 1 )
			BC( "screen", "map", 256 , #name, " is attempting to capture the ", #resname, ". It will be occupied completely in 20 seconds.")
			PlaySoundToMap(256, "..\\Data\\Audio\\UI\\MainStory.wav")
			return
		endif
		
		if $camp == 2
			#resname = SwapResourcePoint( $id , 59093, 2 )
			BC( "screen", "map", 256 , #name, " is attempting to capture the ", #resname, ". It will be occupied completely in 20 seconds.")
			PlaySoundToMap(256, "..\\Data\\Audio\\UI\\MainStory.wav")
			return
		endif
		
	}