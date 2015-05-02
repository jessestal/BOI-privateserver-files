	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2012/11
	//		Author£ºÏòçì³½£¨×ÐÏ¸£¬¾«Á¶£¬¸ºÔð£©
	//		TaskName£ºÄ¾ÄËÒÁµôÂä
	//		TaskID£º11986_monster_Drop.s
	//
	//****************************************
	
	function OnDead(){

		$playerid = GetEctypeVar(-1,110)
		$dropitemD = 90225
		
		
		DropMonsterItems($playerid,$dropitemD)

	}