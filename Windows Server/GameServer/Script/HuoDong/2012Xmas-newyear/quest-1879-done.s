	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012
	//		Author:
	//		TaskName:
	//		TaskID:
	//****************************************
	function OnTaskAccept(){
		}
	function OnTaskDone(){
		}
	function OnTaskFailedDone(){
		
//		$a = GetPlayerVar( -1 , 3261 )
//		$a = $a + 1
//		
//		//????????2?3???,?????1
//		$RankListzhounian = GetRankListValue( 1, 499 )
//		if $RankListzhounian >= 90
//			if $a == 5
//				SendMail( -1 , "GUID:04862000000" , "GUID:04862000001" , 0 , 63735 )
//				SetPlayerVar( -1 , 3261 , 0 )
//				BC( "screen", "player", -1, "GUID:04862000002",$a,"GUID:04862000003")
//			else
//				SetPlayerVar( -1 , 3261 , $a )
//				BC( "screen", "player", -1, "GUID:04862000004",$a,"GUID:04862000005")	 
//			endif
//		endif
//		
		//??????
		
				
		SendMail( -1 , "Preparing Fireworks: completed." , "Congratulations! You have completed the Preparing Fireworks quest and got a {#ffffd800=Firework Box#} as reward.\n{#ffffd800=Hint: the quest Preparing Fireworks can be done once per day. Open the Firework Box to get a Fancy New Year's Salute. It can be set in Atlantis.#}" , 0 , 44611 ) 
				
//		//??????
//		
//		$history = GetGlobalVar( 970 )
//		$history = $history + 1
//		SetGlobalVar( 970 , $history )
	}