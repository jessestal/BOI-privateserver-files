	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/24
	//		Author:???
	//		TaskName:datanbao-npc-905.s
	//		TaskID:
	//
	//****************************************
	
	//????3419 ?????????????
	//????3420 ????
	//????3862 ????UID
	
	function OnRequest(){
		
	}
	
	function OnOption0(){
		
		$ectype_ID = GetEctypeID(-1,559)
		$ceng = GetPlayerVar(-1,3419)
		
		if $ceng == 2
			$fly = FlyToMap(-1,$ectype_ID,50,33)
			if $fly > 0
				BC("screen","player",-1,"Continue on, warrior!")
				return
			endif
		endif
		
		if $ceng == 3
			$fly = FlyToMap(-1,$ectype_ID,68,33)
			if $fly > 0
				BC("screen","player",-1,"Continue on, warrior!")
				return
			endif
		endif
		
		if $ceng == 4
			$fly = FlyToMap(-1,$ectype_ID,87,33)
			if $fly > 0
				BC("screen","player",-1,"Continue on, warrior!")
				return
			endif
		endif
		
		if $ceng == 5
			$fly = FlyToMap(-1,$ectype_ID,33,51)
			if $fly > 0
				BC("screen","player",-1,"Continue on, warrior!")
				return
			endif
		endif
		
		if $ceng == 6
			$fly = FlyToMap(-1,$ectype_ID,50,51)
			if $fly > 0
				BC("screen","player",-1,"Continue on, warrior!")
				return
			endif
		endif
		
		if $ceng == 7
			$fly = FlyToMap(-1,$ectype_ID,68,51)
			if $fly > 0
				BC("screen","player",-1,"Continue on, warrior!")
				return
			endif
		endif
		
		if $ceng == 8
			$fly = FlyToMap(-1,$ectype_ID,87,51)
			if $fly > 0
				BC("screen","player",-1,"Continue on, warrior!")
				return
			endif
		endif
		
		if $ceng == 9
			$fly = FlyToMap(-1,$ectype_ID,32,68)
			if $fly > 0
				BC("screen","player",-1,"Continue on, warrior!")
				return
			endif
		endif
		
		if $ceng == 10
			$fly = FlyToMap(-1,$ectype_ID,50,68)
			if $fly > 0
				BC("screen","player",-1,"Continue on, warrior!")
				return
			endif
		endif
		
		if $ceng == 11
			$fly = FlyToMap(-1,$ectype_ID,68,68)
			if $fly > 0
				BC("screen","player",-1,"Continue on, warrior!")
				return
			endif
		endif
		
		if $ceng == 12
			$fly = FlyToMap(-1,$ectype_ID,87,68)
			if $fly > 0
				BC("screen","player",-1,"Continue on, warrior!")
				return
			endif
		endif
		
		if $ceng == 13
			$fly = FlyToMap(-1,$ectype_ID,88,91)
			if $fly > 0
				BC("screen","player",-1,"Continue on, warrior!")
				return
			endif
		endif
			
			
			
	}
	
	function OnOption1(){
		
		$fly = FlyToMap(-1,475,70,50)
		
	}