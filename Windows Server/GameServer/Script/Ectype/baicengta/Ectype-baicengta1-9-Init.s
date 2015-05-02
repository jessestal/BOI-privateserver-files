	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/11/01
	//		Author：朱建臣
	//		TaskName：Ectype-baicengta-Init.s
	//		TaskID：
	//
	//****************************************
	
	// 记录层数的玩家变量：3327
	// 记录杀小怪数量的副本变量：1
	// 记录杀大怪数量的副本变量：2
	// 判断小怪是否全部死亡的变量：3(杀完为1，否则为0)
	// 判断大怪是否全部死亡的变量：4(杀完为1，否则为0)
	
	function OnCreate(){
		
		$result = SetEctypeTimer( 1 , 1 , "EctypeTime1" )
		SetEctypeTimer( 2 , 5 , "EctypeTime2" )
		
	}
			
	function InitTimer1(){
				
		$ectype_ID = GetCurEctypeID()
		
		//召唤NPC
		AddNpcByPos( 2467, $ectype_ID, 72, 70, 180000, 0 )
		
		
		//随机刷小怪		
		$a = RandomNumber( 0, 4 )					
			if $a == 0
				AddLevelMonster( 55241, 101, 120, 10, $ectype_ID, 28, 21, 4 )
				AddLevelMonster( 55241, 101, 120, 10, $ectype_ID, 22, 27, 4 )
				AddLevelMonster( 55241, 101, 120, 10, $ectype_ID, 28, 33, 4 )
				AddLevelMonster( 55241, 101, 120, 10, $ectype_ID, 34, 27, 4 )
			endif
			
			if $a == 1
				AddLevelMonster( 55242, 101, 120, 10, $ectype_ID, 28, 21, 4 )
				AddLevelMonster( 55242, 101, 120, 10, $ectype_ID, 22, 27, 4 )
				AddLevelMonster( 55242, 101, 120, 10, $ectype_ID, 28, 33, 4 )
				AddLevelMonster( 55242, 101, 120, 10, $ectype_ID, 34, 27, 4 )
			endif
			
			if $a == 2
				AddLevelMonster( 55243, 101, 120, 10, $ectype_ID, 28, 21, 4 )
				AddLevelMonster( 55243, 101, 120, 10, $ectype_ID, 22, 27, 4 )
				AddLevelMonster( 55243, 101, 120, 10, $ectype_ID, 28, 33, 4 )
				AddLevelMonster( 55243, 101, 120, 10, $ectype_ID, 34, 27, 4 )
			endif
			
			if $a == 3
				AddLevelMonster( 55244, 101, 120, 10, $ectype_ID, 28, 21, 4 )
				AddLevelMonster( 55244, 101, 120, 10, $ectype_ID, 22, 27, 4 )
				AddLevelMonster( 55244, 101, 120, 10, $ectype_ID, 28, 33, 4 )
				AddLevelMonster( 55244, 101, 120, 10, $ectype_ID, 34, 27, 4 )
			endif
			
			if $a == 4
				AddLevelMonster( 55245, 101, 120, 10, $ectype_ID, 28, 21, 4 )
				AddLevelMonster( 55245, 101, 120, 10, $ectype_ID, 22, 27, 4 )
				AddLevelMonster( 55245, 101, 120, 10, $ectype_ID, 28, 33, 4 )
				AddLevelMonster( 55245, 101, 120, 10, $ectype_ID, 34, 27, 4 )
			endif
			
		//随即刷大怪
		$b = RandomNumber( 0, 4 )
			if $b == 0
				AddLevelMonster( 55271, 106, 120, 3, $ectype_ID, 28, 21, 4 )
				AddLevelMonster( 55271, 106, 120, 2, $ectype_ID, 22, 27, 4 )
				AddLevelMonster( 55271, 106, 120, 3, $ectype_ID, 28, 33, 4 )
				AddLevelMonster( 55271, 106, 120, 2, $ectype_ID, 34, 27, 4 )
			endif
			
			if $b == 1
				AddLevelMonster( 55272, 106, 120, 3, $ectype_ID, 28, 21, 4 )
				AddLevelMonster( 55272, 106, 120, 2, $ectype_ID, 22, 27, 4 )
				AddLevelMonster( 55272, 106, 120, 3, $ectype_ID, 28, 33, 4 )
				AddLevelMonster( 55272, 106, 120, 2, $ectype_ID, 34, 27, 4 )
			endif
			
			if $b == 2
				AddLevelMonster( 55273, 106, 120, 3, $ectype_ID, 28, 21, 4 )
				AddLevelMonster( 55273, 106, 120, 2, $ectype_ID, 22, 27, 4 )
				AddLevelMonster( 55273, 106, 120, 3, $ectype_ID, 28, 33, 4 )
				AddLevelMonster( 55273, 106, 120, 2, $ectype_ID, 34, 27, 4 )
			endif
			
			if $b == 3
				AddLevelMonster( 55274, 106, 120, 3, $ectype_ID, 28, 21, 4 )
				AddLevelMonster( 55274, 106, 120, 2, $ectype_ID, 22, 27, 4 )
				AddLevelMonster( 55274, 106, 120, 3, $ectype_ID, 28, 33, 4 )
				AddLevelMonster( 55274, 106, 120, 2, $ectype_ID, 34, 27, 4 )
			endif
			
			if $b == 4
				AddLevelMonster( 55275, 106, 120, 3, $ectype_ID, 28, 21, 4 )
				AddLevelMonster( 55275, 106, 120, 2, $ectype_ID, 22, 27, 4 )
				AddLevelMonster( 55275, 106, 120, 3, $ectype_ID, 28, 33, 4 )
				AddLevelMonster( 55275, 106, 120, 2, $ectype_ID, 34, 27, 4 )
			endif
	}
	
		function InitTimer2(){
			$ectype_ID = GetCurEctypeID()
			//召唤酸雨
			AddMonsterByFloat( 55400, 1, $ectype_ID, 72, 70, 0 )	
		}