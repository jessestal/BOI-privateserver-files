	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/07/13
	//		Author：唐寅
	//		TaskName：Ectype-fouth-59243.s
	//		TaskID： 空置领土第四波怪59243死亡脚本
	//
	//****************************************

	
	function OnDead(){
		//获取怪物CharID
		$charID = GetMonsterCharID()
		// 获取Char怪物所在的MapID
		$mapID = GetMonsterMapID($charID)
		//当前25号变量的数量，怪物每死亡一次增加1点
		$count = GetEctypeVar( -1 , 25 )		
		$count = $count + 1
		SetEctypeVar($mapID , 25 , $count)
								
	}
	