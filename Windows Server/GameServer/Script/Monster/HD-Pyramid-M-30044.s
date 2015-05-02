        //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/13
	//		Author:??
	//		TaskName:HD-Pyramid-M-30044.s
	//		TaskID:???.BOSS???????
	//
	//****************************************
	
	
	
	function OnDead(){
		//??
		$Now_Minute =  GetSystemTime( "minute" )
		//?
		$Now_Second = GetSystemTime( "second" )
		//????
		$Old_Minute = GetPlayerVar( -1, 3651 )
		$Old_Second = GetPlayerVar( -1, 3652 )
		
		$Cha_Minute = $Now_Minute - $Old_Minute
		$Cha_Second = $Now_Second
		
		//?????ID
		$team_head_id =	GetTeamHeaderID (-1)
		//???????
		#player_name = GetPlayerInfo( $team_head_id, "name" )
		
		//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		
		//????BOSS???????
		$sizeP01 = GetPlayerDistance( -1, $teamplayer1_id )
		$sizeP02 = GetPlayerDistance( -1, $teamplayer2_id )
		$sizeP03 = GetPlayerDistance( -1, $teamplayer3_id )
		$sizeP04 = GetPlayerDistance( -1, $teamplayer4_id )
		$sizeP05 = GetPlayerDistance( -1, $teamplayer5_id )
		$sizeP06 = GetPlayerDistance( -1, $teamplayer6_id )
		
		//C???
		if $Cha_Minute <= 59
			if $Cha_Minute >= 44
				call Cping()
				PlayEffect( 0, "common\pingdingdengji_c\fire\tx_pingdingdengji_c.ini" )
				BC( "chat", "server", -1, "The hero ",#player_name,"s party has defeated Set. They have used ",$Cha_Minute," minutes ",$Cha_Second," seconds. Rank: C." )
				BC( "screen", "server", -1, "The hero ",#player_name,"s party has defeated Set. They have used ",$Cha_Minute," minutes ",$Cha_Second," seconds. Rank: C." )
				BC( "scrollbar", "server", -1, "The hero ",#player_name,"s party has defeated Set. They have used ",$Cha_Minute," minutes ",$Cha_Second," seconds. Rank: C." )
			endif	
		endif
		
		//B???
		if $Cha_Minute < 44
			if $Cha_Minute >= 34
				call Bping()
				PlayEffect( 0, "common\pingdingdengji_b\fire\tx_pingdingdengji_b.ini" )
				BC( "chat", "server", -1, "The hero ",#player_name,"s party has defeated Set. They have used ",$Cha_Minute," minutes ",$Cha_Second," seconds. Rank: B." )
				BC( "screen", "server", -1, "The hero ",#player_name,"s party has defeated Set. They have used ",$Cha_Minute," minutes ",$Cha_Second," seconds. Rank: B." )
				BC( "scrollbar", "server", -1, "The hero ",#player_name,"s party has defeated Set. They have used ",$Cha_Minute," minutes ",$Cha_Second," seconds. Rank: B." )
			endif	
		endif
		
		//A???
		if $Cha_Minute < 34
			if $Cha_Minute >= 17
				call Aping()
				PlayEffect( 0, "common\pingdingdengji_a\fire\tx_pingdingdengji_a.ini" )
				BC( "chat", "server", -1, "The hero ",#player_name,"s party has defeated Set. They have used ",$Cha_Minute," minutes ",$Cha_Second," seconds. Rank: A." )
				BC( "screen", "server", -1, "The hero ",#player_name,"s party has defeated Set. They have used ",$Cha_Minute," minutes ",$Cha_Second," seconds. Rank: A." )
				BC( "scrollbar", "server", -1, "The hero ",#player_name,"s party has defeated Set. They have used ",$Cha_Minute," minutes ",$Cha_Second," seconds. Rank: A." )
			endif	
		endif
		
		//S???
		if $Cha_Minute < 17
			if $Cha_Minute >= 10
				call Sping()
				PlayEffect( 0, "common\pingdingdengji_s\fire\tx_pingdingdengji_s.ini" )
				BC( "chat", "server", -1, "The hero ",#player_name,"s party has defeated Set. They have used ",$Cha_Minute," minutes ",$Cha_Second," seconds. Rank: S." )
				BC( "screen", "server", -1, "The hero ",#player_name,"s party has defeated Set. They have used ",$Cha_Minute," minutes ",$Cha_Second," seconds. Rank: S." )
				BC( "scrollbar", "server", -1, "The hero ",#player_name,"s party has defeated Set. They have used ",$Cha_Minute," minutes ",$Cha_Second," seconds. Rank: S." )
			endif	
		endif
		
		//SS???
		if $Cha_Minute < 10
			call SSping()
			PlayEffect( 0, "common\pingdingdengji_ss\fire\tx_pingdingdengji_ss.ini" )
			BC( "chat", "server", -1, "The hero ",#player_name,"s party has defeated Set. They have used ",$Cha_Minute," minutes ",$Cha_Second," seconds. Rank: SS." )
			BC( "screen", "server", -1, "The hero ",#player_name,"s party has defeated Set. They have used ",$Cha_Minute," minutes ",$Cha_Second," seconds. Rank: SS." )
			BC( "scrollbar", "server", -1, "The hero ",#player_name,"s party has defeated Set. They have used ",$Cha_Minute," minutes ",$Cha_Second," seconds. Rank: SS." )
		endif
		
	}
	
	function Cping(){
		if $teamplayer1_id != -1
			if $sizeP01 > 30
				return
			endif
			$Cjilu = GetPlayerVar( $teamplayer1_id, 3656 )
			$Cjilu = $Cjilu + 1
			SetPlayerVar( $teamplayer1_id, 3656, $Cjilu )
			SetPlayerVar( $teamplayer1_id, 3657, 1 )
		endif
		if $teamplayer2_id != -1
			if $sizeP02 > 30
				return
			endif
			$Cjilu = GetPlayerVar( $teamplayer2_id, 3656 )
			$Cjilu = $Cjilu + 1
			SetPlayerVar( $teamplayer2_id, 3656, $Cjilu )
			SetPlayerVar( $teamplayer2_id, 3657, 1 )
		endif
		if $teamplayer3_id != -1
			if $sizeP03 > 30
				return
			endif
			$Cjilu = GetPlayerVar( $teamplayer3_id, 3656 )
			$Cjilu = $Cjilu + 1
			SetPlayerVar( $teamplayer3_id, 3656, $Cjilu )
			SetPlayerVar( $teamplayer3_id, 3657, 1 )
		endif
		if $teamplayer4_id != -1
			if $sizeP04 > 30
				return
			endif
			$Cjilu = GetPlayerVar( $teamplayer4_id, 3656 )
			$Cjilu = $Cjilu + 1
			SetPlayerVar( $teamplayer4_id, 3656, $Cjilu )
			SetPlayerVar( $teamplayer4_id, 3657, 1 )
		endif
		if $teamplayer5_id != -1
			if $sizeP05 > 30
				return
			endif
			$Cjilu = GetPlayerVar( $teamplayer5_id, 3656 )
			$Cjilu = $Cjilu + 1
			SetPlayerVar( $teamplayer5_id, 3656, $Cjilu )
			SetPlayerVar( $teamplayer5_id, 3657, 1 )
		endif
		if $teamplayer6_id != -1
			if $sizeP06 > 30
				return
			endif
			$Cjilu = GetPlayerVar( $teamplayer6_id, 3656 )
			$Cjilu = $Cjilu + 1
			SetPlayerVar( $teamplayer6_id, 3656, $Cjilu )
			SetPlayerVar( $teamplayer6_id, 3657, 1 )
		endif
	}

	function Bping(){
		if $teamplayer1_id != -1
			if $sizeP01 > 30
				return
			endif
			$Bjilu = GetPlayerVar( $teamplayer1_id, 3655 )
			$Bjilu = $Bjilu + 1
			SetPlayerVar( $teamplayer1_id, 3655, $Bjilu )
			SetPlayerVar( $teamplayer1_id, 3657, 2 )
		endif
		if $teamplayer2_id != -1
			if $sizeP02 > 30
				return
			endif
			$Bjilu = GetPlayerVar( $teamplayer2_id, 3655 )
			$Bjilu = $Bjilu + 1
			SetPlayerVar( $teamplayer2_id, 3655, $Bjilu )
			SetPlayerVar( $teamplayer2_id, 3657, 2 )
		endif
		if $teamplayer3_id != -1
			if $sizeP03 > 30
				return
			endif
			$Bjilu = GetPlayerVar( $teamplayer3_id, 3655 )
			$Bjilu = $Bjilu + 1
			SetPlayerVar( $teamplayer3_id, 3655, $Bjilu )
			SetPlayerVar( $teamplayer3_id, 3657, 2 )
		endif
		if $teamplayer4_id != -1
			if $sizeP04 > 30
				return
			endif
			$Bjilu = GetPlayerVar( $teamplayer4_id, 3655 )
			$Bjilu = $Bjilu + 1
			SetPlayerVar( $teamplayer4_id, 3655, $Bjilu )
			SetPlayerVar( $teamplayer4_id, 3657, 2 )
		endif
		if $teamplayer5_id != -1
			if $sizeP05 > 30
				return
			endif
			$Bjilu = GetPlayerVar( $teamplayer5_id, 3655 )
			$Bjilu = $Bjilu + 1
			SetPlayerVar( $teamplayer5_id, 3655, $Bjilu )
			SetPlayerVar( $teamplayer5_id, 3657, 2 )
		endif
		if $teamplayer6_id != -1
			if $sizeP06 > 30
				return
			endif
			$Bjilu = GetPlayerVar( $teamplayer6_id, 3655 )
			$Bjilu = $Bjilu + 1
			SetPlayerVar( $teamplayer6_id, 3655, $Bjilu )
			SetPlayerVar( $teamplayer6_id, 3657, 2 )
		endif
	}

	function Aping(){
		if $teamplayer1_id != -1
			if $sizeP01 > 30
				return
			endif
			$Ajilu = GetPlayerVar( $teamplayer1_id, 3654 )
			$Ajilu = $Ajilu + 1
			SetPlayerVar( $teamplayer1_id, 3654, $Ajilu )
			SetPlayerVar( $teamplayer1_id, 3657, 3 )
		endif
		if $teamplayer2_id != -1
			if $sizeP02 > 30
				return
			endif
			$Ajilu = GetPlayerVar( $teamplayer2_id, 3654 )
			$Ajilu = $Ajilu + 1
			SetPlayerVar( $teamplayer2_id, 3654, $Ajilu )
			SetPlayerVar( $teamplayer2_id, 3657, 3 )
		endif
		if $teamplayer3_id != -1
			if $sizeP03 > 30
				return
			endif
			$Ajilu = GetPlayerVar( $teamplayer3_id, 3654 )
			$Ajilu = $Ajilu + 1
			SetPlayerVar( $teamplayer3_id, 3654, $Ajilu )
			SetPlayerVar( $teamplayer3_id, 3657, 3 )
		endif
		if $teamplayer4_id != -1
			if $sizeP04 > 30
				return
			endif
			$Ajilu = GetPlayerVar( $teamplayer4_id, 3654 )
			$Ajilu = $Ajilu + 1
			SetPlayerVar( $teamplayer4_id, 3654, $Ajilu )
			SetPlayerVar( $teamplayer4_id, 3657, 3 )
		endif
		if $teamplayer5_id != -1
			if $sizeP05 > 30
				return
			endif
			$Ajilu = GetPlayerVar( $teamplayer5_id, 3654 )
			$Ajilu = $Ajilu + 1
			SetPlayerVar( $teamplayer5_id, 3654, $Ajilu )
			SetPlayerVar( $teamplayer5_id, 3657, 3 )
		endif
		if $teamplayer6_id != -1
			if $sizeP06 > 30
				return
			endif
			$Ajilu = GetPlayerVar( $teamplayer6_id, 3654 )
			$Ajilu = $Ajilu + 1
			SetPlayerVar( $teamplayer6_id, 3654, $Ajilu )
			SetPlayerVar( $teamplayer6_id, 3657, 3 )
		endif
	}
	
	function Sping(){
		if $teamplayer1_id != -1
			if $sizeP01 > 30
				return
			endif
			$Sjilu = GetPlayerVar( $teamplayer1_id, 3653 )
			$Sjilu = $Sjilu + 1
			SetPlayerVar( $teamplayer1_id, 3653, $Sjilu )
			SetPlayerVar( $teamplayer1_id, 3657, 4 )
		endif
		if $teamplayer2_id != -1
			if $sizeP02 > 30
				return
			endif
			$Sjilu = GetPlayerVar( $teamplayer2_id, 3653 )
			$Sjilu = $Sjilu + 1
			SetPlayerVar( $teamplayer2_id, 3653, $Sjilu )
			SetPlayerVar( $teamplayer2_id, 3657, 4 )
		endif
		if $teamplayer3_id != -1
			if $sizeP03 > 30
				return
			endif
			$Sjilu = GetPlayerVar( $teamplayer3_id, 3653 )
			$Sjilu = $Sjilu + 1
			SetPlayerVar( $teamplayer3_id, 3653, $Sjilu )
			SetPlayerVar( $teamplayer3_id, 3657, 4 )
		endif
		if $teamplayer4_id != -1
			if $sizeP04 > 30
				return
			endif
			$Sjilu = GetPlayerVar( $teamplayer4_id, 3653 )
			$Sjilu = $Sjilu + 1
			SetPlayerVar( $teamplayer4_id, 3653, $Sjilu )
			SetPlayerVar( $teamplayer4_id, 3657, 4 )
		endif
		if $teamplayer5_id != -1
			if $sizeP05 > 30
				return
			endif
			$Sjilu = GetPlayerVar( $teamplayer5_id, 3653 )
			$Sjilu = $Sjilu + 1
			SetPlayerVar( $teamplayer5_id, 3653, $Sjilu )
			SetPlayerVar( $teamplayer5_id, 3657, 4 )
		endif
		if $teamplayer6_id != -1
			if $sizeP06 > 30
				return
			endif
			$Sjilu = GetPlayerVar( $teamplayer6_id, 3653 )
			$Sjilu = $Sjilu + 1
			SetPlayerVar( $teamplayer6_id, 3653, $Sjilu )
			SetPlayerVar( $teamplayer6_id, 3657, 4 )
		endif
	}
	
	function SSping(){
		if $teamplayer1_id != -1
			if $sizeP01 > 30
				return
			endif
			$SSjilu = GetPlayerVar( $teamplayer1_id, 3682 )
			$SSjilu = $SSjilu + 1
			SetPlayerVar( $teamplayer1_id, 3682, $SSjilu )
			SetPlayerVar( $teamplayer1_id, 3657, 5 )
		endif
		if $teamplayer2_id != -1
			if $sizeP02 > 30
				return
			endif
			$SSjilu = GetPlayerVar( $teamplayer2_id, 3682 )
			$SSjilu = $SSjilu + 1
			SetPlayerVar( $teamplayer2_id, 3682, $SSjilu )
			SetPlayerVar( $teamplayer2_id, 3657, 5 )
		endif
		if $teamplayer3_id != -1
			if $sizeP03 > 30
				return
			endif
			$SSjilu = GetPlayerVar( $teamplayer3_id, 3682 )
			$SSjilu = $SSjilu + 1
			SetPlayerVar( $teamplayer3_id, 3682, $SSjilu )
			SetPlayerVar( $teamplayer3_id, 3657, 5 )
		endif
		if $teamplayer4_id != -1
			if $sizeP04 > 30
				return
			endif
			$SSjilu = GetPlayerVar( $teamplayer4_id, 3682 )
			$SSjilu = $SSjilu + 1
			SetPlayerVar( $teamplayer4_id, 3682, $SSjilu )
			SetPlayerVar( $teamplayer4_id, 3657, 5 )
		endif
		if $teamplayer5_id != -1
			if $sizeP05 > 30
				return
			endif
			$SSjilu = GetPlayerVar( $teamplayer5_id, 3682 )
			$SSjilu = $SSjilu + 1
			SetPlayerVar( $teamplayer5_id, 3682, $SSjilu )
			SetPlayerVar( $teamplayer5_id, 3657, 5 )
		endif
		if $teamplayer6_id != -1
			if $sizeP06 > 30
				return
			endif
			$SSjilu = GetPlayerVar( $teamplayer6_id, 3682 )
			$SSjilu = $SSjilu + 1
			SetPlayerVar( $teamplayer6_id, 3682, $SSjilu )
			SetPlayerVar( $teamplayer6_id, 3657, 5 )
		endif
	}				