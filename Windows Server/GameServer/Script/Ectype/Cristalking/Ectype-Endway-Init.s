	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-7
	//		Author:???
	//		TaskName:???
	//		TaskID:
//561	????
//545	???
//546	???
	//****************************************

	function OnCreate(){



	}

	function InitTimer(){

//		$time = 5
//		SetEctypeTimer(1,$time,"EctypeTimerNormal")
		$time = 5
		SetEctypeTimer(2,$time,"EctypeTimerint")
		$ectype_id = GetEctypeID(-1,546)
//		StartEctypeTimer($ectype_id,1)
		StartEctypeTimer($ectype_id,2)
			
		SetEctypeVar($ectype_id,1,1)
		$yday = GetSystemTime("yday")
		SetEctypeVar($ectype_id,2,$yday)
		$minute = GetSystemTime("minute")
		SetEctypeVar($ectype_id,3,$minute)

//$n = GetRankListValue($type,$rank)
//$type :?????1 ??   2??   3 PK   4??  5 ??  6 ???   								
//$rank :.??		???0??			
		
		$n = GetRankListValue(1,300)
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

	function EctypeTimerint(){

//???
		$ectype_id = GetEctypeID(-1,546)
		$guildid = GetEctypeVar($ectype_id,111)
		$getvar = GetGuildVar($guildid,19)
		
			$guildid = GetEctypeVar($ectype_id,111)
			//????
			$rank = 21
			$key = 301
			while $key <= 320
				$getguildID = GetServerVar($key)
				if $getguildID == $guildid
					$rank = $key - 300
					$key = 320
				endif
				$key = $key + 1
			endwhile
			SetEctypeVar($ectype_id,4,$rank)
//		BC( "chat" , "map" , $ectype_id , "=",$rank)

			//53247	v3.70	???
			AddMonsterByFloat(53247,1,$ectype_id,119,147,0)
			//????
			//53237	v3.70	??????(??) 
//			AddMonsterByFloat(53237,1,$ectype_id,138,130,0)
			
		if $getvar == 0
			BC( "screen" , "map" , $ectype_id , "Eurus has appeared!")
			$xx = 168 * 100
			$xx = $xx / 256
			$yy = 171 * 100
			$yy = $yy / 256
//230	????|EDBOS
//233	????|GD,EDM
//??????????
//53244	??????? 230
//53245	???? 233
				
			$msID = 230
			$msID2 = 233
			$level = GetEctypeVar($ectype_id,5)
			$Fieldlevel = GetEctypeVar($ectype_id,6)
			if $Fieldlevel > 0
				AddLevelFieldMonster(53244,$msID,$level,$msID,$Fieldlevel,1,$ectype_id,$xx,$yy,0)
				AddLevelFieldMonster(53245,$msID2,$level,$msID2,$Fieldlevel,15,$ectype_id,$xx,$yy,20)
			else
				AddLevelMonster(53244,$msID,$level,1,$ectype_id,$xx,$yy,0)
				AddLevelMonster(53245,$msID2,$level,15,$ectype_id,$xx,$yy,20)
			endif
			DeleteNPC(866,-1)
			SetGuildVar($guildid,19,1)
		endif
		if $getvar == 1
			if $rank < 5
				BC( "screen" , "map" , $ectype_id , "The entrance to the Throne of Boreas has appeared!")
				AddNPC(866,-1)
			else
				DeleteNPC(866,-1)
			endif
		endif
		
		
	}
	
	
//	function EctypeTimerNormal(){
//		
////??:11 & 12
//		$ectype_id = GetEctypeID(-1,545)
//		
//		SetEctypeVar($ectype_id,1,1)
//		$yday = GetSystemTime("yday")
//		SetEctypeVar($ectype_id,2,$yday)
//		$minute = GetSystemTime("minute")
//		SetEctypeVar($ectype_id,3,$minute)
//		
//		
//		
//		
//		
//	}