	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/5/12
	//		Author:??-
	//		TaskName:8hour-Quest-1625-done.s
	//		TaskID:8??????
	//****************************************
	
	function OnTaskFailedDone(){
		
		$a = GetPlayerVar( -1 , 3261 )
		$a = $a + 1
		
		//????????2?3???,?????1
		$RankListzhounian = GetRankListValue( 1, 499 )
		if $RankListzhounian >= 90
			if $a == 5
				SendMail( -1 , "Complete 5  Misha's Blessings quests." , "You've completed {#ffffd800=5#} Misha's Blessings quests. You received a special reward! \n\n{#ffffd800=You'll receive this message again when you've completed Misha's Blessings 5 more times.#}\n\n{#ff00ff30=Check the attachment for your prize!#}" , 0 , 63735 )
				SetPlayerVar( -1 , 3261 , 0 )
				BC( "screen", "player", -1, "You completed Misha's Blessings quest!",$a,"/5 times! Open your mail for a reward!")
			else
				SetPlayerVar( -1 , 3261 , $a )
				BC( "screen", "player", -1, "You completed Misha's Blessings quest!",$a,"/5 times. Each time you complete the quest 5 times, you will receive additional rewards.")	 
			endif
		endif
		
		//??????
		
				
		SendMail( -1 , "Misha's Blessings: Complete" , "Congratulations, you completed a Misha's Blessings quest! Received {#ffffd800=Emeraldshine Heart#} as a reward.\n{#ffffd800=Note: You can complete 1 Misha's Blessings quest a day. When this server's upgraded to level 2, you'll receive a bonus Lucky Sticker as a gift every time you complete 5 Misha's Blessings quests!#}" , 0 , 59796 ) 
				
		//??????
		
		$history = GetGlobalVar( 970 )
		$history = $history + 1
		SetGlobalVar( 970 , $history )
	}