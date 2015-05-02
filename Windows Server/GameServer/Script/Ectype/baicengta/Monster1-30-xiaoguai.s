//	---------------------------------------------------
//	--		Copyright:PERFECT WORLD
//	--		Modified:2011/11/01
//	--		Author:???
//	--		Class:	.s
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

	function OnDead(){
		
		
		$x = GetEctypeVar(-1, 2)
		$n = GetEctypeVar(-1, 1)
		$n = $n + 1
		SetEctypeVar(-1, 1, $n)
		$m = GetEctypeVar(-1,5)
		$y = GetEctypeVar(-1,6)
		$top = GetPlayerVar(-1,4012)
		$now = GetPlayerVar(-1,3327)
		$diao = $top - $now
		$sui = RandomNumber(0,50)
		$yushu = $top % 5
		if $yushu == 0
			$yushu = 10
		else
			$yushu = 	$yushu + 5
		endif		
		if $diao < $yushu
			if $sui < 3
				DropMonsterItems(-1,90153)
			endif
		endif
		
		if $n == $m
			if $x == $y
				SetPlayerVar( -1 , 127 , 1)
				BC( "messagebox", "player", -1, "All monsters have been defeated. Please proceed to the next level!")
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
			endif
		endif	
		
	}