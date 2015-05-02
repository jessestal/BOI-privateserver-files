	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/05/08
	//		Author：黄晨
	//		TaskName：Quest-bainian-4233.s
	//		TaskID：拜年任务完成4233
	//
	//****************************************
	
	function OnTaskDone(){
		//给予这个阶段的拜年奖励，塞下一个阶段任务
		$lv = GetPlayerInfo ( -1 , "level" )
		$lv2 = $lv * $lv
		$a = $lv2 * 20
		$b = $lv * 4
		$c = $b - 76
		$d = $a * $c
		$exp = $d / 100
		
		//1.2倍经验
		$expold = $exp
		$exp = $exp / 10
		$exp = $exp * 2
		$exp = $expold + $exp
		
		//奖励经验
		AddPlayerInfo( -1, "exp", $exp )
		
		AcceptTask( -1, 4234 )
	}