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
			BC("screen","player",-1,"You need at least 7 empty slots in your bag!")
			return
		endif
		$nullitem = GetPlayerInfo($playerid,"nullitem",1)
		if $nullitem < 1
			BC("screen","player",-1,"Insufficient material bag slots!")
			return
		endif
		$res = SubPlayerInfo(-1,"item",44581,1)
		if $res == 0
			AddPlayerInfo(-1,"item",44584,30)
			AddPlayerInfo(-1,"item",63771,1)
			AddPlayerInfo(-1,"item",59840,5)
			AddPlayerInfo(-1,"item",9,100)
			AddPlayerInfo(-1,"item",2221,50)
			AddPlayerInfo(-1,"item",2468,6)
			AddPlayerInfo(-1,"item",4975,200)
			AddPlayerInfo(-1,"item",4942,200)
		endif

	} 