	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/7/25
	//		Author:???
	//		TaskName:Monster-53008.s
	//		TaskID: ??????
	//
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID(-1,559)
		BC("screen","player",-1,"You are smarter than you look, or just lucky? Keep it up, get ready for the next level!")
		SetEctypeVar($ectype_ID,10,1)
		DeleteMonster($ectype_ID,53008)
		DeleteMonster($ectype_ID,53009)
		
	}