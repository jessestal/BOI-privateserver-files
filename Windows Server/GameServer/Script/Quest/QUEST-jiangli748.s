	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/12/25
	//		Author:??
	//		TaskName:QUEST-jiangli748
	//		TaskID:?????30???
	//
	//****************************************
	
	
	function OnTaskDone(){
		//AddPlayerInfo(-1 , "givepoint" , 4000)
		//BC( "chat", "player", -1 ,"GUID:08341000000" ) 
		//BC( "screen", "player", -1 ,"GUID:08341000001" ) 
//		AddPlayerInfo( -1 , "item", 60029, 1 )
		AddPlayerInfo( -1 , "item", 59929, 1 )
		AddPlayerInfo(-1 , "item" , 5945 ,1)
		$pro = GetPlayerInfo( -1, "sex" )
			if $pro == 0
				AddPlayerInfo( -1, "item", 36663, 1 )
			else
				AddPlayerInfo( -1, "item", 36662, 1 )
			endif
		$pro = GetPlayerInfo( -1, "profession" )
			if $pro == 1
				AddPlayerInfo( -1, "item", 35029, 1 ) 
				AddPlayerInfo( -1, "item", 35929, 1 ) 
				
			endif
			if $pro == 2
				AddPlayerInfo( -1, "item", 35029, 1 ) 
				AddPlayerInfo( -1, "item", 35929, 1 ) 
				
			endif
			if $pro == 3
				AddPlayerInfo( -1, "item", 35029, 1 ) 
				AddPlayerInfo( -1, "item", 35929, 1 ) 
				 
			endif
			if $pro == 4
				AddPlayerInfo( -1, "item", 35329, 1 ) 
				AddPlayerInfo( -1, "item", 35929, 1 ) 
				
			endif
			if $pro == 5
				AddPlayerInfo( -1, "item", 35329, 1 ) 
				AddPlayerInfo( -1, "item", 35929, 1 )  
				
			endif	
			if $pro == 6
				AddPlayerInfo( -1, "item", 35329, 1 ) 
				AddPlayerInfo( -1, "item", 35929, 1 )  
				
			endif	
	}
	