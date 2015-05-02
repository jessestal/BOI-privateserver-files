 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/9/27
	//		Author:???
	//		TaskName:Monster-55313.s
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
		$diao = $top - $a
			if $diao < 11
				DropMonsterItems(-1,90153)
			endif
			if $top < $a
				SetPlayerVar(-1,4012,$a)
			endif
		
		SetServerVar(57,$id)	
		SetPlayerVar( -1, 3327, $a )
		SetEctypeVar(-1, 3, 1 )
		SetEctypeVar(-1, 4, 1 )
			if $zuigao < $a
				SetServerVar(57,#name)
				BC( "screen", "servergroup", -1,"The hero "#name, " has passed Level ",$b," of the Endless Stairs!")
				SetServerVar(56,$b)
			endif
		$map = GetPlayerInfo(-1,"mapid")
		$x = GetPlayerInfo(-1,"mapposx")
		$x = $x + 1
		$y = GetPlayerInfo(-1,"mapposy")
			AddNpcByPos( 2468, $map, $x, $y, 300000, 0 )
			AddMonsterByFloat( 55290, 1, $map, $x, $y, 0 )
	}