  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/24
	//		Author:???
	//		TaskName:GreenGather.s
	//		TaskID:??????,??????
	//
	//****************************************
	
	function OnDead(){
		
		$Monid = GetMonsterTemplateID(-1)
		$itemid = 0
		if $Monid == 21101
			$itemid = 54008
		endif
		if $Monid == 21102
			$itemid = 54002
		endif
		if $Monid == 21103
			$itemid = 54014
		endif
		if $Monid == 21111
			$itemid = 54020
		endif
		
		if $Monid == 21163
			$itemid = 54015
		endif
		if $Monid == 21171
			$itemid = 54021
		endif
		if $Monid == 21172
			$itemid = 54003
		endif
		if $Monid == 21173
			$itemid = 54009
		endif
		
		if $Monid == 21195
			$itemid = 54016
		endif
		if $Monid == 21196
			$itemid = 54010
		endif
		if $Monid == 21197
			$itemid = 54022
		endif
		if $Monid == 21198
			$itemid = 54004
		endif
		
		if $Monid == 21200
			$itemid = 54005
		endif
		if $Monid == 21201
			$itemid = 54023
		endif
		if $Monid == 21204
			$itemid = 54017
		endif
		if $Monid == 21205
			$itemid = 54011
		endif
		
		if $Monid == 21221
			$itemid = 54018
			$istask = IsTaskAccept(-1,346)
			$daoju = GetPlayerInfo(-1,"item",12858)
			$dadaoju = GetPlayerInfo(-1,"item",12859)
			$zong = GetPlayerInfo(-1,"item",12857)
			if $istask == 0
				if $daoju < 1
					if $dadaoju < 1
						if $zong < 1
							$suiji = RandomNumber(0,100)
							if $suiji < 5
								DropMonsterItems(-1,90198)
							endif
						endif
					endif
				endif
			endif
		endif
		if $Monid == 21222
			$itemid = 54024
			$istask = IsTaskAccept(-1,346)
			$daoju = GetPlayerInfo(-1,"item",12859)
			$dadaoju = GetPlayerInfo(-1,"item",12859)
			$zong = GetPlayerInfo(-1,"item",12857)
			if $istask == 0
				if $daoju < 1
					if $dadaoju < 1
						if $zong < 1
							$suiji = RandomNumber(0,100)
							if $suiji < 5
								DropMonsterItems(-1,90199)
							endif
						endif
					endif
				endif
			endif
		endif
		if $Monid == 21223
			$itemid = 54012
		endif
		if $Monid == 21224
			$itemid = 54006
		endif
		
		if $Monid == 12012
			$itemid = 54013
		endif
		if $Monid == 12013
			$itemid = 54025
		endif
		if $Monid == 12014
			$itemid = 54007
		endif
		if $Monid == 12015
			$itemid = 54019
		endif
		
		$get = RandomNumber( 0, 30 )
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
			
			$Gather2 = IsExistStatus($id2 , 21602 )
			if $Gather2 != 0
				return
			endif
			
			$len = GetPlayerDistance( $id1, $id2 )
			if $len > 30
				return
			endif
			
			$idaward = $id2
			
		else
		
			$Gather1 = IsExistStatus($id1 , 21602 )
			if $Gather1 != 0
				return
			endif
		
			$R = RandomNumber( 0, 5 )
			if $R > 0
				return
			endif
			
			$idaward = $id1
			
		endif
		
		$nullitem = GetPlayerInfo( $idaward , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", $idaward, "Your bag's full, you can't continue to collect Destiny materials!")
			BC( "chat", "player", $idaward, "Your bag's full, you can't continue to collect Destiny materials!")
			return
		endif
		
		AddPlayerInfo( $idaward , "item" , $itemid , 1 )
		
	}