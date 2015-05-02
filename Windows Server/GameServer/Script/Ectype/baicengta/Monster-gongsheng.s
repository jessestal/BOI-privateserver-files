 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/9/27
	//		Author:???
	//		TaskName:Monster-gongsheng.s
	//		TaskID:????
	//****************************************
	
	//56 ????????????
	//57 ???????????ID
	
	function OnDead(){
		$a = GetPlayerVar( -1, 3327 )
		$a = $a + 1
		$id = GetPlayerID()
		#name = GetPlayerInfo($id ,"name")
		$b = $a - 1
		$zuigao = GetServerVar(56)	
		$top = GetPlayerVar(-1,4012)
		$boss1 = GetEctypeVar(-1,99)
		$boss2 = GetEctypeVar(-1,98)
		$boss3 = GetEctypeVar(-1,97)
		$diao = $top - $a
		if $boss1 == 1
			if $boss2 == 1
				if $boss3 == 1
					SetServerVar(57,$id)	
					SetPlayerVar( -1, 3327, $a )
					SetEctypeVar(-1, 3, 1 )
					SetEctypeVar(-1, 4, 1 )
					$map = GetPlayerInfo(-1,"mapid")
					$x = GetPlayerInfo(-1,"mapposx")
					$x = $x + 1
					$y = GetPlayerInfo(-1,"mapposy")
						AddNpcByPos( 2468, $map, $x, $y, 300000, 0 )
						AddMonsterByFloat( 55290, 1, $map, $x, $y, 0 )
					if $diao < 11
						DropMonsterItems(-1,90153)
					endif
					if $zuigao < $a
						SetServerVar(57,#name)
						BC( "screen", "servergroup", -1,"The hero "#name, " has passed Level ",$b," of the Endless Stairs!")
						SetServerVar(56,$b)
					endif
				endif
			endif
		endif
		
		if $boss1 == 1
			if $boss2 == 1
				if $boss3 == 3
					SetServerVar(57,$id)	
					SetPlayerVar( -1, 3327, $a )
					SetEctypeVar(-1, 3, 1 )
					SetEctypeVar(-1, 4, 1 )
					$map = GetPlayerInfo(-1,"mapid")
					$x = GetPlayerInfo(-1,"mapposx")
					$x = $x + 1
					$y = GetPlayerInfo(-1,"mapposy")
						AddNpcByPos( 2468, $map, $x, $y, 300000, 0 )
						AddMonsterByFloat( 55290, 1, $map, $x, $y, 0 )
					if $diao < 11
						DropMonsterItems(-1,90153)
					endif
					if $zuigao < $a
						SetServerVar(57,#name)
						BC( "screen", "servergroup", -1,"The hero "#name, " has passed Level ",$b," of the Endless Stairs!")
						SetServerVar(56,$b)
					endif
				endif
			endif
		endif
		
		if $boss1 == 1
			if $boss2 == 3
				if $boss3 == 1
					SetServerVar(57,$id)	
					SetPlayerVar( -1, 3327, $a )
					SetEctypeVar(-1, 3, 1 )
					SetEctypeVar(-1, 4, 1 )
					$map = GetPlayerInfo(-1,"mapid")
					$x = GetPlayerInfo(-1,"mapposx")
					$x = $x + 1
					$y = GetPlayerInfo(-1,"mapposy")
						AddNpcByPos( 2468, $map, $x, $y, 300000, 0 )
						AddMonsterByFloat( 55290, 1, $map, $x, $y, 0 )
					if $diao < 11
						DropMonsterItems(-1,90153)
					endif
					if $zuigao < $a
						SetServerVar(57,#name)
						BC( "screen", "servergroup", -1,"The hero "#name, " has passed Level ",$b," of the Endless Stairs!")
						SetServerVar(56,$b)
					endif
				endif
			endif
		endif
		
		if $boss1 == 1
			if $boss2 == 3
				if $boss3 == 3
					SetServerVar(57,$id)	
					SetPlayerVar( -1, 3327, $a )
					SetEctypeVar(-1, 3, 1 )
					SetEctypeVar(-1, 4, 1 )
					$map = GetPlayerInfo(-1,"mapid")
					$x = GetPlayerInfo(-1,"mapposx")
					$x = $x + 1
					$y = GetPlayerInfo(-1,"mapposy")
						AddNpcByPos( 2468, $map, $x, $y, 300000, 0 )
						AddMonsterByFloat( 55290, 1, $map, $x, $y, 0 )
					if $diao < 11
						DropMonsterItems(-1,90153)
					endif
					if $zuigao < $a
						SetServerVar(57,#name)
						BC( "screen", "servergroup", -1,"The hero "#name, " has passed Level ",$b," of the Endless Stairs!")
						SetServerVar(56,$b)
					endif
				endif
			endif
		endif
		
		if $boss1 == 3
			if $boss2 == 1
				if $boss3 == 1
					SetServerVar(57,$id)	
					SetPlayerVar( -1, 3327, $a )
					SetEctypeVar(-1, 3, 1 )
					SetEctypeVar(-1, 4, 1 )
					$map = GetPlayerInfo(-1,"mapid")
					$x = GetPlayerInfo(-1,"mapposx")
					$x = $x + 1
					$y = GetPlayerInfo(-1,"mapposy")
						AddNpcByPos( 2468, $map, $x, $y, 300000, 0 )
						AddMonsterByFloat( 55290, 1, $map, $x, $y, 0 )
					if $diao < 11
						DropMonsterItems(-1,90153)
					endif
					if $zuigao < $a
						SetServerVar(57,#name)
						BC( "screen", "servergroup", -1,"The hero "#name, " has passed Level ",$b," of the Endless Stairs!")
						SetServerVar(56,$b)
					endif
				endif
			endif
		endif
		
		if $boss1 == 3
			if $boss2 == 3
				if $boss3 == 1
					SetServerVar(57,$id)	
					SetPlayerVar( -1, 3327, $a )
					SetEctypeVar(-1, 3, 1 )
					SetEctypeVar(-1, 4, 1 )
					$map = GetPlayerInfo(-1,"mapid")
					$x = GetPlayerInfo(-1,"mapposx")
					$x = $x + 1
					$y = GetPlayerInfo(-1,"mapposy")
						AddNpcByPos( 2468, $map, $x, $y, 300000, 0 )
						AddMonsterByFloat( 55290, 1, $map, $x, $y, 0 )
					if $diao < 11
						DropMonsterItems(-1,90153)
					endif
					if $zuigao < $a
						SetServerVar(57,#name)
						BC( "screen", "servergroup", -1,"The hero "#name, " has passed Level ",$b," of the Endless Stairs!")
						SetServerVar(56,$b)
					endif
				endif
			endif
		endif
		
		
		if $boss1 == 3
			if $boss2 == 1
				if $boss3 == 3
					SetServerVar(57,$id)	
					SetPlayerVar( -1, 3327, $a )
					SetEctypeVar(-1, 3, 1 )
					SetEctypeVar(-1, 4, 1 )
					$map = GetPlayerInfo(-1,"mapid")
					$x = GetPlayerInfo(-1,"mapposx")
					$x = $x + 1
					$y = GetPlayerInfo(-1,"mapposy")
						AddNpcByPos( 2468, $map, $x, $y, 300000, 0 )
						AddMonsterByFloat( 55290, 1, $map, $x, $y, 0 )
					if $diao < 11
						DropMonsterItems(-1,90153)
					endif
					if $zuigao < $a
						SetServerVar(57,#name)
						BC( "screen", "servergroup", -1,"The hero "#name, " has passed Level ",$b," of the Endless Stairs!")
						SetServerVar(56,$b)
					endif
				endif
			endif
		endif
		
		if $boss1 == 3
			if $boss2 == 3
				if $boss3 == 1
					SetServerVar(57,$id)	
					SetPlayerVar( -1, 3327, $a )
					SetEctypeVar(-1, 3, 1 )
					SetEctypeVar(-1, 4, 1 )
					$map = GetPlayerInfo(-1,"mapid")
					$x = GetPlayerInfo(-1,"mapposx")
					$x = $x + 1
					$y = GetPlayerInfo(-1,"mapposy")
						AddNpcByPos( 2468, $map, $x, $y, 300000, 0 )
						AddMonsterByFloat( 55290, 1, $map, $x, $y, 0 )
					if $diao < 11
						DropMonsterItems(-1,90153)
					endif
					if $zuigao < $a
						SetServerVar(57,#name)
						BC( "screen", "servergroup", -1,"The hero "#name, " has passed Level ",$b," of the Endless Stairs!")
						SetServerVar(56,$b)
					endif
				endif
			endif
		endif
		
		
		
	}