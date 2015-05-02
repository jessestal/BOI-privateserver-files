	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/7/25
	//		Author:???
	//		TaskName:Monster-53005.s
	//		TaskID: ?????
	//
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID(-1,559)
		$a = GetEctypeVar($ectype_ID,12)
		$a = $a - 1
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		SetEctypeVar($ectype_ID,12,$a)
		if $a == 8
			StartEctypeTimer($ectype_ID,2)
			AddMonsterByFloat(53017,1,$ectype_ID,$x,$y,0)
		endif
		
		if $a == 0
			BC("screen","player",-1,"In 5 seconds, I'll decide whether you can enter the next level.")
		endif
	
	}