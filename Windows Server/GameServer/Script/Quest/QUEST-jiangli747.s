	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/12/25
	//		Author:??
	//		TaskName:QUEST-jiangli747
	//		TaskID:?????20???
	//
	//****************************************
	
	
	function OnTaskDone(){
	
		//AddPlayerInfo(-1 , "givepoint" , 3000)
		//BC( "chat", "player", -1 ,"GUID:08340000000" ) 
		//BC( "screen", "player", -1 ,"GUID:08340000001" ) 

//		AddPlayerInfo(-1 , "item" , 64398 ,2)
		AddPlayerInfo(-1 , "item" , 5805 ,2)

		$pro = GetPlayerInfo( -1, "profession" )
		
		if $pro == 1
			AddPlayerInfo( -1, "item", 19536, 1 )
			
		endif
		if $pro == 2
			AddPlayerInfo( -1, "item", 19537, 1 )
			//AddPlayerInfo( -1, "item", 39279, 1 )
		endif	
		if $pro == 3
			AddPlayerInfo( -1, "item", 19538, 1 )

		endif
		if $pro == 4
			AddPlayerInfo( -1, "item", 19539, 1 )

		endif
		if $pro == 5
			AddPlayerInfo( -1, "item", 19540, 1 )
			//AddPlayerInfo( -1, "item", 39301, 1 )
		endif
		if $pro == 6
			AddPlayerInfo( -1, "item", 19541, 1 )
			//AddPlayerInfo( -1, "item", 39301, 1 )
		endif
	}