	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/7/25
	//		Author���콨��
	//		TaskName��Monster-21222.s
	//		TaskID�� 3.70����
	//
	//****************************************
	
	function OnDead(){
		
		$istask = IsTaskAccept(-1,346)
		$daoju = GetPlayerInfo(-1,"item",12859)
		$dadaoju = GetPlayerInfo(-1,"item",12859)
		if $istask == 0
			if $daoju < 1
				if $dadaoju < 1
					DropMonsterItems(-1,90199)
				endif
			endif
		endif
		
	}