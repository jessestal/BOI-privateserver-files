	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/11
	//		Author：向珈辰（仔细，精炼，负责）
	//		TaskName：木乃伊死亡
	//		TaskID：11987_monster_Drop.s
	//
	//****************************************
	
	function OnDead(){

		
		$playerid = GetEctypeVar(-1,110)
		$dropitemD = 90226
		
		DropMonsterItems($playerid,$dropitemD)

	}