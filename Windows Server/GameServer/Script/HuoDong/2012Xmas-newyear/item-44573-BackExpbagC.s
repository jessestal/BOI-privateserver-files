 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName: ????????? 
 //****************************  
 
	function OnUseItem(){ 
		
		$playerid = GetPlayerID()
		$nullitem = GetPlayerInfo($playerid,"nullitem",0)
		if $nullitem < 1
			BC("screen","player",-1,"Insufficient bag slots!")
			return
		endif
//44574	??????????
//44575	??????????
//44576	??????????
		$res = SubPlayerInfo(-1,"item",44573,1)
		if $res == 0
			AddPlayerInfo(-1,"item",44576,30)
		endif
	}
