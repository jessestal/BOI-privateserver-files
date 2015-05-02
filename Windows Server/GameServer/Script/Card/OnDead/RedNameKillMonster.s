  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/24
	//		Author:???
	//		TaskName:RedNameKillMonster.s
	//		TaskID:?????,????????
	//
	//****************************************
	
	function OnDead(){
		
		$Monid = GetMonsterTemplateID(-1)
		$Cardid = 0
		if $Monid == 10045
			$Cardid = 10138
		endif
		if $Monid == 10041
			$Cardid = 10139
		endif
		if $Monid == 10042
			$Cardid = 10140
		endif
		if $Monid == 10043
			$Cardid = 10141
		endif
		if $Monid == 10044
			$Cardid = 10142
		endif
		if $Monid == 10046
			$Cardid = 10143
		endif
		if $Monid == 10047
			$Cardid = 10144
		endif
		if $Monid == 10181
			$Cardid = 10279
		endif
		if $Monid == 10182
			$Cardid = 10280
		endif
		if $Monid == 10183
			$Cardid = 10281
		endif
		if $Monid == 10184
			$Cardid = 10282
		endif
		if $Monid == 10185
			$Cardid = 10283
		endif
		if $Monid == 10931
			$Cardid = 10284
		endif
		if $Monid == 10932
			$Cardid = 10285
		endif
		if $Monid == 10933
			$Cardid = 10286
		endif
		if $Monid == 10934
			$Cardid = 10287
		endif
		if $Monid == 10935
			$Cardid = 10288
		endif
		if $Monid == 10936
			$Cardid = 10289
		endif
		if $Monid == 10937
			$Cardid = 10290
		endif
		if $Monid == 10938
			$Cardid = 10291
		endif
		if $Monid == 12031
			$Cardid = 10346
		endif
		if $Monid == 12032
			$Cardid = 10347
		endif
		if $Monid == 12034
			$Cardid = 10348
		endif
		if $Monid == 12035
			$Cardid = 10349
		endif
		if $Monid == 12036
			$Cardid = 10350
		endif
		if $Monid == 12037
			$Cardid = 10351
		endif
		if $Monid == 12038
			$Cardid = 10352
		endif
		if $Monid == 12039
			$Cardid = 10353
		endif
		if $Monid == 12040
			$Cardid = 10354
		endif
		if $Monid == 12041
			$Cardid = 10355
		endif
		if $Monid == 21231
			$Cardid = 10307
		endif
		if $Monid == 21232
			$Cardid = 10308
		endif
		if $Monid == 21233
			$Cardid = 10309
		endif
		if $Monid == 21234
			$Cardid = 10310
		endif
		if $Monid == 20981
			$Cardid = 10170
		endif
		if $Monid == 20982
			$Cardid = 10171
		endif
		if $Monid == 20983
			$Cardid = 10172
		endif
		if $Monid == 20984
			$Cardid = 10173
		endif
		if $Monid == 20985
			$Cardid = 10174
		endif
		if $Monid == 20986
			$Cardid = 10175
		endif
		if $Monid == 21131
			$Cardid = 10176
		endif
		if $Monid == 21132
			$Cardid = 10177
		endif
		if $Monid == 21133
			$Cardid = 10178
		endif
		if $Monid == 21134
			$Cardid = 10179
		endif
		if $Monid == 21135
			$Cardid = 10180
		endif
		if $Monid == 10042
			$star = 0
			$weekday = GetSystemTime ( "week" )
			$hour = GetSystemTime ( "hour" )
			$guai2 = GetGlobalVar(135)
			
			if $weekday == 3
				if $hour >= 16
					if $hour < 18
						$star = 1
					endif
				endif
				if $hour >= 20
					if $hour < 22
						$star = 1
					endif
				endif
			endif
			
			if $weekday == 4
				if $hour >= 14
					if $hour < 18
						$star = 1
					endif
				endif
				if $hour >= 20
					if $hour < 22
						$star = 1
					endif
				endif
			endif
							
			if $weekday == 5
				if $hour >= 14
					if $hour < 16
						$star = 1
					endif
				endif
			endif
			
			$renwu1 = IsTaskAccept(-1,1860)
			$renwu2 = IsTaskAccept(-1,1861)
			
			if $star == 1
				if $renwu1 == 0
					if $guai2 == 2
						DropMonsterItems(-1,90178)
					endif
				endif
			endif
			
			if $star == 1
				if $renwu2 == 0
					if $guai2 == 2
						DropMonsterItems(-1,90178)
					endif
				endif
			endif
		endif
		if $Monid == 10043
			$star = 0
			$weekday = GetSystemTime ( "week" )
			$hour = GetSystemTime ( "hour" )
			$guai2 = GetGlobalVar(135)
			
			if $weekday == 3
				if $hour >= 16
					if $hour < 18
						$star = 1
					endif
				endif
				if $hour >= 20
					if $hour < 22
						$star = 1
					endif
				endif
			endif
			
			if $weekday == 4
				if $hour >= 14
					if $hour < 18
						$star = 1
					endif
				endif
				if $hour >= 20
					if $hour < 22
						$star = 1
					endif
				endif
			endif
							
			if $weekday == 5
				if $hour >= 14
					if $hour < 16
						$star = 1
					endif
				endif
			endif
			
			$renwu1 = IsTaskAccept(-1,1860)
			$renwu2 = IsTaskAccept(-1,1861)
			
			if $star == 1
				if $renwu1 == 0
					if $guai2 == 3
						DropMonsterItems(-1,90178)
					endif
				endif
			endif
			
			if $star == 1
				if $renwu2 == 0
					if $guai2 == 3
						DropMonsterItems(-1,90178)
					endif
				endif
			endif
		endif
		if $Monid == 10047
			$star = 0
			$weekday = GetSystemTime ( "week" )
			$hour = GetSystemTime ( "hour" )
			$guai2 = GetGlobalVar(135)
			
			if $weekday == 3
				if $hour >= 16
					if $hour < 18
						$star = 1
					endif
				endif
				if $hour >= 20
					if $hour < 22
						$star = 1
					endif
				endif
			endif
			
			if $weekday == 4
				if $hour >= 14
					if $hour < 18
						$star = 1
					endif
				endif
				if $hour >= 20
					if $hour < 22
						$star = 1
					endif
				endif
			endif
							
			if $weekday == 5
				if $hour >= 14
					if $hour < 16
						$star = 1
					endif
				endif
			endif
			
			$renwu1 = IsTaskAccept(-1,1860)
			$renwu2 = IsTaskAccept(-1,1861)
			
			if $star == 1
				if $renwu1 == 0
					if $guai2 == 4
						DropMonsterItems(-1,90178)
					endif
				endif
			endif
			
			if $star == 1
				if $renwu2 == 0
					if $guai2 == 4
						DropMonsterItems(-1,90178)
					endif
				endif
			endif
		endif
		if $Monid == 12038
			$a = GetPlayerVar(-1,3306)
			$a = $a + 1
			
			$x = GetPlayerInfo(-1,"mapposx")
			$y = GetPlayerInfo(-1,"mapposy")
			
			SetPlayerVar(-1,3306,$a)
			
			if $a == 10
				AddMonsterByFloat( 30510, 1, 537, $x, $y, 0 )
			endif
		endif
		
		
		$get = RandomNumber( 0, 30000 )
		if $get > 0
			return
		endif
		
		$id1 = GetPlayerID()
		if $id1 < 0
			return
		endif
		
		$idaward = 0
		$TorN = IsPlayerInTeam($id1)
		if $TorN == 0
		
			$R = RandomNumber( 0, 5 )
			$id2 = GetTeamMemberID( $id1 , $R )
			if $id2 < 0
				return
			endif
			
			$red2 = GetPlayerInfo( $id2, "prestige", 0)
			if $red2 <= 0
				return
			endif
			
			$len = GetPlayerDistance( $id1, $id2 )
			if $len > 30
				return
			endif
			
			$idaward = $id2
			
		else
		
			$red1 = GetPlayerInfo( $id1, "prestige", 0)
			if $red1 <= 0
				return
			endif
		
			$R = RandomNumber( 0, 5 )
			if $R > 0
				return
			endif
			
			$idaward = $id1
			
		endif
		
		$HorN = HaveTarot($idaward,$Cardid)
		if $HorN == 1
			BC( "screen", "player", $idaward, "You already have this Fate Card! ")
			BC( "chat", "player", $idaward, "You already have this Fate Card! ")
			return
		endif
		if $HorN == 0
			AddTarotCard($idaward,$Cardid)
		endif
		
	}