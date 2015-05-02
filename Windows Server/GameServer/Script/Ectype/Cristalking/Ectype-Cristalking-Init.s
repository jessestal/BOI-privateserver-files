	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-7
	//		Author:???
	//		TaskName:????
	//		TaskID:
//561	????
//545	???
//546	???
	//****************************************

	function OnCreate(){



	}

	function InitTimer(){

		$time1 = 5
		SetEctypeTimer(1,$time1,"EctypeTimer1")
		$ectype_id = GetEctypeID(-1,561)
		StartEctypeTimer($ectype_id,1)
		
		SetEctypeVar($ectype_id,1,1)
		$yday = GetSystemTime("yday")
		SetEctypeVar($ectype_id,2,$yday)
		$minute = GetSystemTime("minute")
		SetEctypeVar($ectype_id,3,$minute)
		
		$n = GetRankListValue(1,399)
		$n = $n / 10
		$n = $n * 10
		if $n < 70
			$n = 70
		endif
		if $n >= 120
			SetEctypeVar($ectype_id,6,20)
		endif
		SetEctypeVar($ectype_id,5,$n)
		
		
	}

	function EctypeTimer1(){
//???
		$ectype_id = GetEctypeID(-1,561)
//		BC( "screen" , "map" , $ectype_id , "GUID:03847000000" , $ectype_id )
		
		$getvar = GetGlobalVar(137)
		if $getvar == 1
			
			SetGlobalVar(137,2)
			
			BC( "screen" , "map" , $ectype_id , "The Four Eidolons have appeared.")
			//????
			AddMonsterByFloat(53224,1,$ectype_id,164,98,0)
			//???? 
			AddMonsterByFloat(53231,1,$ectype_id,72,157,0)
			AddMonsterByFloat(53232,1,$ectype_id,72,170,0)
			
			AddMonsterByFloat(53230,1,$ectype_id,248,158,0)
			AddMonsterByFloat(53229,1,$ectype_id,248,170,0)
			
//53229	v3.70	?????(??)
//53230	v3.70	?????(??)
//53231	v3.70	?????(??)
//53232	v3.70	?????(??)

			
			OpenMask(1,$ectype_id)
			OpenMask(2,$ectype_id)
			
			SetEctypeVar($ectype_id,21,1000)
			SetEctypeVar($ectype_id,22,1000)
			SetEctypeVar($ectype_id,23,1000)
			SetEctypeVar($ectype_id,24,1000)
			SetEctypeVar($ectype_id,25,1000)
			
//231	????|4EMTBOS
//233	????|GD,EDM
//boss 231
//?? 233
			$msID = 231
			$msID2 = 233
			
			
			$xx1 = 208 * 100
			$xx1 = $xx1 / 256
			$yy1 = 202 * 100
			$yy1 = $yy1 / 256
			
			$xx2 = 214 * 100
			$xx2 = $xx2 / 256
			$yy2 = 126 * 100
			$yy2 = $yy2 / 256
			
			$xx3 = 113 * 100
			$xx3 = $xx3 / 256
			$yy3 = 126 * 100
			$yy3 = $yy3 / 256
			
			$xx4 = 119 * 100
			$xx4 = $xx4 / 256
			$yy4 = 201 * 100
			$yy4 = $yy4 / 256
			
			$level = GetEctypeVar($ectype_id,5)
			$Fieldlevel = GetEctypeVar($ectype_id,6)
			if $Fieldlevel > 0
				AddLevelFieldMonster(53225,$msID,$level,$msID,$Fieldlevel,1,$ectype_id,$xx1,$yy1,0)
				AddLevelFieldMonster(53226,$msID,$level,$msID,$Fieldlevel,1,$ectype_id,$xx2,$yy2,0)
				AddLevelFieldMonster(53227,$msID,$level,$msID,$Fieldlevel,1,$ectype_id,$xx3,$yy3,0)
				AddLevelFieldMonster(53228,$msID,$level,$msID,$Fieldlevel,1,$ectype_id,$xx4,$yy4,0)
				AddLevelFieldMonster(53233,$msID2,$level,$msID2,$Fieldlevel,20,$ectype_id,$xx1,$yy1,10)
				AddLevelFieldMonster(53234,$msID2,$level,$msID2,$Fieldlevel,20,$ectype_id,$xx2,$yy2,10)
				AddLevelFieldMonster(53235,$msID2,$level,$msID2,$Fieldlevel,20,$ectype_id,$xx3,$yy3,10)
				AddLevelFieldMonster(53236,$msID2,$level,$msID2,$Fieldlevel,20,$ectype_id,$xx4,$yy4,10)
			else
				AddLevelMonster(53225,$msID,$level,1,$ectype_id,$xx1,$yy1,0)
				AddLevelMonster(53226,$msID,$level,1,$ectype_id,$xx2,$yy2,0)
				AddLevelMonster(53227,$msID,$level,1,$ectype_id,$xx3,$yy3,0)
				AddLevelMonster(53228,$msID,$level,1,$ectype_id,$xx4,$yy4,0)
				AddLevelMonster(53233,$msID2,$level,20,$ectype_id,$xx1,$yy1,10)
				AddLevelMonster(53234,$msID2,$level,20,$ectype_id,$xx2,$yy2,10)
				AddLevelMonster(53235,$msID2,$level,20,$ectype_id,$xx3,$yy3,10)
				AddLevelMonster(53236,$msID2,$level,20,$ectype_id,$xx4,$yy4,10)
			endif
			DeleteNPC(865,-1)
		endif
		
	}
