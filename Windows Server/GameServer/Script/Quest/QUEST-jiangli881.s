	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/30
	//		Author:??
	//		TaskName:QUEST-jiangli881
	//		TaskID:??????????
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
			AddPlayerInfo( -1, "exp", 5103 )
			AddPlayerInfo( -1, "money", 748 )
			BC("chat", "player", -1, "Acquired 5103 EXP and 748 Coins.")
			return
		endif
		if $pro == 3
			AddPlayerInfo( -1, "exp", 5103 )
			AddPlayerInfo( -1, "money", 748 )
			BC("chat", "player", -1, "Acquired 5103 EXP and 748 Coins.")
			return
		endif
		if $pro == 4
			AddPlayerInfo( -1, "exp", 5103 )
			AddPlayerInfo( -1, "money", 748 )
			BC("chat", "player", -1, "Acquired 5103 EXP and 748 Coins.")
			return
		endif
		if $pro == 6
			AddPlayerInfo( -1, "exp", 5103 )
			AddPlayerInfo( -1, "money", 748 )
			BC("chat", "player", -1, "Acquired 5103 EXP and 748 Coins.")
			return
		endif

	}