	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/04
	//		Author:??
	//		TaskName:Battle-259.s
	//		TaskID: ????
	//
	//****************************************
	
	
	function OnStart(){
		//?????????ID
		$ectype_ID = GetCurEctypeID()
		
		//???????	
		AddResourcePoint( $ectype_ID , 59286, 0, 163, 163, "Crystal of Void")
		AddResourcePoint( $ectype_ID , 59291, 0, 163, 56, "Crystal of Order")
		AddResourcePoint( $ectype_ID , 59296, 0, 163, 270, "Crystal of Chaos")
		
		//??????Tower
		AddMonsterByFloat (59303 , 1 , $ectype_ID , 73 , 129 , 0 , 0 , 0 )
		AddMonsterByFloat (59303 , 1 , $ectype_ID , 73 , 113 , 0 , 0 , 0 )
		AddMonsterByFloat (59303 , 1 , $ectype_ID , 97 , 112 , 0 , 0 , 0 )
		AddMonsterByFloat (59303 , 1 , $ectype_ID , 86 , 106 , 0 , 0 , 0 )
		AddMonsterByFloat (59303 , 1 , $ectype_ID , 117 , 96 , 0 , 0 , 0 )
		AddMonsterByFloat (59303 , 1 , $ectype_ID , 106 , 99 , 0 , 0 , 0 )
		
		//??????Tower
		AddMonsterByFloat (59304 , 1 , $ectype_ID , 246 , 193 , 0 , 0 , 0 )
		AddMonsterByFloat (59304 , 1 , $ectype_ID , 257 , 193 , 0 , 0 , 0 )
		AddMonsterByFloat (59304 , 1 , $ectype_ID , 243 , 220 , 0 , 0 , 0 )
		AddMonsterByFloat (59304 , 1 , $ectype_ID , 234 , 213 , 0 , 0 , 0 )
		AddMonsterByFloat (59304 , 1 , $ectype_ID , 209 , 232 , 0 , 0 , 0 )
		AddMonsterByFloat (59304 , 1 , $ectype_ID , 218 , 229 , 0 , 0 , 0 )
		
		//???????
		AddMonsterByFloat (59301 , 1 , $ectype_ID , 71 , 122 , 0 , 0 , 0 )
		AddMonsterByFloat (59302 , 1 , $ectype_ID , 252 , 192 , 0 , 0 , 0 )
		
		//??????
		BC("chat", "map", $ectype_ID, "Warriors! Welcome to the Champion's Arena of Fairness! Enjoy the thrill of fighting!" )
		BC("screen", "map", $ectype_ID, "Warriors! Welcome to the Champion's Arena of Fairness! Enjoy the thrill of fighting!" )
	}

	function OnEnd(){
		
		$ectype_ID = GetCurEctypeID
		$line = GetServerLineID()
		$num = GetArenaTotalPlayerNum($ectypeID)
		PlaySoundToMap($ectype_ID, "..\\Data\\Audio\\UI\\MainStory.wav")
		$a = GetBattleWinner($ectype_ID)
		
		
//		AddVictoryCampScore($ectype_ID , 80 )
//		AddFailCampScore($ectype_ID , 24 )
			
		if $a == 1
			BC( "screen", "map", $ectype_ID, "Mani attained victory in the Champion's Arena!" )
			BC( "chat", "map", $ectype_ID, "Mani attained victory in the Champion's Arena!" )
		endif
		if $a == 2
			BC( "screen", "map", $ectype_ID, "Sol attained victory in the Champion's Arena!" )
			BC( "chat", "map", $ectype_ID, "Sol attained victory in the Champion's Arena!" )
		endif	
							
	}