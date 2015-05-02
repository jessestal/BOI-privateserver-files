	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2012/7/25
	//		Author£ºÖì½¨³¼
	//		TaskName£ºMonster-21221.s
	//		TaskID£º 3.70Ö÷Ïß
	//
	//****************************************
	
	function OnDead(){
		
		$istask = IsTaskAccept(-1,346)
		$daoju = GetPlayerInfo(-1,"item",12858)
		$dadaoju = GetPlayerInfo(-1,"item",12859)
		if $istask == 0
			if $daoju < 1
				if $dadaoju < 1
					DropMonsterItems(-1,90198)
				endif
			endif
		endif
		
	}