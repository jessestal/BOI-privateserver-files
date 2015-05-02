	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/11
	//		Author:??
	//		TaskName:Battle-Item-51801.s
	//		TaskID:?????
	//****************************************
	
	function OnUseItem(){
		
		$lv = GetPlayerInfo( -1 , "level" )
		$time = GetPlayerVar( -1 , 3954 )
		$nowtime = GetSystemTime( "yday" )
		$nowtime = $nowtime + 1
		$round = GetPlayerVar( -1 , 3955 )
		$round = $round + 1
		
//----------lv*lv*10*12+lv*lv*400-------------
		$a = $lv * $lv
		$b = 120 * $a
		$c = 400 * $a
		$exp1 = $b + $c
	
//----------6*(4*lv-76)*lv*lv/5 + 400*lv*lv-----
		$a = $lv * $lv
		$b = 4 * $lv
		$c = $b - 76
		$d = $c * $a
		$e = 6 * $d
		$f = $e / 5
		$g = 400 * $a
		$exp2 = $f + $g
//---------------------------------
		if $time == $nowtime
			if $round <= 2
				$info = SubPlayerInfo ( -1 , "item" , 51801 , 1 )
				if  $info != 0
					return
				endif
				if $lv < 45
					AddPlayerInfo( -1 , "exp" , $exp1 )
				else
					AddPlayerInfo( -1 , "exp" , $exp2 )
				endif
				SetPlayerVar( -1 , 3955 , $round )
				BC( "screen", "player", -1, "You successfully used an [EXP Orb]." )
			else
				BC( "screen", "player", -1, "You've already used EXP Orb twice. You cannot use it again!" )
				return
			endif
		else
			$info = SubPlayerInfo ( -1 , "item" , 51801 , 1 )
			if  $info != 0
				return
			endif
			if $lv < 45
				AddPlayerInfo( -1 , "exp" , $exp1 )
			else
				AddPlayerInfo( -1 , "exp" , $exp2 )
			endif
			SetPlayerVar( -1 , 3954 , $nowtime )
			SetPlayerVar( -1 , 3955 , 1 )
			BC( "screen", "player", -1, "You successfully used an [EXP Orb]." )
		endif
		
	}