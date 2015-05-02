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
		$res = SubPlayerInfo(-1,"item",44580,1)
		if $res == 0
			AddPlayerInfo(-1,"item",44583,30)
			AddPlayerInfo(-1,"item",63771,1)
			AddPlayerInfo(-1,"item",59840,2)
			AddPlayerInfo(-1,"item",2468,3)
			AddPlayerInfo(-1,"item",4975,100)
			AddPlayerInfo(-1,"item",4942,100)
		endif
	} 