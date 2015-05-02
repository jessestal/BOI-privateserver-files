 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/11
	//		Author:???
	//		TaskName:Battle-Item-jingyan-64371.s
	//		TaskID:???
	//****************************************
	
	function OnUseItem(){
	
		$a = GetPlayerInfo ( -1 , "level" )
		$b = $a - 1
		$c = $b * 4
		$d = $c + 10
		$e = $d * 300
		$exp = 10 * $e
		
		$time = GetPlayerVar( -1 , 3714 )
		$nowtime = GetSystemTime( "yday" )
		if $time == $nowtime
			BC( "screen", "player", -1, "You have used EXP Orb already today. Unable to use again." )
			return
		else
			$info = SubPlayerInfo( -1 , "item" , 64371 , 1 )
			if  $info != 0
				return
			endif
			AddPlayerInfo( -1 , "exp", $exp )
			SetPlayerVar( -1 , 3714 , $nowtime )
			return
		endif
	
	}