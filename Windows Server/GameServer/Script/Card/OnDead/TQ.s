  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/24
	//		Author:???
	//		TaskName:GOW.s
	//		TaskID:????
	//
	//****************************************
	
	function OnDead(){
		
		$Monid = GetMonsterTemplateID(-1)
		$aimid = GetPlayerVar(-1,4035)
		if $Monid != $aimid
			return
		endif
		
		$Ftalk = GetPlayerVar(-1,239)
		if $Ftalk == 0
			$buffo = IsExistStatus(-1 , 21603 )
			if $buffo != 0
				$today_time = GetSystemTime( "yday" )
				$player_time = GetPlayerVar( -1, 4034 )
				if $player_time == $today_time
					$Tdone = GetPlayerVar(-1,3539)
					if $Tdone == 0
						CancelTask ( -1 , 2625 )
						CancelTask ( -1 , 2626 )
						CancelTask ( -1 , 2627 )
						CancelTask ( -1 , 2628 )
						SubPlayerInfo( -1 , "item", 54096 , 1 )
						AddPlayerInfo( -1 , "item" , 54097 , 1 )
						SetPlayerVar(-1,239,1)
						BC( "messagebox", "player", -1, "You have not completed Exile's Entreaty in time. You can only acquire Titan's Comfort!")
					endif
				endif
			endif
		endif
		
		$id1 = GetPlayerID()
		if $id1 <= 0
			return
		endif
		
		$buff = IsExistStatus(-1 , 21603 )
		if $buff != 0
			return
		endif
		
		$idaward = 0
		$rKind	=	GetGlobalVar(355 )
		$rHard2	=	GetGlobalVar(357 )
		
		if $rKind == 1
			$TorN = IsPlayerInTeam($id1)
			if $TorN == 0
				$i = 0
				while $i < 6
					$idaward = GetTeamMemberID( $id1 , $i )
					if $idaward > 0
						$buff2 = IsExistStatus($idaward , 21603 )
						if $buff2 == 0
							$len = GetPlayerDistance( $id1, $idaward )
							if $len < 30
								$Qnum = GetPlayerVar($idaward,4075)
								if $Qnum <= 0
									BC( "screen", "player", $idaward, "You've complete Exile's Entreaty. Make sure to collect your reward before Rullamas leaves!")
								endif
								if $Qnum == 1
									SetPlayerVar( $idaward, 4075, 0)
									AddStatus( $idaward, 21603, 4 )
									AddStatus( $idaward, 21604, 4 )
									AddStatus( $idaward, 21605, 4 )
									SetPlayerVar($idaward,3539,1)
									BC( "messagebox", "player", $idaward, "You've complete Exile's Entreaty. Make sure to collect your reward before Rullamas leaves!")
								endif
								if $Qnum > 1
									$Qnum = $Qnum - 1
									SetPlayerVar($idaward,4075,$Qnum)
									BC( "screen", "player", $idaward, "You need to complete the request",$Qnum, "Bloody Sacrifice times!")
								endif
							endif
						endif
					endif
					$i = $i + 1
				endwhile
			else
				$idaward = $id1
				$Qnum = GetPlayerVar($idaward,4075)
				if $Qnum <= 0
					BC( "screen", "player", $idaward, "You've complete Exile's Entreaty. Make sure to collect your reward before Rullamas leaves!")
				endif
				if $Qnum == 1
					SetPlayerVar( $idaward, 4075, 0)
					AddStatus( $idaward, 21603, 4 )
					AddStatus( $idaward, 21604, 4 )
					AddStatus( $idaward, 21605, 4 )
					SetPlayerVar($idaward,3539,1)
					BC( "messagebox", "player", $idaward, "You've complete Exile's Entreaty. Make sure to collect your reward before Rullamas leaves!")
				endif
				if $Qnum > 1
					$Qnum = $Qnum - 1
					SetPlayerVar($idaward,4075,$Qnum)
					BC( "screen", "player", $idaward, "You need to complete the request",$Qnum, "Bloody Sacrifice times!")
				endif
			endif
		endif
		
		if $rKind == 2
			$rMonster	=	GetGlobalVar(352 )
			$mapid = GetPlayerInfo( $id1, "mapid")
			$x = GetPlayerInfo( $id1, "mapx")
			$y = GetPlayerInfo( $id1, "mapy")
			if $rHard2 == 1
				$shuabu = RandomNumber( 0, 1 )
				if $shuabu == 0
					AddLevelFieldMonster(55602,223,120,86,$rMonster,1,$mapid,$x,$y,10)
				endif
			endif
			if $rHard2 == 2
				$shuabu = RandomNumber( 0, 2 )
				if $shuabu == 0
					AddLevelFieldMonster(55602,224,120,86,$rMonster,1,$mapid,$x,$y,10)
				endif
			endif
			if $rHard2 == 3
				$shuabu = RandomNumber( 0, 3 )
				if $shuabu == 0
					AddLevelFieldMonster(55602,225,120,86,$rMonster,1,$mapid,$x,$y,10)
				endif
			endif
		endif
		
		if $rKind == 3
			$TorN = IsPlayerInTeam($id1)
			if $TorN == 0
				$R = RandomNumber( 0, 5 )
				$id2 = GetTeamMemberID( $id1 , $R )
				if $id2 <= 0
					return
				endif
				$buff2 = IsExistStatus($id2 , 21603 )
				if $buff2 != 0
					return
				endif
				$len = GetPlayerDistance( $id1, $id2 )
				if $len > 30
					return
				endif
				$idaward = $id2
			else
				$buff1 = IsExistStatus( $id1 , 21603 )
				if $buff1 != 0
					return
				endif
				$R = RandomNumber( 0, 5 )
				if $R > 0
					return
				endif
				$idaward = $id1
			endif
			$Qnum = GetPlayerVar($idaward,4075)
			if $Qnum <= 0
				BC( "screen", "player", $idaward, "You've complete Exile's Entreaty. Make sure to collect your reward before Rullamas leaves!")
				return
			endif
			$nullitem = GetPlayerInfo( $idaward , "nullitem" , 0 )
			if $nullitem < 1
				BC( "screen", "player", $idaward, "Bag is full. Can not accept the item!")
				return
			endif
			$rHard1	=	GetGlobalVar(356 )
			if $rHard1 == 1
				$QuestNum = 20
			endif
			if $rHard1 == 2
				$QuestNum = 30
			endif
			if $rHard1 == 3
				$QuestNum = 40
			endif
			if $rHard2 == 1
				AddPlayerInfo( $idaward , "item" , 54105 , 1 )
				$itemnum = GetPlayerInfo( $idaward , "item" , 54105 )
				$Qnum = $QuestNum - $itemnum
				SetPlayerVar($idaward,4075,$Qnum)
				if $Qnum <= 0
					AddStatus( $idaward, 21603, 4 )
					SetPlayerVar($idaward,3539,1)
					BC( "messagebox", "player", $idaward, "You've complete Exile's Entreaty. Make sure to collect your reward before Rullamas leaves!")
					SubPlayerInfo( $idaward , "item", 54105 , $itemnum )
					return
				endif
				BC( "screen", "player", $idaward, "You need to complete the request",$Qnum, "Spirit Drain times!")
			endif
			if $rHard2 == 2
				$diaobu = RandomNumber( 0, 2 )
				if $diaobu > 0
					return
				endif
				AddPlayerInfo( $idaward , "item" , 54106 , 1 )
				$itemnum = GetPlayerInfo( $idaward , "item" , 54106 )
				$Qnum = $QuestNum - $itemnum
				SetPlayerVar($idaward,4075,$Qnum)
				if $Qnum <= 0
					AddStatus( $idaward, 21603, 4 )
					SetPlayerVar($idaward,3539,1)
					BC( "messagebox", "player", $idaward, "You've complete Exile's Entreaty. Make sure to collect your reward before Rullamas leaves!")
					SubPlayerInfo( $idaward , "item", 54106 , $itemnum )
					return
				endif
				BC( "screen", "player", $idaward, "You need to complete the request",$Qnum, "Spirit Drain times!")
			endif
			if $rHard2 == 3
				$diaobu = RandomNumber( 0, 4 )
				if $diaobu > 0
					return
				endif
				AddPlayerInfo( $idaward , "item" , 54107 , 1 )
				$itemnum = GetPlayerInfo( $idaward , "item" , 54107 )
				$Qnum = $QuestNum - $itemnum
				SetPlayerVar($idaward,4075,$Qnum)
				if $Qnum <= 0
					AddStatus( $idaward, 21603, 4 )
					SetPlayerVar($idaward,3539,1)
					BC( "messagebox", "player", $idaward, "You've complete Exile's Entreaty. Make sure to collect your reward before Rullamas leaves!")
					SubPlayerInfo( $idaward , "item", 54107 , $itemnum )
					return
				endif
				BC( "screen", "player", $idaward, "You need to complete the request",$Qnum, "Spirit Drain times!")
			endif
		endif
		
		if $rKind == 4
			$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
			if $nullitem < 1
				BC( "screen", "player", $id1, "Bag is full. Can not accept the item!")
				return
			endif
			if $rHard2 == 1
				AddPlayerInfo( $id1 , "item" , 54073 , 1 )
			endif
			if $rHard2 == 2
				AddPlayerInfo( $id1 , "item" , 54072 , 1 )
			endif
			if $rHard2 == 3
				AddPlayerInfo( $id1 , "item" , 54071 , 1 )
			endif
			$itemmapid = GetPlayerInfo( $id1, "mapid" )
			$saveid2 = $itemmapid % 255
			$saveid1 = $itemmapid - $saveid2
			$saveid1 = $saveid1 / 255
			SetPlayerVar($id1,3541,$saveid1)
			SetPlayerVar($id1,3542,$saveid2)
		endif
		
	}