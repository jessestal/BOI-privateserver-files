 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/9/27
	//		Author:???|???
	//		TaskName:Monster-baicengboss.s
	//		TaskID:??Boss????
	//****************************************
	
	//56 ????????????
	//57 ???????????ID
	
	function OnDead(){
		$a = GetPlayerVar( -1, 3327 )
		$a = $a + 1
		$b = $a - 1
		
		$pid = GetPlayerID()
		SetLadderSucess($pid,$b)
		
		$top = GetPlayerVar(-1,4012)
		if $top < $a
			SetPlayerVar(-1,4012,$a)
			if $b > 30
				#name = GetPlayerInfo( -1, "name")
				BC( "chat", "servergroup", -1, "The hero ",#name," has passed Level ",$b," of the Endless Stairs!")
			endif
		endif
		
		SetPlayerVar( -1, 3327, $a )
		$bossrush = GetPlayerVar(-1,188)
		if $bossrush == 1
			$a = $a + 9
			SetPlayerVar( -1, 3327, $a )
		endif
		SetEctypeVar(-1, 3, 1 )
		SetEctypeVar(-1, 4, 1 )
		$map = GetPlayerInfo(-1,"mapid")
		$x = GetPlayerInfo(-1,"mapposx")
		$x = $x + 1
		$y = GetPlayerInfo(-1,"mapposy")
		AddNpcByPos( 2468, $map, $x, $y, 300000, 0 )
		AddMonsterByFloat( 55290, 1, $map, $x, $y, 0 )
		SetPlayerVar( -1 , 127 , 1)
	}