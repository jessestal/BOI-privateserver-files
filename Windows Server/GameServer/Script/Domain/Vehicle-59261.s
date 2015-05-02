	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/08/19
	//		Author：唐寅
	//		TaskName：Vehicle-59260.s
	//		TaskID：载具死亡触发脚本
	//
	//****************************************
	
	
	function OnDead(){
		
		//获取怪物CharID
		$charID = GetMonsterCharID()
		//获取Char怪物所在的MapID
		$mapID = GetMonsterMapID($charID)
		//魔法屠夫变量
		$rightvar = GetEctypeVar($mapID , 29)
		
		if $charID == 0
			return
		endif
		
		DelGuildDomainVehicle($charID)
		$rightvar = $rightvar + 1
		SetEctypeVar($mapID , 29 , $rightvar)
		
		
	
	}