	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/5/18
	//		Author:??
	//		TaskName:zodiac-enter-npc9007.s
	//		TaskID:us only zodiac gauntlet(NPC ID 9007)
	//
	//****************************************


	//????ID 				292
	//????????? 	3989
	//????ID					3821

			function OnRequest(){

		}



	function OnOption0(){

		$id = GetPlayerID()
		$lv = GetPlayerInfo( -1, "level" )
//		$eid = GetEctypeID( -1, 292 )
		$time = GetPlayerVar(-1, 3989 )
		$player_eid = GetPlayerVar(-1, 3821 )
		$servertime = GetSystemTime( "yday" )
		$headerID = GetTeamHeaderID(-1)

		$teamer0 = GetTeamMemberID( -1, 0 )
		$teamer1 = GetTeamMemberID( -1, 1 )
		$teamer2 = GetTeamMemberID( -1, 2 )
		$teamer3 = GetTeamMemberID( -1, 3 )
		$teamer4 = GetTeamMemberID( -1, 4 )
		$teamer5 = GetTeamMemberID( -1, 5 )

		if $teamer0 > 0
				$lv0 = GetPlayerInfo( $teamer0, "level" )
		else
				$lv0 = 150
		endif

		if $teamer1 > 0
				$lv1 = GetPlayerInfo( $teamer1, "level" )
		else
				$lv1 = 150
		endif

		if $teamer2 > 0
				$lv2 = GetPlayerInfo( $teamer2, "level" )
		else
				$lv2 = 150
		endif

		if $teamer3 > 0
				$lv3 = GetPlayerInfo( $teamer3, "level" )
		else
				$lv3 = 150
		endif

		if $teamer4 > 0
				$lv4 = GetPlayerInfo( $teamer4, "level" )
		else
				$lv4 = 150
		endif

		if $teamer5 > 0
				$lv5 = GetPlayerInfo( $teamer5, "level" )
		else
				$lv5 = 150
		endif

		#name0 = GetPlayerInfo($teamer0,"name")
		#name1 = GetPlayerInfo($teamer1,"name")
		#name2 = GetPlayerInfo($teamer2,"name")
		#name3 = GetPlayerInfo($teamer3,"name")
		#name4 = GetPlayerInfo($teamer4,"name")
		#name5 = GetPlayerInfo($teamer5,"name")

		//????60??????
		if $lv < 60
				BC( "dialogbox", "player", -1, "You are under LV60, you can't enter." )
				return
		endif

		//????????
		if $time == $servertime
				BC( "dialogbox", "player", -1, "You have entered today, you can't enter again." )
				return
		endif

		//??????????
		if $id != $headerID
				BC( "dialogbox", "player", -1, "Only the team leader can activate the instance." )
				return
		endif

		if $lv0 < 60
				BC( "dialogbox", "player", -1,#name0, " level is below LV60, can't enter." )
				return
		endif

		if $lv1 < 60
				BC( "dialogbox", "player", -1,#name1, " level is below LV60, can't enter." )
				return
		endif

		if $lv2 < 60
				BC( "dialogbox", "player",-1, #name2, " level is below LV60, can't enter." )
				return
		endif

		if $lv3 < 60
				BC( "dialogbox", "player", -1,#name3, " level is below LV60, can't enter." )
				return
		endif

		if $lv4 < 60
				BC( "dialogbox", "player", -1,#name4, " level is below LV60, can't enter." )
				return
		endif

		if $lv5 < 60
				BC( "dialogbox", "player", -1,#name5, " level is below LV60, can't enter." )
				return
		endif


//????????
		$teamate_d = GetTeamAreaSize( -1 )
		if $teamate_d > 9
				BC( "dialogbox", "player", -1, "Team members are too far or not online, please gather them and enter again." )
				return
		endif

		//????3???
		$team_c = GetTeamMemberCount( -1 )
//		if $team_c < 3
//				BC( "dialogbox", "player", -1, "GUID:08451000010" )
//				return
//		endif

		//???????????


		$time0 = GetPlayerVar($teamer0, 3989 )
		$time1 = GetPlayerVar($teamer1, 3989 )
		$time2 = GetPlayerVar($teamer2, 3989 )
		$time3 = GetPlayerVar($teamer3, 3989 )
		$time4 = GetPlayerVar($teamer4, 3989 )
		$time5 = GetPlayerVar($teamer5, 3989 )

		if $time0 == $servertime
				BC( "dialogbox", "player", $teamer0, #name0,"You have joined today, you can't enter again.")
				BC( "dialogbox", "player", $teamer1, #name0,"You have joined today, you can't enter again.")
				BC( "dialogbox", "player", $teamer2, #name0,"You have joined today, you can't enter again.")
				BC( "dialogbox", "player", $teamer3, #name0,"You have joined today, you can't enter again.")
				BC( "dialogbox", "player", $teamer4, #name0,"You have joined today, you can't enter again.")
				BC( "dialogbox", "player", $teamer5, #name0,"You have joined today, you can't enter again.")
				return
		endif
		if $time1 == $servertime
				BC( "dialogbox", "player", $teamer0, #name1,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer1, #name1,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer2, #name1,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer3, #name1,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer4, #name1,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer5, #name1,"You have joined today, you can't enter again." )
				return
		endif
		if $time2 == $servertime
				BC( "dialogbox", "player", $teamer0, #name2,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer1, #name2,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer2, #name2,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer3, #name2,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer4, #name2,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer5, #name2,"You have joined today, you can't enter again." )
				return
		endif
		if $time3 == $servertime
				BC( "dialogbox", "player", $teamer0, #name3,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer1, #name3,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer2, #name3,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer3, #name3,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer4, #name3,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer5, #name3,"You have joined today, you can't enter again." )
				return
		endif
		if $time4 == $servertime
				BC( "dialogbox", "player", $teamer0, #name4,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer1, #name4,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer2, #name4,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer3, #name4,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer4, #name4,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer5, #name4,"You have joined today, you can't enter again." )
				return
		endif
		if $time5 == $servertime
				BC( "dialogbox", "player", $teamer0, #name5,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer1, #name5,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer2, #name5,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer3, #name5,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer4, #name5,"You have joined today, you can't enter again." )
				BC( "dialogbox", "player", $teamer5, #name5,"You have joined today, you can't enter again." )
				return
		endif

		//????,????
		$eid = FlyToEctype( -1, 292, 64,58 )

		if $eid < 1
				BC( "dialogbox", "player", -1, "The instance is full, please enter later." )
				return
		endif

		FlyToEctype( $teamer0, 292, 64,58 )
		FlyToEctype( $teamer1, 292, 64,58 )
		FlyToEctype( $teamer2, 292, 64,58 )
		FlyToEctype( $teamer3, 292, 64,58 )
		FlyToEctype( $teamer4, 292, 64,58 )
		FlyToEctype( $teamer5, 292, 64,58 )


		SetPlayerVar( $teamer0, 3989, $servertime )
		SetPlayerVar( $teamer1, 3989, $servertime )
		SetPlayerVar( $teamer2, 3989, $servertime )
		SetPlayerVar( $teamer3, 3989, $servertime )
		SetPlayerVar( $teamer4, 3989, $servertime )
		SetPlayerVar( $teamer5, 3989, $servertime )

		$eid0 = GetEctypeUniqueID($teamer0 , 292)
		$eid1 = GetEctypeUniqueID($teamer1 , 292)
		$eid2 = GetEctypeUniqueID($teamer2 , 292)
		$eid3 = GetEctypeUniqueID($teamer3 , 292)
		$eid4 = GetEctypeUniqueID($teamer4 , 292)
		$eid5 = GetEctypeUniqueID($teamer5 , 292)

		SetPlayerVar( $teamer0, 3821, $eid0 )
		SetPlayerVar( $teamer1, 3821, $eid1 )
		SetPlayerVar( $teamer2, 3821, $eid2 )
		SetPlayerVar( $teamer3, 3821, $eid3 )
		SetPlayerVar( $teamer4, 3821, $eid4 )
		SetPlayerVar( $teamer5, 3821, $eid5 )

}

	function OnOption1(){

		$eid = GetEctypeID( -1, 292 )
		$u_eid = GetEctypeUniqueID(-1 , 292)
		$player_eid = GetPlayerVar(-1, 3821 )
		$time = GetPlayerVar(-1, 3989 )
		$servertime = GetSystemTime( "yday" )

//		if $time != $servertime
//				BC( "dialogbox", "player", -1, "GUID:08451000048" )
//				return
//		endif

		if $u_eid != $player_eid
				BC( "dialogbox", "player", -1, "You can't return now." )
				return
		endif

		$map_count = GetMapPlayerCount($eid)
		if $map_count > 5
				BC( "dialogbox", "player", -1, "The instance is full, please enter later." )
				return
		endif

		$fly = FlyToEctype( -1, 292, 64,58 )
		if $fly < 0
				BC( "dialogbox", "player", -1, "Please enter later." )
		endif

	}

	function OnOption2(){
			$n1 = GetPlayerInfo( -1, "item",52103 )
			$lv = GetPlayerInfo( -1, "level" )
			$empty = GetPlayerInfo( -1, "nullitem",0 )

			if $n1 < 1
					BC( "dialogbox", "player", -1, "You don't hae the required item. Only the player who passed Zodiac Gauntlet can get the blessing." )
					return
			endif

			if $lv < 60
					BC( "dialogbox", "player", -1, "Your level is lower than LV60. Where did you get the power. You will be punished." )
					return
			endif

			// if $empty < 1
					// BC( "dialogbox", "player", -1, "GUID:08451000054" )
					// return
			// endif


			$result = SubPlayerInfo( -1, "item", 52103,1 )

			if $result < 0
					BC( "dialogbox", "player", -1, "Fail to delete, unable to get the reward." )
					return
			endif

					$a = $lv * $lv
					$b = 4 * $lv
					$c = $b - 76
					$d = $c * $a
					$e = 6 * $d
					$f = $e / 5
					$g = 400 * $a
					$addexp3 = $f + $g
					$addexp = $addexp3 / 2

			PlayEffect( -1  , "common\xin\xin.ini" )
			AddPlayerInfo( -1, "exp", $addexp )
//			AddPlayerInfo( -1, "item", 63394,100 )
			AddStatus( -1, 7303, 1 )



	}
