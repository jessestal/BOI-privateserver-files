 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName: ???? 
 //****************************  
 
function OnDead(){ 
	
	$ectype_id = GetCurEctypeID()
	$mposx = GetEctypeVar($ectype_id,21)
	$mposy = GetEctypeVar($ectype_id,22)
	$key = 9
	$getvar = GetEctypeVar($ectype_id,$key)
	$max = GetEctypeVar($ectype_id,16)
	
	if $getvar < $max
		#name = GetPlayerInfo(-1,"name")
		$getvar += 1
		$left = $max - $getvar
		BC("screen","map",$ectype_id,#name,"You found one of the real rings! Rings left:",$left," / ",$max)
		SetEctypeVar($ectype_id,$key,$getvar)
	endif
	
	if $getvar == $max
			DeleteMonster($ectype_id,32396)
			DeleteMonster($ectype_id,32397)
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
				BC("screen","map",$ectype_id,"The Rapture Chest appeared on the platform!")
//				BC("chat","map",$ectype_id,"The Rapture Chest appeared on the platform!")
			endif
			//------------------------------
	endif
	
	
} 
