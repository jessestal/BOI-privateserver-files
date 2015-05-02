	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/7/25
	//		Author:???
	//		TaskName:Monster-53001.s
	//		TaskID: ?????
	//
	//****************************************
	
	function OnDead(){
	
		$ectype_ID = GetEctypeID(-1,559)
		$shu = GetEctypeVar($ectype_ID,11)
		$shu = $shu + 1
		SetEctypeVar($ectype_ID,11,$shu)
		$ceng = GetEctypeVar($ectype_ID,1)
		if $ceng == 1
			if $shu == 1
				SetEctypeVar($ectype_ID,10,1)
				BC("screen","player",-1,"Victorious, lucky warrior! Allow me to grant you the privilege of entering the next level!")
			endif
		endif
		
		if $ceng == 5
			if $shu == 2
				SetEctypeVar($ectype_ID,10,1)
				BC("screen","player",-1,"Victorious, lucky warrior! Allow me to grant you the privilege of entering the next level!")
			endif
		endif
		
		if $ceng == 9
			if $shu == 3 
				SetEctypeVar($ectype_ID,10,1)
				BC("screen","player",-1,"Victorious, lucky warrior! Allow me to grant you the privilege of entering the next level!")
			endif
		endif
	
	}