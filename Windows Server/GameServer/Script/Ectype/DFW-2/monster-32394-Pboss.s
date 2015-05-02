 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName: 5??boss 
 //****************************  
 
function OnDead(){ 
	
	$ectype_id = GetCurEctypeID()
	$mposx = GetEctypeVar($ectype_id,23)
	$mposy = GetEctypeVar($ectype_id,24)

	DeleteMonster($ectype_id,32407)
	//------------------------------
	AddMonsterByFloat(32398,1,$ectype_id,$mposx,$mposy,0)
	BC("screen","map",$ectype_id,"The Exalted Dice appears!")
//	BC("chat","map",$ectype_id,"The Exalted Dice appears!")
	$getvar = GetEctypeVar($ectype_id,5)
	if $getvar == 1
		$mposx -= 3
		$mposy -= 3
		$randomposx = RandomNumber(0,6)
		$randomposy = RandomNumber(0,6)
		$mposx += $randomposx
		$mposy += $randomposy
		AddMonsterByFloat(32400,1,$ectype_id,$mposx,$mposy,0)
		BC("screen","map",$ectype_id,"On the Lucky Platform, the Spiral Chest appears!")
//		BC("chat","map",$ectype_id,"On the Lucky Platform, the Spiral Chest appears!")
	endif
	//------------------------------
	
	
	
} 
