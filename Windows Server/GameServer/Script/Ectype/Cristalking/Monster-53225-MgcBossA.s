	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-8
	//		Author:???
	//		TaskName:????
	//		TaskID:
	//
	//****************************************

	function OnDead(){
		
//53225	???????
//53226	???????
//53227	???????
//53228	???????

		$ectype_id = GetEctypeID(-1, 561)
		$playerid = GetPlayerID()

		$medead = GetEctypeVar($ectype_id,11)
		
		if $medead == 0
			
			$xx1 = 205
			$yy1 = 202
			AddMonsterByFloat(53242,1,$ectype_id,$xx1,$yy1,0)
			$xx1 = 211
			$yy1 = 203
			AddMonsterByFloat(53242,1,$ectype_id,$xx1,$yy1,0)
			$xx1 = 215
			$yy1 = 203
			AddMonsterByFloat(53242,1,$ectype_id,$xx1,$yy1,0)
			
			BC("screen","map",$ectype_id,"Winter's Eidolon has been vanquished! Cardinal Treasures have appeared!")
			BC("chat","map",$ectype_id,"Winter's Eidolon has been vanquished! Cardinal Treasures have appeared!")
			
			$dead = GetEctypeVar($ectype_id,15)
			$dead += 1
			SetEctypeVar($ectype_id,15,$dead)
			SetEctypeVar($ectype_id,11,1)
			
			if $dead >= 4
				$xx1 = 164 * 100
				$xx1 = $xx1 / 256
				$yy1 = 153 * 100
				$yy1 = $yy1 / 256
				
				$msID = 232
				$level = GetEctypeVar($ectype_id,5)
				$Fieldlevel = GetEctypeVar($ectype_id,6)
				if $Fieldlevel > 0
					AddLevelFieldMonster(53241,$msID,$level,$msID,$Fieldlevel,1,$ectype_id,$xx1,$yy1,0)
				else
					AddLevelMonster(53241,$msID,$level,1,$ectype_id,$xx1,$yy1,0)
				endif
				
				BC("messagebox","map",$ectype_id,"All of the Eidolons have been vanquished! Cardinal Treasures have appeared!")
				BC("screen","map",$ectype_id,"All of the Eidolons have been vanquished! Cardinal Treasures have appeared!")
				BC("chat","map",$ectype_id,"All of the Eidolons have been vanquished! Cardinal Treasures have appeared!")
			endif

		endif
		
	}