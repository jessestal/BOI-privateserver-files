	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/09
	//		Author:??
	//		TaskName:QUEST-npc40.s
	//		TaskID:40?NPC??
	//
	//****************************************
	
	function OnOption0(){
	
		$result = IsTaskDone( -1, 828 )
		if $result == 0
			BC( "chat", "player", -1, "You have acquired the artifact Trumpet of Inspiration. It will boost the owner's EXP gain." )
			return
		endif
		BC( "chat", "player", -1, "When you reached LV50, you can take a quest 'Trumpet of Inspiration' from me. By completing this quest you will get an artifact. 18000 ocean Reputation is required to get this quest." )

	
	}