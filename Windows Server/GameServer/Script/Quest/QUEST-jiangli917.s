	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/04
	//		Author:??
	//		TaskName:QUEST-jiangli917
	//		TaskID:????????????
	//
	//****************************************
	
	
	
	function OnTaskDone(){

		//?????????????,????????????,?????????
		//1:??
		//2:??
		//3:??
		//4:??
		//5:??
		$pro = GetPlayerInfo( -1, "profession" )
		if $pro == 1
			AddPlayerInfo( -1, "exp", 18000 )

			BC("chat", "player", -1, "Acquired 18000 EXP.")
			return
		endif
		if $pro == 3
			AddPlayerInfo( -1, "exp", 18000 )

			BC("chat", "player", -1, "Acquired 18000 EXP.")
			return
		endif
		if $pro == 4
			AddPlayerInfo( -1, "exp", 18000 )

			BC("chat", "player", -1, "Acquired 18000 EXP.")
			return
		endif
		if $pro == 6
			AddPlayerInfo( -1, "exp", 18000 )

			BC("chat", "player", -1, "Acquired 18000 EXP.")
			return
		endif
	}