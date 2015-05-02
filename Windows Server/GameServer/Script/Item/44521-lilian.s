	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2012-11
	//		Author:???
	//		TaskName:
	//		TaskID:
	//****************************************
	
	function OnUseItem(){
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("screen","player",-1,"Insufficient bag slots!")
			return
		endif
		
		$suc = SubPlayerInfo(-1,"item",44521,1)
		if $suc == 0
			AddPlayerInfo(-1,"item",9,5)
		endif
	}