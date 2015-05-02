	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/30
	//		Author:??
	//		TaskName:Ectype-HAQX-NPC-2018.s
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
		
			DeleteNPC(2018, $ectype_ID)
			StartEctypeTimer($ectype_ID ,3)
			#name = GetPlayerInfo(-1 ,"name")
			
			BC("screen", "map", $ectype_ID, #name ," has touched a Crystal Ball of Energy. All nearby players receive Ymir's Blessing!")
			
			$teamplayer1_id =  GetTeamMemberID( -1, 0 )
			$teamplayer2_id =  GetTeamMemberID( -1, 1 )
			$teamplayer3_id =  GetTeamMemberID( -1, 2 )
			$teamplayer4_id =  GetTeamMemberID( -1, 3 )
			$teamplayer5_id =  GetTeamMemberID( -1, 4 )
			$teamplayer6_id =  GetTeamMemberID( -1, 5 )
			
			
			if $teamplayer1_id != -1
			$len = GetPlayerDistance( -1 , $teamplayer1_id )
				if $len <= 5
					AddStatus($teamplayer1_id , 10698 ,1)		
				endif
			endif
			if $teamplayer2_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer2_id )
				if $len <= 5
					AddStatus($teamplayer2_id , 10698 ,1)
				endif
			endif
			if $teamplayer3_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer3_id )
				if $len <= 5
					AddStatus($teamplayer3_id , 10698 ,1)
				endif
			endif
			if $teamplayer4_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer4_id )
				if $len <= 5
					AddStatus($teamplayer4_id , 10698 ,1)
				endif
				
			endif
			if $teamplayer5_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer5_id )
				if $len <= 5
					AddStatus($teamplayer5_id , 10698 ,1)				
				endif
			endif
			if $teamplayer6_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer6_id )
				if $len <= 5
					AddStatus($teamplayer6_id , 10698 ,1)					
				endif
			endif
		endif

	}