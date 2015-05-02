 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName:  
 //****************************  
 
	function OnUseItem(){ 
		
		$nullitem = GetPlayerInfo(-1,"nullitem",1)
		if $nullitem < 1
			BC("screen","player",-1,"Insufficient material bag slots!")
			return
		endif
		$itemid = GetItemID()
		$del_count = SubPlayerInfo( -1, "item", $itemid, 1 )
		if $del_count != 0
			return
		endif
		AddPlayerInfo(-1,"item",9,1)
		
	} 
