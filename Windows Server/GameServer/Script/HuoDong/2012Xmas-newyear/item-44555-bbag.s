 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName:  
 //****************************  
function OnRequest(){ 
} 
function OnOption0(){ 
} 
function OnUseItem(){ 
	
	$nullitem = GetPlayerInfo(-1,"nullitem",0)
	if $nullitem < 2
		BC("screen","player",-1,"You need at least 2 empty slots in your bag!")
		return
	endif
	
//44093	???????
	$res = SubPlayerInfo(-1,"item",44555,1)
	if $res == 0
		BC("screen","player",-1,"You opened the Christmas Gift Pack.")
		AddPlayerInfo(-1,"givepoint",5000)
		AddPlayerInfo(-1,"item",9,5)
		AddPlayerInfo(-1,"item",44093,5)
	endif
	
} 
