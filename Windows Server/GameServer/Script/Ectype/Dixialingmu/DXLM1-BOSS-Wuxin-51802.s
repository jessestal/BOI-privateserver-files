	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/11
	//		Author:???(??,??,??)
	//		TaskName:???479??1???BOSS??
	//		TaskID:DXLM1-BOSS-Wuxin-51802.s
	//
	//****************************************
	
	function OnDead(){
		
  	//???? ??ID 479?????? 38-0?1?2?,???683, ??
  	$ectype_id = GetEctypeID(-1, 479)
  	
  	//?????? 38-0?1?2?,???683
  	SetEctypeVar(-1, 38, 2)
  	AddNPC(683,$ectype_id)
  	AddMonsterByFloat(51825, 1, $ectype_id, 136, 273, 0, 0, 90)
  	BC("screen", "map", $ectype_id, "Ocksin is dead. His treachery is no more...")
	
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
	
}