	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/30
	//		Author:??
	//		TaskName:Ectype-HAQX-NPC-2019.s
	//		TaskID:????
	//
	//****************************************
	//
	function OnRequest(){
		
	

	}
	
	//??buff?
	function OnOption0(){
		
		$ectype_ID = GetEctypeID(-1 ,166)
		
		if $ectype_ID > 0
		
			DeleteNPC(2019, $ectype_ID)
			StartEctypeTimer($ectype_ID ,4)
			#name = GetPlayerInfo(-1 ,"name")
			
			BC("screen", "map", $ectype_ID, #name ,"All nearby players receive Ymir's Blessing!")
			
			$teamplayer1_id =  GetTeamMemberID( -1, 0 )
			BC("screen", "map", $ectype_ID, #name ,"All nearby players receive Ymir's Blessing!")
			$teamplayer2_id =  GetTeamMemberID( -1, 1 )
			BC("screen", "map", $ectype_ID, #name ,"All nearby players receive Ymir's Blessing!")
			$teamplayer3_id =  GetTeamMemberID( -1, 2 )
			$teamplayer4_id =  GetTeamMemberID( -1, 3 )
			$teamplayer5_id =  GetTeamMemberID( -1, 4 )
			$teamplayer6_id =  GetTeamMemberID( -1, 5 )
			
			BC("screen", "map", $ectype_ID, "Player No.1: ",$teamplayer1_id )
			BC("screen", "map", $ectype_ID, "Player No.2: ",$teamplayer2_id )
			BC("screen", "map", $ectype_ID, "Player No.3: ",$teamplayer3_id )
			BC("screen", "map", $ectype_ID, "Player No.4: ",$teamplayer4_id )
			BC("screen", "map", $ectype_ID, "Player No.5: ",$teamplayer5_id )
			BC("screen", "map", $ectype_ID, "Player No.6: ",$teamplayer6_id )


			if $teamplayer1_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer1_id )
				BC("chat", "player", -1, "Player No.1: ",$len )

				if $len <= 5
					AddStatus($teamplayer1_id , 10698 ,1)		
				endif
			endif
			if $teamplayer2_id != -1
			
				$len = GetPlayerDistance( -1 , $teamplayer2_id )
				BC("chat", "player", -1, "Player No.2: ",$len )

				if $len <= 5
					AddStatus($teamplayer2_id , 10698 ,1)
				endif
			endif
			if $teamplayer3_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer3_id )
				BC("chat", "player", -1, "Player No.3: ",$len )

				if $len <= 5
					AddStatus($teamplayer3_id , 10698 ,1)
				endif
			endif
			if $teamplayer4_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer4_id )
				BC("chat", "player", -1, "Player No.4: ",$len )

				if $len <= 5
					AddStatus($teamplayer4_id , 10698 ,1)
				endif
				
			endif
			if $teamplayer5_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer5_id )
				BC("chat", "player", -1, "Player No.5: ",$len )

				if $len <= 5
					AddStatus($teamplayer5_id , 10698 ,1)				
				endif
			endif
			if $teamplayer6_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer6_id )
				BC("chat", "player", -1, "Player No.6: ",$len )

				if $len <= 5
					AddStatus($teamplayer6_id , 10698 ,1)					
				endif
			endif
		endif

	}