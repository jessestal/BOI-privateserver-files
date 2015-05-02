 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName: 1,2??? 
 //****************************  
 
function OnDead(){ 


	$ectype_id = GetCurEctypeID()
	$key = 7
	$getvar = GetEctypeVar($ectype_id,$key)
	$level = GetEctypeVar($ectype_id,2)
	$Flevel = GetEctypeVar($ectype_id,3)
	$mposx = GetEctypeVar($ectype_id,23)
	$mposy = GetEctypeVar($ectype_id,24)
	$randombuff = RandomNumber(0,1)
	$monsterID_u = 32390 + $randombuff
	$randombuff = RandomNumber(0,1)
	if $randombuff == 0
		$monsterID_b = 32394
	else
		$monsterID_b = 32408
	endif
	$monstusID_u = 246
	$monstusID_b = 248
	
	$mposx *= 100
	$mposx /= 256
	$mposy *= 100
	$mposy /= 256
	
//		BC("chat","player",-1," monsterID_u=",$monsterID_u," monstusID_u=",$monstusID_u," level=",$level," ectype_id=",$ectype_id," mposx=",$mposx," mposy=",$mposy)
	
	if $getvar == 49
		if $Flevel > 0
			AddLevelFieldMonster($monsterID_b,$monstusID_b,$level,$monstusID_b,$Flevel,1,$ectype_id,$mposx,$mposy,0)
		else
			AddLevelMonster($monsterID_b,$monstusID_b,$level,1,$ectype_id,$mposx,$mposy,0)
		endif
		BC("screen","map",$ectype_id,"A large monster appears to be protecting the Exalted Dice! Kill it!")
	endif
	
	$isadd = $getvar % 10
//BC("chat","player",-1,"|isadd=",$isadd,"|getvar=",$getvar)
	if $getvar < 48
		if $isadd == 8
			if $Flevel > 0
				AddLevelFieldMonster($monsterID_u,$monstusID_u,$level,$monstusID_u,$Flevel,10,$ectype_id,$mposx,$mposy,3)
			else
				AddLevelMonster($monsterID_u,$monstusID_u,$level,10,$ectype_id,$mposx,$mposy,3)
			endif
			BC("screen","map",$ectype_id,"More monsters are coming out!")
		endif
	endif
	
	$getvar += 1
	SetEctypeVar($ectype_id,$key,$getvar)
	
} 