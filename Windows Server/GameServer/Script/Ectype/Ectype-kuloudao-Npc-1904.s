	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/02
	//		Author:??
	//		TaskName:Ectype-Npc-kuloudao1904.s
	//		TaskID:??????
	//
	//****************************************
	//
	function OnRequest(){
	
		

	}
	
	//????????
	function OnOption0(){
	
		$ectype_ID = GetEctypeID(-1 ,222)
		if $ectype_ID > 0
			$revalue = DeleteNPC(1904, $ectype_ID)
			if $revalue == 0
				AddMonster( 51137, 1, $ectype_ID, 61, 41,  0 )
				BC("screen", "map", $ectype_ID, "Baberet's Will: Show your power!")
			else
				BC("dialogbox", "player", -1, "An error occurred while running Scripts!")
			endif
		endif
		
	}
	
	