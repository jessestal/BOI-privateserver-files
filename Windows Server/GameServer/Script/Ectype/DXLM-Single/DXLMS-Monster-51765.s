	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011-08-25
	//		Author:???
	//		TaskName:
	//		TaskID:
	//
	//****************************************
	
	function OnDead(){
		
		$ectype_id = GetPlayerInfo(-1,"mapid")
		$key = 66
		$getvar = GetEctypeVar($ectype_id,$key)
		$getvar = $getvar + 1
		SetEctypeVar($ectype_id,$key,$getvar)
		if $getvar <= 11
			$getvar = 11 - $getvar
			BC("screen","player",-1,"Mechanical Pillars remaining: ",$getvar)	
		endif
		if $getvar == 0
			OpenMask(5,$ectype_id)
			BC("screen","player",-1,"Tranquility has been restored. The door to Fortune is open!")
		endif
		
	}