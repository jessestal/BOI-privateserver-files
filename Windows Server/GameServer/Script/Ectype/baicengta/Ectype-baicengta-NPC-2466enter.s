	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/20
	//		Author:???
	//		TaskName:???????
	//		TaskID:Ectype-baicengta-NPC-2466enter.s
	//
	//****************************************
	
	//	3327 ????
	//	4011 ????
	//  3328 ??????????
	//  4012 ????????????
	//  188 Boss??????
	
	function OnRequest(){
		$today_time = GetSystemTime( "yday" )
		$player_time = GetPlayerVar( -1, 4011 )
		if $player_time != $today_time
			SetPlayerVar(-1,3328,0)
		endif
		$top = GetPlayerVar( -1, 4012 )
		if $top == 10
			$wenzhang = GetPlayerInfo( -1, "equip" , 20864 )
			if $wenzhang > 0
				SetPlayerVar(-1,4012,11)
			endif
		endif
		if $top == 20
			$wenzhang = GetPlayerInfo( -1, "equip" , 20865 )
			if $wenzhang > 0
				SetPlayerVar(-1,4012,21)
			endif
		endif
		if $top == 30
			$wenzhang = GetPlayerInfo( -1, "equip" , 20866 )
			if $wenzhang > 0
				SetPlayerVar(-1,4012,31)
			endif
		endif
		if $top == 40
			$wenzhang = GetPlayerInfo( -1, "equip" , 20867 )
			if $wenzhang > 0
				SetPlayerVar(-1,4012,41)
			endif
		endif
		if $top == 50
			$wenzhang = GetPlayerInfo( -1, "equip" , 20868 )
			if $wenzhang > 0
				SetPlayerVar(-1,4012,51)
			endif
		endif
		if $top == 60
			$wenzhang = GetPlayerInfo( -1, "equip" , 20869 )
			if $wenzhang > 0
				SetPlayerVar(-1,4012,61)
			endif
		endif
		$yuanding = IsExistStatus(-1 , 10714 )
		if $yuanding == 0
			AddStatus( -1, 10714, 3 )
		endif
	}
	
	function OnReChallenge(){
		
		$today_time = GetSystemTime( "yday" )
		$player_time = GetPlayerVar( -1, 4011 )
		if $today_time != $player_time
			BC( "screen" , "player" , -1 , "Today's challenge is not yet open. Please use the enter button." )
			return
		endif
		
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu < 1
			BC( "screen" , "player" , -1 , "Today's challenge is not yet open. Please use the enter button.")
			return
		endif
		if $cishu > 2
			BC( "screen" , "player" , -1 , "You have used all your attempts for today. Try again tomorrow!")
			return
		endif
		if $cishu == 2
			$shalou = GetPlayerInfo(-1,"item",12823)
			if $shalou < 1
				BC( "screen" , "player" , -1 , "You need an Endless Stairs Key in order to try again!")
				return
			endif
		endif
		
		$b = GetPlayerVar( -1, 3327 )
		$c = $b + 1000
		$x = 0
		$y = 0
		if $b > 0
			$x = 28
			$y = 28
		endif
		if  $b > 10
			$x = 59
			$y = 75
		endif
		if  $b > 20
			$x = 60
			$y = 60
		endif
		if  $b > 30
			$x = 28
			$y = 28
		endif
		if  $b > 40
			$x = 60
			$y = 59
		endif
		if  $b > 50
			$x = 60
			$y = 61
		endif
		if  $b > 59
			$x = 60
			$y = 70
		endif
		if  $b > 60
			$x = 57
			$y = 53
		endif
		if  $b > 70
			$x = 57
			$y = 53
		endif
		if  $b > 80
			$x = 98
			$y = 59
		endif
		if  $b > 90
			$x = 98
			$y = 59
		endif
		if  $b > 100
			BC( "screen" , "player" , -1 , "Higher levels of the Endless Stairs are coming soon!")
			return
		endif
		
		$top = GetPlayerVar(-1,4012)
		if $top < $b
			BC("screen" , "player" , -1 , "You have not yet reached the higher levels!")
			return
		endif
		
		$Eid = GetEctypeID(-1,$c)
		if $Eid > 0
			$revalue = ReleaseEctype($Eid)
			if $revalue != 0
				BC( "screen" , "player" , -1 , "The instance is not ready. Please try again later!" )
				return
			endif
		endif
		ReleaseEctype(-1,$c)
		ReleaseEctype($Eid)
		
		$fly = FlyToEctype(-1 ,$c , $x ,$y )
		if $fly > 0
			if $cishu == 2
				SubPlayerInfo(-1,"item",12823,1)
				SetPlayerVar( -1, 3328, 3 )
				BC("screen" , "player" , -1 , "You have used an Endless Stairs Key!")
			endif
			if $cishu == 1
				SetPlayerVar( -1, 3328, 2 )
			endif
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif
		
	}
	
	//?Boss????
	function OnChallenge0(){
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu > 0
			BC("screen" , "player" , -1 , "Today's challenge is already going on. Please click the return button.")
			return
		endif
			
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$top = GetPlayerVar(-1,4012)
		if $top < 10
			BC("screen" , "player" , -1 , "You have not yet challenged any of the bosses. Unable to participate in Boss Challenge Mode.")
			return
		endif
		
		$Eid = GetEctypeID(-1,1010)
		ReleaseEctype(-1,1010)
		ReleaseEctype($Eid)
		$fly = FlyToEctype(-1 ,1010 , 28, 28 )
		if $fly > 0
			$today_time = GetSystemTime( "yday" )
			SetPlayerVar( -1, 4011, $today_time )
			SetPlayerVar( -1, 3327, 10 )
			SetPlayerVar( -1, 3328, 1 )
			SetPlayerVar( -1, 188, 1 )
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif

	}
	
	//??1?
	function OnChallenge1(){
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu > 0
			BC("screen" , "player" , -1 , "Today's challenge is already going on. Please click the return button.")
			return
		endif
			
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$Eid = GetEctypeID(-1,1001)
		ReleaseEctype(-1,1001)
		ReleaseEctype($Eid)
		$fly = FlyToEctype(-1 ,1001 , 28 ,28 )
		if $fly > 0
			$today_time = GetSystemTime( "yday" )
			SetPlayerVar( -1, 4011, $today_time )
			SetPlayerVar( -1, 3327, 1 )
			SetPlayerVar( -1, 3328, 1 )
			SetPlayerVar( -1, 188, 0 )
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
			$firstchallenge = GetPlayerVar( -1, 4012)
			if $firstchallenge == 0
				SetPlayerVar( -1, 4012, 1 )
			endif
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif
		
	}		
	
	//??6?
	function OnChallenge6(){
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu > 0
			BC("screen" , "player" , -1 , "Today's challenge is already going on. Please click the return button.")
			return
		endif
			
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$top = GetPlayerVar(-1,4012)
		if $top < 6
			BC("screen" , "player" , -1 , "You have not yet cleared Level 5!")
			return
		endif
		
		$Eid = GetEctypeID(-1,1006)
		ReleaseEctype(-1,1006)
		ReleaseEctype($Eid)
		$fly = FlyToEctype(-1 ,1006 , 28 ,28 )
		if $fly > 0
			$today_time = GetSystemTime( "yday" )
			SetPlayerVar( -1, 4011, $today_time )
			SetPlayerVar( -1, 3327, 6 )
			SetPlayerVar( -1, 3328, 1 )
			SetPlayerVar( -1, 188, 0 )
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif
		
	}
	
	//??11?
	function OnChallenge11(){
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu > 0
			BC("screen" , "player" , -1 , "Today's challenge is already going on. Please click the return button.")
			return
		endif
			
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$top = GetPlayerVar(-1,4012)
		if $top < 11
			BC("screen" , "player" , -1 , "You have not yet cleared Level 10!")
			return
		endif
		
		$Eid = GetEctypeID(-1,1011)
		ReleaseEctype(-1,1011)
		ReleaseEctype($Eid)
		$fly = FlyToEctype(-1 ,1011 , 59 ,75 )
		if $fly > 0
			$today_time = GetSystemTime( "yday" )
			SetPlayerVar( -1, 4011, $today_time )
			SetPlayerVar( -1, 3327, 11 )
			SetPlayerVar( -1, 3328, 1 )
			SetPlayerVar( -1, 188, 0 )
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif
		
	}	
	
	//??16?
	function OnChallenge16(){
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu > 0
			BC("screen" , "player" , -1 , "Today's challenge is already going on. Please click the return button.")
			return
		endif
			
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$top = GetPlayerVar(-1,4012)
		if $top < 16
			BC("screen" , "player" , -1 , "You have not yet cleared Level 15!")
			return
		endif
		
		$Eid = GetEctypeID(-1,1016)
		ReleaseEctype(-1,1016)
		ReleaseEctype($Eid)
		$fly = FlyToEctype(-1 ,1016 , 59 ,75 )
		if $fly > 0
			$today_time = GetSystemTime( "yday" )
			SetPlayerVar( -1, 4011, $today_time )
			SetPlayerVar( -1, 3327, 16 )
			SetPlayerVar( -1, 3328, 1 )
			SetPlayerVar( -1, 188, 0 )
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif
		
	}
	
	//??21?
	function OnChallenge21(){
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu > 0
			BC("screen" , "player" , -1 , "Today's challenge is already going on. Please click the return button.")
			return
		endif
			
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$top = GetPlayerVar(-1,4012)
		if $top < 21
			BC("screen" , "player" , -1 , "You have not yet cleared Level 20!")
			return
		endif
		
		$Eid = GetEctypeID(-1,1021)
		ReleaseEctype(-1,1021)
		ReleaseEctype($Eid)
		$fly = FlyToEctype(-1 ,1021 , 60 ,60 )
		if $fly > 0
			$today_time = GetSystemTime( "yday" )
			SetPlayerVar( -1, 4011, $today_time )
			SetPlayerVar( -1, 3327, 21 )
			SetPlayerVar( -1, 3328, 1 )
			SetPlayerVar( -1, 188, 0 )
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif
		
	}		
	
	//??26?
	function OnChallenge26(){
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu > 0
			BC("screen" , "player" , -1 , "Today's challenge is already going on. Please click the return button.")
			return
		endif
			
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$top = GetPlayerVar(-1,4012)
		if $top < 26
			BC("screen" , "player" , -1 , "You have not yet cleared Level 25!")
			return
		endif
		
		$Eid = GetEctypeID(-1,1026)
		ReleaseEctype(-1,1026)
		ReleaseEctype($Eid)
		$fly = FlyToEctype(-1 ,1026 , 60 ,60 )
		if $fly > 0
			$today_time = GetSystemTime( "yday" )
			SetPlayerVar( -1, 4011, $today_time )
			SetPlayerVar( -1, 3327, 26 )
			SetPlayerVar( -1, 3328, 1 )
			SetPlayerVar( -1, 188, 0 )
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif
		
	}
	
	//??31?
	function OnChallenge31(){
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu > 0
			BC("screen" , "player" , -1 , "Today's challenge is already going on. Please click the return button.")
			return
		endif
			
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$top = GetPlayerVar(-1,4012)
		if $top < 31
			BC("screen" , "player" , -1 , "You have not yet cleared Level 30!")
			return
		endif
		
		$Eid = GetEctypeID(-1,1031)
		ReleaseEctype(-1,1031)
		ReleaseEctype($Eid)
		$fly = FlyToEctype(-1 ,1031 , 28 ,28 )
		if $fly > 0
			$today_time = GetSystemTime( "yday" )
			SetPlayerVar( -1, 4011, $today_time )
			SetPlayerVar( -1, 3327, 31 )
			SetPlayerVar( -1, 3328, 1 )
			SetPlayerVar( -1, 188, 0 )
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif
		
	}		
	
	//??36?
	function OnChallenge36(){
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu > 0
			BC("screen" , "player" , -1 , "Today's challenge is already going on. Please click the return button.")
			return
		endif
			
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$top = GetPlayerVar(-1,4012)
		if $top < 36
			BC("screen" , "player" , -1 , "You have not yet cleared Level 35!")
			return
		endif
		
		$Eid = GetEctypeID(-1,1036)
		ReleaseEctype(-1,1036)
		ReleaseEctype($Eid)
		$fly = FlyToEctype(-1 ,1036 , 28 ,28 )
		if $fly > 0
			$today_time = GetSystemTime( "yday" )
			SetPlayerVar( -1, 4011, $today_time )
			SetPlayerVar( -1, 3327, 36 )
			SetPlayerVar( -1, 3328, 1 )
			SetPlayerVar( -1, 188, 0 )
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif
		
	}
	
	//??41?
	function OnChallenge41(){
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu > 0
			BC("screen" , "player" , -1 , "Today's challenge is already going on. Please click the return button.")
			return
		endif
			
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$top = GetPlayerVar(-1,4012)
		if $top < 41
			BC("screen" , "player" , -1 , "You have not yet cleared Level 40!")
			return
		endif
		
		$Eid = GetEctypeID(-1,1041)
		ReleaseEctype(-1,1041)
		ReleaseEctype($Eid)
		$fly = FlyToEctype(-1 ,1041 , 60 ,59 )
		if $fly > 0
			$today_time = GetSystemTime( "yday" )
			SetPlayerVar( -1, 4011, $today_time )
			SetPlayerVar( -1, 3327, 41 )
			SetPlayerVar( -1, 3328, 1 )
			SetPlayerVar( -1, 188, 0 )
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif
		
	}		
	
	//??46?
	function OnChallenge46(){
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu > 0
			BC("screen" , "player" , -1 , "Today's challenge is already going on. Please click the return button.")
			return
		endif
			
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$top = GetPlayerVar(-1,4012)
		if $top < 46
			BC("screen" , "player" , -1 , "You have not yet cleared Level 45!")
			return
		endif
		
		$Eid = GetEctypeID(-1,1046)
		ReleaseEctype(-1,1046)
		ReleaseEctype($Eid)
		$fly = FlyToEctype(-1 ,1046 , 60 ,59 )
		if $fly > 0
			$today_time = GetSystemTime( "yday" )
			SetPlayerVar( -1, 4011, $today_time )
			SetPlayerVar( -1, 3327, 46 )
			SetPlayerVar( -1, 3328, 1 )
			SetPlayerVar( -1, 188, 0 )
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif
		
	}
	
	//??51?
	function OnChallenge51(){
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu > 0
			BC("screen" , "player" , -1 , "Today's challenge is already going on. Please click the return button.")
			return
		endif
			
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$top = GetPlayerVar(-1,4012)
		if $top < 51
			BC("screen" , "player" , -1 , "You have not yet cleared Level 50!")
			return
		endif
		
		$Eid = GetEctypeID(-1,1051)
		ReleaseEctype(-1,1051)
		ReleaseEctype($Eid)
		$fly = FlyToEctype(-1 ,1051 , 60 ,61 )
		if $fly > 0
			$today_time = GetSystemTime( "yday" )
			SetPlayerVar( -1, 4011, $today_time )
			SetPlayerVar( -1, 3327, 51 )
			SetPlayerVar( -1, 3328, 1 )
			SetPlayerVar( -1, 188, 0 )
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif
		
	}		
	
	//??56?
	function OnChallenge56(){
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu > 0
			BC("screen" , "player" , -1 , "Today's challenge is already going on. Please click the return button.")
			return
		endif
			
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$top = GetPlayerVar(-1,4012)
		if $top < 56
			BC("screen" , "player" , -1 , "You have not yet cleared Level 55!")
			return
		endif
		
		$Eid = GetEctypeID(-1,1056)
		ReleaseEctype(-1,1056)
		ReleaseEctype($Eid)
		$fly = FlyToEctype(-1 ,1056 , 60 ,61 )
		if $fly > 0
			$today_time = GetSystemTime( "yday" )
			SetPlayerVar( -1, 4011, $today_time )
			SetPlayerVar( -1, 3327, 56 )
			SetPlayerVar( -1, 3328, 1 )
			SetPlayerVar( -1, 188, 0 )
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif
		
	}
			
	
	//??61?
	function OnChallenge61(){
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu > 0
			BC("screen" , "player" , -1 , "Today's challenge is already going on. Please click the return button.")
			return
		endif
			
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$top = GetPlayerVar(-1,4012)
		if $top < 61
			BC("screen" , "player" , -1 , "You have not yet cleared Level 60!")
			return
		endif
		
		$Eid = GetEctypeID(-1,1061)
		ReleaseEctype(-1,1061)
		ReleaseEctype($Eid)
		$fly = FlyToEctype(-1 ,1061 , 57 ,53 )
		if $fly > 0
			$today_time = GetSystemTime( "yday" )
			SetPlayerVar( -1, 4011, $today_time )
			SetPlayerVar( -1, 3327, 61 )
			SetPlayerVar( -1, 3328, 1 )
			SetPlayerVar( -1, 188, 0 )
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif
		
	}
	
	//??66?
	function OnChallenge66(){
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu > 0
			BC("screen" , "player" , -1 , "Today's challenge is already going on. Please click the return button.")
			return
		endif
			
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$top = GetPlayerVar(-1,4012)
		if $top < 66
			BC("screen" , "player" , -1 , "You have not yet cleared Level 65!")
			return
		endif
		
		$Eid = GetEctypeID(-1,1066)
		ReleaseEctype(-1,1066)
		ReleaseEctype($Eid)
		$fly = FlyToEctype(-1 ,1066 , 57 ,53 )
		if $fly > 0
			$today_time = GetSystemTime( "yday" )
			SetPlayerVar( -1, 4011, $today_time )
			SetPlayerVar( -1, 3327, 66 )
			SetPlayerVar( -1, 3328, 1 )
			SetPlayerVar( -1, 188, 0 )
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif
		
	}
	
	//??71?
	function OnChallenge71(){
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu > 0
			BC("screen" , "player" , -1 , "Today's challenge is already going on. Please click the return button.")
			return
		endif
			
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$top = GetPlayerVar(-1,4012)
		if $top < 71
			BC("screen" , "player" , -1 , "You have not yet cleared Level 70!")
			return
		endif
		
		$Eid = GetEctypeID(-1,1071)
		ReleaseEctype(-1,1071)
		ReleaseEctype($Eid)
		$fly = FlyToEctype(-1 ,1071 , 57 ,53 )
		if $fly > 0
			$today_time = GetSystemTime( "yday" )
			SetPlayerVar( -1, 4011, $today_time )
			SetPlayerVar( -1, 3327, 71 )
			SetPlayerVar( -1, 3328, 1 )
			SetPlayerVar( -1, 188, 0 )
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif
		
	}
	
	//??76?
	function OnChallenge76(){
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu > 0
			BC("screen" , "player" , -1 , "Today's challenge is already going on. Please click the return button.")
			return
		endif
			
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$top = GetPlayerVar(-1,4012)
		if $top < 76
			BC("screen" , "player" , -1 , "You have not yet cleared Level 75!")
			return
		endif
		
		$Eid = GetEctypeID(-1,1076)
		ReleaseEctype(-1,1076)
		ReleaseEctype($Eid)
		$fly = FlyToEctype(-1 ,1076 , 57 ,53 )
		if $fly > 0
			$today_time = GetSystemTime( "yday" )
			SetPlayerVar( -1, 4011, $today_time )
			SetPlayerVar( -1, 3327, 76 )
			SetPlayerVar( -1, 3328, 1 )
			SetPlayerVar( -1, 188, 0 )
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif
		
	}
	
	//??81?
	function OnChallenge81(){
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu > 0
			BC("screen" , "player" , -1 , "Today's challenge is already going on. Please click the return button.")
			return
		endif
			
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$top = GetPlayerVar(-1,4012)
		if $top < 81
			BC("screen" , "player" , -1 , "You have not yet cleared Level 80!")
			return
		endif
		
		$Eid = GetEctypeID(-1,1081)
		ReleaseEctype(-1,1081)
		ReleaseEctype($Eid)
		$fly = FlyToEctype(-1 ,1081 , 98 ,59 )
		if $fly > 0
			$today_time = GetSystemTime( "yday" )
			SetPlayerVar( -1, 4011, $today_time )
			SetPlayerVar( -1, 3327, 81 )
			SetPlayerVar( -1, 3328, 1 )
			SetPlayerVar( -1, 188, 0 )
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif
		
	}
	
	//??86?
	function OnChallenge86(){
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu > 0
			BC("screen" , "player" , -1 , "Today's challenge is already going on. Please click the return button.")
			return
		endif
			
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$top = GetPlayerVar(-1,4012)
		if $top < 86
			BC("screen" , "player" , -1 , "You have not yet cleared Level 85!")
			return
		endif
		
		$Eid = GetEctypeID(-1,1086)
		ReleaseEctype(-1,1086)
		ReleaseEctype($Eid)
		$fly = FlyToEctype(-1 ,1086 , 98 ,59 )
		if $fly > 0
			$today_time = GetSystemTime( "yday" )
			SetPlayerVar( -1, 4011, $today_time )
			SetPlayerVar( -1, 3327, 86 )
			SetPlayerVar( -1, 3328, 1 )
			SetPlayerVar( -1, 188, 0 )
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif
		
	}
	
	//??91?
	function OnChallenge91(){
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu > 0
			BC("screen" , "player" , -1 , "Today's challenge is already going on. Please click the return button.")
			return
		endif
			
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$top = GetPlayerVar(-1,4012)
		if $top < 91
			BC("screen" , "player" , -1 , "You have not yet cleared Level 90!")
			return
		endif
		
		$Eid = GetEctypeID(-1,1091)
		ReleaseEctype(-1,1091)
		ReleaseEctype($Eid)
		$fly = FlyToEctype(-1 ,1091 , 98 ,59 )
		if $fly > 0
			$today_time = GetSystemTime( "yday" )
			SetPlayerVar( -1, 4011, $today_time )
			SetPlayerVar( -1, 3327, 91 )
			SetPlayerVar( -1, 3328, 1 )
			SetPlayerVar( -1, 188, 0 )
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif
		
	}
	
	//??96?
	function OnChallenge96(){
		
		$cishu = GetPlayerVar(-1,3328)
		if $cishu > 0
			BC("screen" , "player" , -1 , "Today's challenge is already going on. Please click the return button.")
			return
		endif
			
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "screen" , "player" , -1 , "You can only challenge the Endless Stairs alone!" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 115
			BC( "screen" , "player" , -1 , "You must be at least LV115 to enter the Endless Stairs!" )
			return
		endif
		
		$top = GetPlayerVar(-1,4012)
		if $top < 96
			BC("screen" , "player" , -1 , "You have not yet cleared Level 95!")
			return
		endif
		
		$Eid = GetEctypeID(-1,1096)
		ReleaseEctype(-1,1096)
		ReleaseEctype($Eid)
		$fly = FlyToEctype(-1 ,1096 , 98 ,59 )
		if $fly > 0
			$today_time = GetSystemTime( "yday" )
			SetPlayerVar( -1, 4011, $today_time )
			SetPlayerVar( -1, 3327, 96 )
			SetPlayerVar( -1, 3328, 1 )
			SetPlayerVar( -1, 188, 0 )
			$server_jinru = GetGlobalVar(981)
			$now_jinru = $server_jinru + 1
			SetGlobalVar(981,$now_jinru)
			call balance()
		else
			BC( "screen" , "player" , -1, "The instance is currently full. Please try again later!" )
		endif
		
	}
	
	//????????
	function OnChallenge2(){
		
		BC("messagebox" , "player" , -1 , "Vehicle Mode will be coming soon!")
		
	}
	
	//????????
	function balance(){
		//???????
		RemoveStatusByID(-1,21625)
		RemoveStatusByID(-1,21626)
		$class = GetPlayerInfo( -1, "profession")
		if $class == 1
			AddStatus( -1, 21627, 1 )
			AddStatus( -1, 21625, 2 )
			AddStatus( -1, 21626, 2 )
		endif
		if $class == 2
			AddStatus( -1, 21627, 1 )
			$c = GetPlayerVar( -1, 3327)
			if $c < 61
				AddStatus( -1, 21625, 1 )
				AddStatus( -1, 21626, 1 )
			endif
		endif
		if $class == 3
			AddStatus( -1, 21627, 1 )
		endif
		if $class == 4
			AddStatus( -1, 21627, 1 )
			AddStatus( -1, 21625, 1 )
			AddStatus( -1, 21626, 1 )
		endif
		if $class == 5
			AddStatus( -1, 21627, 1 )
			AddStatus( -1, 21625, 3 )
			AddStatus( -1, 21626, 3 )
		endif
		if $class == 6
			AddStatus( -1, 21627, 1 )
			AddStatus( -1, 21625, 1 )
			AddStatus( -1, 21626, 1 )
		endif
	}