//	---------------------------------------------------
//	--		Copyright:PERFECT WORLD
//	--		Modified:2011/11/01
//	--		Author:???
//	--		Class:	Monster-5ceng.s
//	--		AIName:
//	--		Remark:
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
		//BC( "screen", "player", -1, "=",$n)
		$y = GetEctypeVar(-1,5)
		$m = GetEctypeVar(-1,6)
		$top = GetPlayerVar(-1,4012)
		$now = GetPlayerVar(-1,3327)
//		$diao = $top - $now
//		$sui = RandomNumber(0,100)		
//		if $diao < 11
//			if $sui < 5
//				DropMonsterItems(-1,90153)
//			endif
//		endif
		
		if $n == $m
			if $x == $y
				BC( "screen", "player", -1, "All monsters have been defeated. Please proceed to the next level!")
				$ceng = GetPlayerVar(-1, 3327 )

				$nextceng = $ceng + 1
				$top = GetPlayerVar(-1,4012)
				SetPlayerVar(-1, 3327, $nextceng )
				SetEctypeVar(-1, 3, 1 )
				//BC( "screen", "player", -1, "GUID:03828000001",$n)
				SetEctypeVar(-1, 4, 1 )
				//BC( "screen", "player", -1, "GUID:03828000002",$n)
					if $nextceng > $top
						SetPlayerVar(-1,4012,$nextceng)
					endif	
				$ectype_ID = GetCurEctypeID()
				if $nextceng == 6
					AddNpcByPos( 2467, $ectype_ID, 72, 70, 180000, 0 )
				endif
				
				if $nextceng == 16 
					AddNpcByPos( 2467, $ectype_ID, 152, 193, 180000, 0 )
				endif
				
				if $nextceng == 26
					AddNpcByPos( 2467, $ectype_ID, 154, 151, 180000, 0 )
				endif
				
				if $nextceng == 36
					AddNpcByPos( 2467, $ectype_ID, 69, 70, 180000, 0 )
				endif
				
				if $nextceng == 46
					AddNpcByPos( 2467, $ectype_ID, 152, 151, 180000, 0 )
				endif
				
				if $nextceng == 56
					AddNpcByPos( 2467, $ectype_ID, 154, 154, 180000, 0 )
				endif												
			endif
		endif	
		
	}