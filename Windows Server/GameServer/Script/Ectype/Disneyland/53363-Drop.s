	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/7
	//		Author：向珈辰（仔细，精炼，负责）
	//		TaskName：神鬼乐园善良
	//		TaskID：53363-Drop.s
	//
	//****************************************
	
	function OnDead(){

		//获取变量 副本id 568 ，记录怪物死亡数 1
		//90217  商城掉落
		//90218  绑定掉落
		//3518   玩家道具使用情况


		//副本计数
		$ectype_id = GetEctypeID(-1, 568)
		
		$kind = GetPlayerVar(-1,3518)
		if $kind == 3
			DropMonsterItems(-1,90217)
		endif
		if $kind == 2
			DropMonsterItems(-1,90217)
		endif		
		if $kind == 1
			DropMonsterItems(-1,90218)
		endif				
		
		SetPlayerVar(-1,3518,0)
	}