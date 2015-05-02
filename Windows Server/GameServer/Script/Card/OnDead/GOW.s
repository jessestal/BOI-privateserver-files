  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/24
	//		Author:???
	//		TaskName:GOW.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnDead(){
		
		$Monid = GetMonsterTemplateID(-1)
		if $Monid == 10001
			$plevel = GetFieldLevel(-1)
			if $plevel >= 40
				$gon = GetPlayerVar(-1,240)
				if $gon == 1
					return
				endif
				$first = RandomNumber( 0, 1500 )
				if $first == 0
					$mapid = GetPlayerInfo( -1, "mapid")
					$x = GetPlayerInfo( -1, "mapx")
					$y = GetPlayerInfo( -1, "mapy")
					AddLevelFieldMonster(55604,227,130,86,45,1,$mapid,$x,$y,10)
				endif
			endif
		endif
		
		$aimid = GetPlayerVar(-1,4032)
		if $Monid != $aimid
			return
		endif
		
		$Ftalk = GetPlayerVar(-1,238)
		if $Ftalk == 0
			$buffo = IsExistStatus(-1 , 21601 )
			if $buffo != 0
				$today_time = GetSystemTime( "yday" )
				$player_time = GetPlayerVar( -1, 4031 )
				if $player_time == $today_time
					$Tdone = GetPlayerVar(-1,3536)
					if $Tdone == 0
						CancelTask ( -1 , 2621 )
						CancelTask ( -1 , 2622 )
						CancelTask ( -1 , 2623 )
						CancelTask ( -1 , 2624 )
						CancelTask ( -1 , 2629 )
						SubPlayerInfo( -1 , "item", 54090 , 1 )
						SubPlayerInfo( -1 , "item", 54091 , 1 )
						SubPlayerInfo( -1 , "item", 54092 , 1 )
						SubPlayerInfo( -1 , "item", 54093 , 1 )
						SubPlayerInfo( -1 , "item", 54094 , 1 )
						AddPlayerInfo( -1 , "item" , 54095 , 1 )
						SetPlayerVar(-1,238,1)
						BC( "messagebox", "player", -1, "You have not finished Arethusa's Request in time. You can only acquire Arethusa's Comfort!")
					endif
				endif
			endif
		endif
		
		$id1 = GetPlayerID()
		if $id1 <= 0
			return
		endif
		
		$buff = IsExistStatus(-1 , 21601 )
		if $buff != 0
			return
		endif
		
		$idaward = 0
		$rKind	=	GetGlobalVar(347 )
		$rHard2	=	GetGlobalVar(349 )
		
		if $rKind == 1
			$TorN = IsPlayerInTeam($id1)
			if $TorN == 0
				$i = 0
				while $i < 6
					$idaward = GetTeamMemberID( $id1 , $i )
					if $idaward > 0
						$buff2 = IsExistStatus($idaward , 21601 )
						if $buff2 == 0
							$len = GetPlayerDistance( $id1, $idaward )
							if $len < 30
								$Qnum = GetPlayerVar($idaward,4074)
								if $Qnum <= 0
									BC( "screen", "player", $idaward, "You've completed Arethusa's Request. Make sure to collect your reward today!")
								endif
								if $Qnum == 1
									SetPlayerVar( $idaward, 4074, 0)
									AddStatus( $idaward, 21601, 4 )
									AddStatus( $idaward, 21604, 4 )
									AddStatus( $idaward, 21605, 4 )
									SetPlayerVar($idaward,3536,1)
									BC( "messagebox", "player", $idaward, "You've completed Arethusa's Request. Make sure to collect your reward today!")
								endif
								if $Qnum > 1
									$Qnum = $Qnum - 1
									SetPlayerVar($idaward,4074,$Qnum)
									BC( "screen", "player", $idaward, "You need to complete the request",$Qnum, "Bloody Sacrifice times!")
								endif
							endif
						endif
					endif
					$i = $i + 1
				endwhile
			else
				$idaward = $id1
				$Qnum = GetPlayerVar($idaward,4074)
				if $Qnum <= 0
					BC( "screen", "player", $idaward, "You've completed Arethusa's Request. Make sure to collect your reward today!")
				endif
				if $Qnum == 1
					SetPlayerVar( $idaward, 4074, 0)
					AddStatus( $idaward, 21601, 4 )
					AddStatus( $idaward, 21604, 4 )
					AddStatus( $idaward, 21605, 4 )
					SetPlayerVar($idaward,3536,1)
					BC( "messagebox", "player", $idaward, "You've completed Arethusa's Request. Make sure to collect your reward today!")
				endif
				if $Qnum > 1
					$Qnum = $Qnum - 1
					SetPlayerVar($idaward,4074,$Qnum)
					BC( "screen", "player", $idaward, "You need to complete the request",$Qnum, "Bloody Sacrifice times!")
				endif
			endif
		endif
		
		if $rKind == 2
			$rMonster	=	GetGlobalVar(353 )
			$mapid = GetPlayerInfo( $id1, "mapid")
			$x = GetPlayerInfo( $id1, "mapx")
			$y = GetPlayerInfo( $id1, "mapy")
			if $rHard2 == 1
				$shuabu = RandomNumber( 0, 1 )
				if $shuabu == 0
					AddLevelMonster(55600,223,$rMonster,1,$mapid,$x,$y,10)
				endif
			endif
			if $rHard2 == 2
				$shuabu = RandomNumber( 0, 2 )
				if $shuabu == 0
					AddLevelMonster(55600,224,$rMonster,1,$mapid,$x,$y,10)
				endif
			endif
			if $rHard2 == 3
				$shuabu = RandomNumber( 0, 3 )
				if $shuabu == 0
					AddLevelMonster(55600,225,$rMonster,1,$mapid,$x,$y,10)
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
				$buff2 = IsExistStatus($id2 , 21601 )
				if $buff2 != 0
					return
				endif
				$len = GetPlayerDistance( $id1, $id2 )
				if $len > 30
					return
				endif
				$idaward = $id2
			else
				$buff1 = IsExistStatus( $id1 , 21601 )
				if $buff1 != 0
					return
				endif
				$R = RandomNumber( 0, 5 )
				if $R > 0
					return
				endif
				$idaward = $id1
			endif
			$Qnum = GetPlayerVar($idaward,4074)
			if $Qnum <= 0
				BC( "screen", "player", $idaward, "You've completed Arethusa's Request. Make sure to collect your reward today!")
				return
			endif
			$nullitem = GetPlayerInfo( $idaward , "nullitem" , 0 )
			if $nullitem < 1
				BC( "screen", "player", $idaward, "Bag is full. Can not accept the item!")
				return
			endif
			$rHard1	=	GetGlobalVar(348 )
			if $rHard1 == 1
				$QuestNum = 20
			endif
			if $rHard1 == 2
				$QuestNum = 30
			endif
			if $rHard1 == 3
				$QuestNum = 60
			endif
			if $rHard2 == 1
				AddPlayerInfo( $idaward , "item" , 54102 , 1 )
				$itemnum = GetPlayerInfo( $idaward , "item" , 54102 )
				$Qnum = $QuestNum - $itemnum
				SetPlayerVar($idaward,4074,$Qnum)
				if $Qnum <= 0
					AddStatus( $idaward, 21601, 4 )
					SetPlayerVar($idaward,3536,1)
					BC( "messagebox", "player", $idaward, "You've completed Arethusa's Request. Make sure to collect your reward today!")
					SubPlayerInfo( $idaward , "item", 54102 , $itemnum )
					return
				endif
				BC( "screen", "player", $idaward, "You need to complete the request",$Qnum, "Spirit Drain times!")
			endif
			if $rHard2 == 2
				$diaobu = RandomNumber( 0, 2 )
				if $diaobu > 0
					return
				endif
				AddPlayerInfo( $idaward , "item" , 54103 , 1 )
				$itemnum = GetPlayerInfo( $idaward , "item" , 54103 )
				$Qnum = $QuestNum - $itemnum
				SetPlayerVar($idaward,4074,$Qnum)
				if $Qnum <= 0
					AddStatus( $idaward, 21601, 4 )
					SetPlayerVar($idaward,3536,1)
					BC( "messagebox", "player", $idaward, "You've completed Arethusa's Request. Make sure to collect your reward today!")
					SubPlayerInfo( $idaward , "item", 54103 , $itemnum )
					return
				endif
				BC( "screen", "player", $idaward, "You need to complete the request",$Qnum, "Spirit Drain times!")
			endif
			if $rHard2 == 3
				$diaobu = RandomNumber( 0, 4 )
				if $diaobu > 0
					return
				endif
				AddPlayerInfo( $idaward , "item" , 54104 , 1 )
				$itemnum = GetPlayerInfo( $idaward , "item" , 54104 )
				$Qnum = $QuestNum - $itemnum
				SetPlayerVar($idaward,4074,$Qnum)
				if $Qnum <= 0
					AddStatus( $idaward, 21601, 4 )
					SetPlayerVar($idaward,3536,1)
					BC( "messagebox", "player", $idaward, "You've completed Arethusa's Request. Make sure to collect your reward today!")
					SubPlayerInfo( $idaward , "item", 54104 , $itemnum )
					return
				endif
				BC( "screen", "player", $idaward, "You need to complete the request",$Qnum, "Spirit Drain times!")
			endif
		endif
		
		if $rKind == 4
			$nullitem = GetPlayerInfo( $id1 , "nullitem" , 0 )
			if $nullitem < 1
				BC( "screen", "player", $id1, "Bag is full. Can not accept the item!")
				return
			endif
			if $rHard2 == 1
				AddPlayerInfo( $id1 , "item" , 54057 , 1 )
			endif
			if $rHard2 == 2
				AddPlayerInfo( $id1 , "item" , 54056 , 1 )
			endif
			if $rHard2 == 3
				AddPlayerInfo( $id1 , "item" , 54055 , 1 )
			endif
			$itemmapid = GetPlayerInfo( $id1, "mapid" )
			$saveid2 = $itemmapid % 255
			$saveid1 = $itemmapid - $saveid2
			$saveid1 = $saveid1 / 255
			SetPlayerVar($id1,3537,$saveid1)
			SetPlayerVar($id1,3540,$saveid2)
		endif
		
	}