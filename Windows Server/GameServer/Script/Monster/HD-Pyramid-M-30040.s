    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/04
	//		Author:???
	//		TaskName:HD-Pyramid-M-30040.s
	//		TaskID:?????.BOSS?????????
	//
	//****************************************
	
	
	
	function OnDead(){
		//???BOSS??????
		$BossVar = 71
			
		//?????ID
		$team_head_id =	GetTeamHeaderID (-1)
		//???????
		#player_name = GetPlayerInfo( $team_head_id, "name" )
		//??BOSS??
		SetServerVar( $BossVar, 1 )
		
		//????BOSS???	
		BC( "chat", "server", -1, "The hero ",#player_name,"s party has defeated Illusion-Molmes!" )
		BC( "screen", "server", -1, "The hero ",#player_name,"s party has defeated Illusion-Molmes!" )
		
		$ServerVar1 = GetServerVar( 70 )
		if $ServerVar1 != 0
			return
		endif
		$ServerVar2 = GetServerVar( 72 )
		if $ServerVar2 != 0
			return
		endif
		$ServerVar3 = GetServerVar( 73 )
		if $ServerVar3 != 0
			return
		endif
		
		SetServerVar( 74, 2 )
		AddNPC( 1797 )
		PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		NPCAction( -1, 1797, specialidle, 1 )
	}	