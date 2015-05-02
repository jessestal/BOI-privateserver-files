 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName:  
 //****************************  
 
	function OnUseItem(){ 
		
	//85	???????++
	//86	?????????
	//87	?????????++
	
	//33	????
	//34	????**
	//35	????(???)
	//36	????(???)**
	//37	????(???)**
		$playerid = GetPlayerID()
		$getvar85 = GetGlobalVar(85)
		$getvar86 = GetGlobalVar(86)
		$getvar87 = GetGlobalVar(87)
		$allcard = $getvar86 + $getvar87
//80*(?????+2)^2
		$cnt = $getvar85 + 2
		$cnt *= $cnt
		$cnt *= 80
//		BC("chat","player",-1,"getvar86=",$getvar86,"  getvar87=",$getvar87)
//		BC("chat","player",-1,"allcard=",$allcard,"  cnt=",$cnt)
		if $allcard == $cnt
			ReqAward($playerid,36,1)
			$getvar85 += 1
			SetGlobalVar(85,$getvar85)
		else
			if $getvar87 == 2000
				ReqAward($playerid,37,1)
			else
				ReqAward($playerid,34,1)
			endif
		endif
		$getvar87 += 1
		SetGlobalVar(87,$getvar87)
		BC("screen","player",-1,"You opened the Snow Bear Christmas Card.")
	} 