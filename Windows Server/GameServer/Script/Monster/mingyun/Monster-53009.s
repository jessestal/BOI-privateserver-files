	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/7/25
	//		Author:???
	//		TaskName:Monster-53009.s
	//		TaskID: ??????
	//
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID(-1,559)
		BC("screen","player",-1,"You chose... POORLY! This is the fake one! You lost this game of fate, try again later!")
		//SetEctypeVar($ectype_ID,10,1)
		DeleteMonster($ectype_ID,53008)
		DeleteMonster($ectype_ID,53009)
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		AddMonsterByFloat(53007,1,$ectype_ID,$x,$y,0)
		
	}