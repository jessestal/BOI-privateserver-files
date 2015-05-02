 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName: ?????????? 
 //****************************  
 
	function OnUseItem(){ 
		
		$playerid = GetPlayerID()
		$nullitem = GetPlayerInfo($playerid,"nullitem",0)
		if $nullitem < 1
			BC("screen","player",-1,"Insufficient bag slots!")
			return
		endif
		$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count != 0
			return
		endif
		$itemid += 3
		AddPlayerInfo(-1,"item",$itemid,30)
		
	}
