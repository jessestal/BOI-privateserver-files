//	---------------------------------------------------
//	--		Copyright:PERFECT WORLD
//	--		Modified:2011/11/01
//	--		Author:???
//	--		Class:	DEAD-GrandTeam.s
//	--		TaskID:
//	----------------------------------------------------

	// ?????????:3327
	// ????????????:1
	// ????????????:2
	// ?????????????:3(???1,???0)
	// ?????????????:4(???1,???0)
	// ?????????:5
	// ?????????:6
	// 125 ??????ID
	// 126 ????????
	// 4012 ????????????

	function OnDead(){
		

		$x = GetEctypeVar(-1, 1)
		$n = GetEctypeVar(-1, 2)
		$n = $n + 1
		SetEctypeVar(-1, 2, $n)
		$y = GetEctypeVar(-1,5)
		$m = GetEctypeVar(-1,6)
		$top = GetPlayerVar(-1,4012)
		$bao = GetPlayerInfo(-1,"nullitem",0)
		
		if $n == $m
			if $x == $y
				SetPlayerVar( -1 , 127 , 1)
				BC( "messagebox", "player", -1, "All Elite Troops have been eliminated. Move to the next level!")
				$ceng = GetPlayerVar(-1, 3327 )
				$pid = GetPlayerID()
				SetLadderSucess($pid,$ceng)
				$nextceng = $ceng + 1
				$top = GetPlayerVar(-1,4012)
				SetPlayerVar(-1, 3327, $nextceng )
				SetEctypeVar(-1, 3, 1 )
				SetEctypeVar(-1, 4, 1 )
					if $nextceng > $top
						SetPlayerVar(-1,4012,$nextceng)
					endif
					
				if $ceng < 10
					
						AddPlayerInfo( -1, "item", 59940, 5 )
						DropMonsterItems(-1, 90231)
				
				endif
				
				if $ceng > 11
					if $ceng < 20
						AddPlayerInfo( -1, "item", 59940, 10 )
						DropMonsterItems(-1, 90232)
					endif
				endif	
					
				if $ceng > 21
					if $ceng < 30
						AddPlayerInfo( -1, "item", 59940, 15 )
						DropMonsterItems(-1, 90233)
					endif
				endif
					
				if $ceng > 31
					if $ceng < 40
						AddPlayerInfo( -1, "item", 59940, 18 )
						DropMonsterItems(-1, 90234)
					endif
				endif
				
				if $ceng > 41
					if $ceng < 50
						AddPlayerInfo( -1, "item", 59940, 23 )
						DropMonsterItems(-1, 90235)
					endif
				endif
				
				if $ceng > 51
					if $ceng < 60
						AddPlayerInfo( -1, "item", 59940, 27 )
						DropMonsterItems(-1, 90236)
					endif
				endif
				
				if $ceng > 61
					if $ceng < 70
						AddPlayerInfo( -1, "item", 59940, 30 )
						DropMonsterItems(-1, 90237)
					endif
				endif
				
				if $ceng > 71
					if $ceng < 80
						AddPlayerInfo( -1, "item", 59940, 30 )
						DropMonsterItems(-1, 90238)
					endif
				endif
				
				if $ceng > 81
					if $ceng < 90
						AddPlayerInfo( -1, "item", 59940, 35 )
						DropMonsterItems(-1, 90239)
					endif
				endif
				
				if $ceng > 91
					if $ceng < 100
						AddPlayerInfo( -1, "item", 59940, 40 )
						DropMonsterItems(-1, 90240)
					endif
				endif
				
										
			endif
		endif	
		
	}