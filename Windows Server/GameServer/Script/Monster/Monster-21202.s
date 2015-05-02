	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2011/11/22
	//		Author£º³ÂÔóè´
	//		TaskName£ºMonster-21202.s
	//		TaskID£º
	//
	//****************************************
	
	function OnDead(){

		$r = RandomNumber( 0,999 )
		$task = IsTaskAccept( -1 , 277 )
		if $task == 0	
			if $r < 120
				$posx = GetPlayerInfo(-1,"mapposx")
				$posy = GetPlayerInfo(-1,"mapposy")
				AddMonsterByFloat( 30288 , 1 , 44 , $posx ,$posy , 1 , -1 , 0 )
			endif
		endif

	}