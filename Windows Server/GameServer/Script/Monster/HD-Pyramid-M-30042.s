    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/04
	//		Author:???
	//		TaskName:HD-Pyramid-M-30042.s
	//		TaskID:?????.BOSS????????????
	//
	//****************************************
	
	
	
	function OnDead(){
		//???BOSS??????
		$BossVar = 73
		
		//?????ID
		$team_head_id =	GetTeamHeaderID (-1)
		//???????
		#player_name = GetPlayerInfo( $team_head_id, "name" )
		//??BOSS??
		SetServerVar( $BossVar, 1 )
		
		//????BOSS???
		BC( "chat", "server", -1, "The hero ",#player_name,"' has led their party to defeat Illusion-Arch Priest Britacesk!" )
		BC( "screen", "server", -1, "The hero ",#player_name,"' has led their party to defeat Illusion-Arch Priest Britacesk!" )
		
		$ServerVar1 = GetServerVar( 70 )
		if $ServerVar1 != 0
			return
		endif
		$ServerVar2 = GetServerVar( 71 )
		if $ServerVar2 != 0
			return
		endif
		$ServerVar3 = GetServerVar( 72 )
		if $ServerVar3 != 0
			return
		endif
		
		SetServerVar( 74, 4 )
		AddNPC( 1806 )
		PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		NPCAction( -1, 1806, specialidle, 1 )
		
	}	