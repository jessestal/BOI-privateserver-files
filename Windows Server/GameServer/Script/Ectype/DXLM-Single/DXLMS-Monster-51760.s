	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011-08-25
	//		Author:???
	//		TaskName:
	//		TaskID:???

	//
	//****************************************
	
	function OnDead(){
		
		//??????,?????
		$playerID = GetPlayerID()
		$Cid = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
				$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 15
      		$weektask1 = GetPlayerVar($teamplayer_id,3564)
      		if $weektask1 != 255
      			SetPlayerVar($teamplayer_id,3564,1)
						OpenUI($teamplayer_id,1)
      		endif   		
				endif
			endif
			$Cid = $Cid + 1
		endwhile	
		//????
		
		$ectype_id = GetPlayerInfo(-1,"mapid")
		BC("screen","player",-1,"The general Sonaris is dead.")
		BC("chat","player",-1,"The general Sonaris is dead.")
		SetEctypeVar($ectype_id,70,2)
		AddNPC(671,-1)
		
		
	}