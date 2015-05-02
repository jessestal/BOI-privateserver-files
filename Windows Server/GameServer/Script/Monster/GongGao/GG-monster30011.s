    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/30
	//		Author:??
	//		TaskName:GG-monster30011.s
	//		TaskID:??????????
	//****************************************
	
	function OnDead(){
		//-----BOSS??----
		SetServerVar( 102, 0 )

		//?????ID
		$team_head_id =	GetTeamHeaderID (-1)
		//???????
		#player_name = GetPlayerInfo( $team_head_id, "name" )
		//????BOSS???
		BC( "chat", "server", -1, "The hero ",#player_name,"s party has come to Emperor's Catacomb Level 3, and defeated True Dragon Emperor." )
		BC( "screen", "server", -1, "The hero ",#player_name,"s party has come to Emperor's Catacomb Level 3, and defeated True Dragon Emperor."  )
		
		
		
		$map_id = GetPlayerInfo(-1 , "mapid")
		$map_x = GetPlayerInfo(-1 , "mapx")
		$map_y = GetPlayerInfo(-1 , "mapy")
		//????
		AddMonster(44001 ,4 ,$map_id,$map_x, $map_y ,8)
		AddMonster(44002 ,3 ,$map_id,$map_x, $map_y ,8)
		AddMonster(44003 ,2 ,$map_id,$map_x, $map_y ,8)
		AddMonster(44004 ,5 ,$map_id,$map_x, $map_y ,8)
		AddMonster(44005 ,5 ,$map_id,$map_x, $map_y ,8)
		
	}