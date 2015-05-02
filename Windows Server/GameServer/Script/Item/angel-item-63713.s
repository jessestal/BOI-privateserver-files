	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/01
	//		Author:???
	//		TaskName:Item-Spring-63713.s
	//		TaskID:???????
	//****************************************
	
	function OnUseItem(){
		
		$lv = GetPlayerInfo( -1 , "level" )
		$time = GetPlayerVar( -1 , 3924 )
		$nowtime = GetSystemTime( "yday" )
		$nowtime = $nowtime + 1
		$round = GetPlayerVar( -1 , 3925 )
		$round = $round + 1
		$RankList = GetRankListValue( 1, 499 )
		
//----------lv*lv*10*12+lv*lv*400-------------
		$a = $lv * $lv
		$b = 120 * $a
		$c = 400 * $a
		$exp3 = $b + $c
		$exp3 = $exp3 * 6
		$exp3 = $exp3 / 5
		
	$exp12 = $exp3 * 85
	$exp2  = $exp12 / 100 
	$exp11 = $exp3 * 7
	$exp1 = $exp11 / 10
	$exp10 = $exp3 * 6
	$exp0 = $exp10 / 10
		
		
	
//----------6*(4*lv-76)*lv*lv/5 + 400*lv*lv-----
		$a = $lv * $lv
		$b = 4 * $lv
		$c = $b - 76
		$d = $c * $a
		$e = 6 * $d
		$f = $e / 5
		$g = 400 * $a
		$addexp3 = $f + $g
		$addexp3 = $addexp3 * 6
		$addexp3 = $addexp3 / 5
		
	$addexp12 = $addexp3 * 85
	$addexp2  = $addexp12 / 100 
	$addexp11 = $addexp3 * 7
	$addexp1 = $addexp11 / 10
	$addexp10 = $addexp3 * 6
	$addexp0 = $addexp10 / 10
			
//---------------------------------
		if $time == $nowtime
				if $round <= 5
						$info = SubPlayerInfo( -1 , "item" , 63713 , 1 )
						if  $info != 0
								return
						endif
						if $lv < 45
								if $RankList < 50
										AddPlayerInfo( -1 , "exp" , $exp0 )
								endif
								if $RankList >= 50
										if $RankList <= 69
												AddPlayerInfo( -1 , "exp" , $exp1 )
										endif
								endif
								if $RankList >= 70
										if $RankList <= 89
												AddPlayerInfo( -1 , "exp" , $exp2 )
										endif
								endif
								if $RankList >= 90
										AddPlayerInfo( -1 , "exp" , $exp3 )
								endif
						else
								if $RankList < 50
										AddPlayerInfo( -1 , "exp" , $addexp0 )
								endif
								if $RankList >= 50
										if $RankList <= 69
												AddPlayerInfo( -1 , "exp" , $addexp1 )
										endif
								endif
								if $RankList >= 70
										if $RankList <= 89
												AddPlayerInfo( -1 , "exp" , $addexp2 )
										endif
								endif
								if $RankList >= 90
										AddPlayerInfo( -1 , "exp" , $addexp3 )
								endif
						endif
				SetPlayerVar( -1 , 3925 , $round )
				BC( "screen", "player", -1, "You've received Ode to Angels, and gained a lot of experience." )
			else
				BC( "screen", "player", -1, "You've already received 5 Ode to Angels today. Come back tomorrow." )
				return
			endif
		else
				$info = SubPlayerInfo ( -1 , "item" , 63713 , 1 )
				if  $info != 0
						return
				endif
				if $lv < 45
								if $RankList < 50
										AddPlayerInfo( -1 , "exp" , $exp0 )
								endif
								if $RankList >= 50
										if $RankList <= 69
												AddPlayerInfo( -1 , "exp" , $exp1 )
										endif
								endif
								if $RankList >= 70
										if $RankList <= 89
												AddPlayerInfo( -1 , "exp" , $exp2 )
										endif
								endif
								if $RankList >= 90
										AddPlayerInfo( -1 , "exp" , $exp3 )
								endif
						else
								if $RankList < 50
										AddPlayerInfo( -1 , "exp" , $addexp0 )
								endif
								if $RankList >= 50
										if $RankList <= 69
												AddPlayerInfo( -1 , "exp" , $addexp1 )
										endif
								endif
								if $RankList >= 70
										if $RankList <= 89
												AddPlayerInfo( -1 , "exp" , $addexp2 )
										endif
								endif
								if $RankList >= 90
										AddPlayerInfo( -1 , "exp" , $addexp3 )
								endif
			endif
			SetPlayerVar( -1 , 3924 , $nowtime )
			SetPlayerVar( -1 , 3925 , 1 )
			BC( "screen", "player", -1, "You've received Ode to Angels, and gained a lot of experience." )
		endif
		
	}