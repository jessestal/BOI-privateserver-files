	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/11/22
	//		Author�������
	//		TaskName��Monster-21202.s
	//		TaskID��
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