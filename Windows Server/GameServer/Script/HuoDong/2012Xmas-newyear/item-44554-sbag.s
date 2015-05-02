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
	if $nullitem < 1
		BC("screen","player",-1,"Insufficient bag slots!")
		return
	endif
	
	$res = SubPlayerInfo(-1,"item",44554,1)
	if $res == 0
		BC("screen","player",-1,"You opened the Christmas Gift Sack.")
		$randomnuff = RandomNumber(1,4)
		if $randomnuff == 1
			AddPlayerInfo(-1,"givepoint",500)
		endif
		if $randomnuff == 2
//		?????
			AddPlayerInfo(-1,"item",59838,1)
		endif
		if $randomnuff == 3
			AddPlayerInfo(-1,"item",9,1)
		endif
		if $randomnuff == 4
//44093	???????
			AddPlayerInfo(-1,"item",44093,2)
		endif
	endif

} 
