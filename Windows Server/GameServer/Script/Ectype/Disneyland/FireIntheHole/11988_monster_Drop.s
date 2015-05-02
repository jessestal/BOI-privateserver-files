	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2012/11
	//		Author£ºÏòçì³½£¨×ÐÏ¸£¬¾«Á¶£¬¸ºÔð£©
	//		TaskName£ºÄ¾ÄËÒÁ
	//		TaskID£º11988_monster_Drop.s
	//
	//****************************************
	
	function OnDead(){

		
		$playerid = GetEctypeVar(-1,110)
		$dropitemD = 90227
		
		DropMonsterItems($playerid,$dropitemD)

	}