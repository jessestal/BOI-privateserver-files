 //****************************  
 //  Copyright：PERFECT WORLD  
 //  Modified：2012  
 //  Author：胡斌涛  
 //  TaskName： 白银玩家回归大礼包 
 //****************************  
 
 
	function OnUseItem(){ 
		
		$playerid = GetPlayerID()
		$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count != 0
			return
		endif
		AddPlayerInfo(-1,"money",100)

	} 