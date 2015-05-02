 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName: ????????? 
 //****************************  
 
	function OnUseItem(){ 
		
		$playerid = GetPlayerID()
		$nullitem = GetPlayerInfo($playerid,"nullitem",0)
		if $nullitem < 6
			BC("screen","player",-1,"You need at least 6 empty slots in your bag!")
			return
		endif
//		$nullitem = GetPlayerInfo($playerid,"nullitem",1)
//		if $nullitem < 1
//			BC("screen","player",-1,"GUID:04830000001")
//			return
//		endif
		$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count == 0
			AddPlayerInfo(-1,"item",44601,30)
			AddPlayerInfo(-1,"item",63771,1)
			AddPlayerInfo(-1,"item",59840,2)
			AddPlayerInfo(-1,"item",2468,3)
			AddPlayerInfo(-1,"item",4975,100)
			AddPlayerInfo(-1,"item",4942,100)
		endif
	} 