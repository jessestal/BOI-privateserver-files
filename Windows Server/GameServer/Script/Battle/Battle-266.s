	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/05
	//		Author:??
	//		TaskName:Battle-266.s
	//		TaskID: ????
	//
	//****************************************
	
	
	function OnStart(){
		$ectype_ID = GetEctypeID(-1 ,266)
			
		AddResourcePoint( $ectype_ID , 59171, 0, 195, 216, "Stone of Blessings")
		AddResourcePoint( $ectype_ID , 59176, 0, 153, 174, "Inspiration of Gods")
		AddResourcePoint( $ectype_ID , 59181, 0, 108, 131, "Chaos Crystal")

		
		
		AddMonsterByFloat (59101 , 1 , $ectype_ID , 208 , 138 , 0 , 0 , 195 )
		AddMonsterByFloat (59101 , 1 , $ectype_ID , 204 , 138 , 0 , 0 , 195 )
		AddMonsterByFloat (59101 , 1 , $ectype_ID , 193 , 133 , 0 , 0 , 195 )
		AddMonsterByFloat (59101 , 1 , $ectype_ID , 192 , 127 , 0 , 0 , 195 )
		
		AddMonsterByFloat (59100 , 1 , $ectype_ID , 105 , 203 , 0 , 0 , 175 )
		AddMonsterByFloat (59100 , 1 , $ectype_ID , 109 , 211 , 0 , 0 , 175 )
		AddMonsterByFloat (59100 , 1 , $ectype_ID , 117 , 221 , 0 , 0 , 175 )
		AddMonsterByFloat (59100 , 1 , $ectype_ID , 113 , 216 , 0 , 0 , 175 )
		
		AddMonsterByFloat (59217 , 1 , $ectype_ID , 206 , 117 , 0 , 0 , 300 )
		AddMonsterByFloat (59216 , 1 , $ectype_ID , 104 , 220 , 0 , 0 , 265 )
		
		

	}

	function OnEnd(){
		$ectype_ID = GetEctypeID(-1 ,266)
		$a = GetBattleWinner($ectype_ID)
		PlaySoundToMap($ectype_ID, "..\\Data\\Audio\\UI\\MainStory.wav")
		if $a == 1
				BC( "screen", "map", $ectype_ID, "Mani is victorious!" )
				BC( "chat", "map", $ectype_ID, "Mani is victorious!" )
		endif
		if $a == 2
				BC( "screen", "map", $ectype_ID, "Sol is victorious!" )
				BC( "chat", "map", $ectype_ID, "Sol is victorious!" )
		endif
				
	}