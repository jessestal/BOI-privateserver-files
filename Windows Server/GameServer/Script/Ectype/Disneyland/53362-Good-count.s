	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/7
	//		Author:???(??,??,??)
	//		TaskName:??????
	//		TaskID:53362-Good-count.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 568 ,??????? 1

		//????
		$ectype_id = GetEctypeID(-1, 568)
		$number = GetEctypeVar($ectype_id,12)
		$number = $number + 1
		SetEctypeVar($ectype_id,12,$number)
		
		//??????
		$score = GetPlayerVar(-1,3519)
		if $score >= 1
			$score = $score - 1
			SetPlayerVar(-1,3519,$score)
		endif
		
		BC("screen","player",-1,"Sorry. Your Wonderland Score decreases by 1")
		
	}