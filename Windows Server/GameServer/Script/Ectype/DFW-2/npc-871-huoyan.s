 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName: ???? 
 //****************************  
//869	????
//870	????
//871	????
//32408	????
//32409	????
//32410	???
function OnRequest(){
	}

function OnOption0(){ 
	
	$ectype_id = GetCurEctypeID()
	$mposx = GetEctypeVar($ectype_id,23)
	$mposy = GetEctypeVar($ectype_id,24)
	$getvar = GetEctypeVar($ectype_id,15)
	#shiban = "Flaming Tablet"
	if $getvar == 0
		$alltask = GetEctypeVar($ectype_id,10)
		$alltask += 1
		SetEctypeVar($ectype_id,10,$alltask)
		SetEctypeVar($ectype_id,15,1)
		$isdoing = GetEctypeVar($ectype_id,17)
		if $isdoing == 0
			SetEctypeVar($ectype_id,17,1)
		endif
		#name = GetPlayerInfo(-1,"name")
		BC("screen","player",-1,#name," is attempting to capture the ",#shiban,"!")
//		BC("screen","player",-1,"|alltask=",$alltask)
		if $alltask >= 3
			DeleteNPC(869,$ectype_id)
			DeleteNPC(870,$ectype_id)
			DeleteNPC(871,$ectype_id)
			//------------------------------
			AddMonsterByFloat(32398,1,$ectype_id,$mposx,$mposy,0)
			BC("screen","map",$ectype_id,"The Exalted Dice appears!")
//			BC("chat","map",$ectype_id,"The Exalted Dice appears!")
			$getvar = GetEctypeVar($ectype_id,5)
			if $getvar == 1
				$mposx -= 3
				$mposy -= 3
				$randomposx = RandomNumber(0,6)
				$randomposy = RandomNumber(0,6)
				$mposx += $randomposx
				$mposy += $randomposy
				AddMonsterByFloat(32398,1,$ectype_id,$mposx,$mposy,0)
				BC("screen","map",$ectype_id,"On the Lucky Platform, the Spiral Chest appears!")
//				BC("chat","map",$ectype_id,"On the Lucky Platform, the Spiral Chest appears!")
			endif
			//------------------------------
		endif
	else
		BC("screen","player",-1,#shiban,"It has been opened already.")
		return
	endif
	
	
	
	
} 