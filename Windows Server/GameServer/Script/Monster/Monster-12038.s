 	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/9/27
	//		Author���콨��
	//		TaskName��Monster-12038.s
	//		TaskID������20����
	//****************************************
	
	//��¼ɱ������ 3306
	
	function OnDead(){
		
		$a = GetPlayerVar(-1,3306)
		$a = $a + 1
		
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		
		SetPlayerVar(-1,3306,$a)
		
		if $a == 10
			AddMonsterByFloat( 30510, 1, 537, $x, $y, 0 )
		endif
			
		
	}