 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName:  
 //****************************  
	function OnUseItem(){ 
		
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 3
			BC("screen","player",-1,"You need at least 4 empty slots in your bag!")
			return
		endif
//44093	???????
//59141	?????
//44096	??????
//44246	???
		
		$res = SubPlayerInfo(-1,"item",44570,1)
		if $res == 0
			BC("screen","player",-1,"You opened the New Year Festival Giftbox.")
			AddPlayerInfo(-1,"item",44093,4)
			AddPlayerInfo(-1,"item",59141,1)
			AddPlayerInfo(-1,"item",44096,2)
			AddPlayerInfo(-1,"item",44246,2)
		endif
		
	} 