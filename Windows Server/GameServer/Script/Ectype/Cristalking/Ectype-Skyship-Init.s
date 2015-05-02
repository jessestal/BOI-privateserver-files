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

		$ectype_id = GetEctypeID(-1,545)



	}

	function InitTimer(){

		$time = 1
		SetEctypeTimer(1,$time,"EctypeTimerNormal")

		$ectype_id = GetEctypeID(-1,545)
		StartEctypeTimer($ectype_id,1)
		
		$yday = GetSystemTime("yday")
		SetEctypeVar($ectype_id,2,$yday)
		$minute = GetSystemTime("minute")
		SetEctypeVar($ectype_id,3,$minute)
			
		SetEctypeVar($ectype_id,1,1)
		
		SetEctypeVar($ectype_id,21,32)
		SetEctypeVar($ectype_id,22,32)
		
		SetEctypeVar($ectype_id,19,1)
		SetEctypeVar($ectype_id,20,1)
		
//		53215	v3.70	??????
		AddMonsterByFloat(53215,1,$ectype_id,76,81,0,0)
//		53238	v3.70	??????(??) 
		AddMonsterByFloat(53238,1,$ectype_id,38,81,0,0)
		AddMonsterByFloat(53238,1,$ectype_id,114,81,0,0)
		
		
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
		
//53216	??????ú?
//53217	??????ú?
//228	????|A,LK
//229	????|B,MG

		$monsterID = 53216
		$msID = 228
		$posx = 64
		$posy = 55
		call Pos_Trans()
//		AddMonster($monsterID,8,$ectype_id,$posx,$posy,2)
		$posx = 64
		$posy = 65
		call Pos_Trans()
//		AddMonster($monsterID,8,$ectype_id,$posx,$posy,2)
		$posx = 94
		$posy = 55
		call Pos_Trans()
//		AddMonster($monsterID,8,$ectype_id,$posx,$posy,2)
		$posx = 94
		$posy = 65
		call Pos_Trans()
//		AddMonster($monsterID,8,$ectype_id,$posx,$posy,2)
		
		$monsterID = 53217
		$msID = 229
		$posx = 61
		$posy = 99
		call Pos_Trans()
//		AddMonster($monsterID,8,$ectype_id,$posx,$posy,2)
		$posx = 61
		$posy = 113
		call Pos_Trans()
//		AddMonster($monsterID,8,$ectype_id,$posx,$posy,2)
		$posx = 92
		$posy = 99
		call Pos_Trans()
//		AddMonster($monsterID,8,$ectype_id,$posx,$posy,2)
		$posx = 92
		$posy = 113
		call Pos_Trans()
//		AddMonster($monsterID,8,$ectype_id,$posx,$posy,2)

//OpenMask(2,$ectype_id)


	}

	function EctypeTimerNormal(){
		
//??:11 & 12
		$ectype_id = GetEctypeID(-1,545)
		
		$minute = GetSystemTime("minute")
		SetEctypeVar($ectype_id,3,$minute)
		
		$guildid_A = GetEctypeVar($ectype_id,111)
		$point_A = GetEctypeVar($ectype_id,113)
		
		$guildid_B = GetEctypeVar($ectype_id,112)
		$point_B = GetEctypeVar($ectype_id,114)
		
		
		$getvar = GetGlobalVar(137)
		if $getvar == 0

			//----------------------------------
			$count = GetEctypeVar($ectype_id,0)
			if $count == 1
				$count = 2
			else
				$count = 1
			endif
			SetEctypeVar($ectype_id,0,$count)
			
			if $count == 1
				if $point_A > 0
					$guildid = $guildid_A
					$point = $point_A
					SetGuildVar($guildid,12,$point)
					call Rank()
				endif
			endif
			
			if $count == 2
				if $point_B > 0
					$guildid = $guildid_B
					$point = $point_B
					SetGuildVar($guildid,12,$point)
					call Rank()
				endif
			endif
			
			//----------------------------------
				$rank_A = 21
				$rank_B = 21
				$key = 301
				while $key <= 320
					$getguildID = GetServerVar($key)
					if $getguildID > 0
						if $getguildID == $guildid_A
							$rank_A = $key - 300
						endif
						if $getguildID == $guildid_B
							$rank_B = $key - 300
						endif
					endif
					$key = $key + 1
				endwhile
				SetEctypeVar($ectype_id,13,$rank_A)
				SetEctypeVar($ectype_id,14,$rank_B)
			//----------------------------------
//			BC("screen","map",$ectype_id,"GUID:03849000000",$count)
			StartEctypeTimer($ectype_id,1)

		else
		
			$count = GetEctypeVar($ectype_id,0)
			//----------------------------------count = 4
			if $count == 4
//			BC("screen","map",$ectype_id,"GUID:03849000001",$count)
				$rank_A = 21
				$rank_B = 21
				$key = 301
				while $key <= 320
					$getguildID = GetServerVar($key)
					if $getguildID > 0
						if $getguildID == $guildid_A
							$rank_A = $key - 300
						endif
						if $getguildID == $guildid_B
							$rank_B = $key - 300
						endif
					endif
					$key = $key + 1
				endwhile
				SetEctypeVar($ectype_id,13,$rank_A)
				SetEctypeVar($ectype_id,14,$rank_B)
			//----------------------------------
				SetEctypeVar($ectype_id,1,9)
				if $point_A > $point_B
					SetGuildVar($guildid_A,18,1)
					SetGuildVar($guildid_B,18,0)
					#gname = GetGuildName($guildid_A)
					$gidwin = GetServerVar(301)
					#gnamewin = GetGuildName($gidwin)
					BC("messagebox","map",$ectype_id,"The Zephyr has landed! The victor of this match is ",#gname,". The top 8 Guilds are qualified to take part in Eurus' Wasteland.")
					BC("chat","map",$ectype_id,"The Zephyr has landed! The victor of this match is ",#gname,". The top 8 Guilds are qualified to take part in Eurus' Wasteland.")
	//				BC("messagebox","map",$ectype_id,"GUID:03849000006",#gnamewin,"GUID:03849000007",#gname,". The top 8 Guilds are qualified to take part in Eurus' Wasteland.")
	//				BC("chat","map",$ectype_id,"GUID:03849000009",#gnamewin,"GUID:03849000010",#gname,". The top 8 Guilds are qualified to take part in Eurus' Wasteland.")
					return
				endif
				if $point_B > $point_A
					SetGuildVar($guildid_A,18,0)
					SetGuildVar($guildid_B,18,1)
					#gname = GetGuildName($guildid_B)
					$gidwin = GetServerVar(301)
					#gnamewin = GetGuildName($gidwin)
					BC("messagebox","map",$ectype_id,"The Zephyr has landed! The victor of this match is ",#gname,". The top 8 Guilds are qualified to take part in Eurus' Wasteland.")
					BC("chat","map",$ectype_id,"The Zephyr has landed! The victor of this match is ",#gname,". The top 8 Guilds are qualified to take part in Eurus' Wasteland.")
	//				BC("messagebox","map",$ectype_id,"GUID:03849000016",#gnamewin,"GUID:03849000017",#gname,". The top 8 Guilds are qualified to take part in Eurus' Wasteland.")
	//				BC("chat","map",$ectype_id,"GUID:03849000019",#gnamewin,"GUID:03849000020",#gname,". The top 8 Guilds are qualified to take part in Eurus' Wasteland.")
					return
				endif
			endif
			//----------------------------------count = 3
			if $count == 3
//			BC("screen","map",$ectype_id,"GUID:03849000022",$count)
				$count = 4
				if $point_A > 0
					$guildid = $guildid_A
					$point = $point_A
					SetGuildVar($guildid,12,$point)
					call Rank()
				endif
				StartEctypeTimer($ectype_id,1)
			endif
			//----------------------------------count = 1/2
			if $count < 3
//			BC("screen","map",$ectype_id,"GUID:03849000023",$count)
				$count = 3
				if $point_B > 0
					$guildid = $guildid_B
					$point = $point_B
					SetGuildVar($guildid,12,$point)
					call Rank()
				endif
				StartEctypeTimer($ectype_id,1)
			endif
			//----------------------------------count - save
			SetEctypeVar($ectype_id,0,$count)
		endif
		
		

		

		
		
	}
	
	
	function Rank(){
//$guildid
//$point

		//???????
		$key_id = 301
		$temp_rank = 321
		while $key_id <= 320
			$rank_gid = GetServerVar($key_id)
			if $guildid == $rank_gid
				$temp_rank = $key_id
			endif
			$key_id += 1
		endwhile
		//????????,?????
		if $temp_rank == 301
			$getsetpoint = GetServerVar(321)
			if $getsetpoint < $point
				SetServerVar(321,$point)
//BC("chat","map",$ectype_id,"setvar(",321,")=",$point)
			endif
		endif
		//???????????????
		$key_pt = $temp_rank + 19
		while $key_pt >= 321
			$rank_point = GetServerVar($key_pt)
			$key_id = $key_pt - 20
			$rank_gid = GetServerVar($key_id)
			if $point > $rank_point
				//???????,????????
				SetServerVar($key_pt,$point)
//BC("chat","map",$ectype_id,"2setvar(",$key_pt,")=",$point)
				SetServerVar($key_id,$guildid)
//BC("chat","map",$ectype_id,"3setvar(",$key_id,")=",$guildid)
				//???????20?,?????????,??????
				if $key_pt < 340
					$key_set_pt = $key_pt + 1
					$key_set_id = $key_id + 1
					SetServerVar($key_set_pt,$rank_point)
//BC("chat","map",$ectype_id,"4setvar(",$key_set_pt,")=",$rank_point)
					SetServerVar($key_set_id,$rank_gid)
//BC("chat","map",$ectype_id,"5setvar(",$key_set_id,")=",$rank_gid)
				endif
			else
				//????????
				//???????20?,??????,???????
				//????
				if $key_pt < 340
					$key_set_pt = $key_pt + 1
					$getsetpoint = GetServerVar($key_set_pt)
					if $getsetpoint < $point
						SetServerVar($key_set_pt,$point)
//BC("chat","map",$ectype_id,"6setvar(",$key_set_pt,")=",$point)
					endif
				endif
				$key_pt = 321
			endif
			$key_pt -= 1
		endwhile
//BC("chat","map",$ectype_id,"**************")
		
		
	}
	
	
	function Pos_Trans(){
		
		$posx = $posx + 1
		$posy = $posy + 1
		$posx = $posx * 100
		$posx = $posx / 256
		$posy = $posy * 100
		$posy = $posy / 256

			
			$level = GetEctypeVar($ectype_id,5)
			$Fieldlevel = GetEctypeVar($ectype_id,6)
			if $Fieldlevel > 0
				AddLevelFieldMonster($monsterID,$msID,$level,$msID,$Fieldlevel,8,$ectype_id,$posx,$posy,2)
			else
				AddLevelMonster($monsterID,$msID,$level,8,$ectype_id,$posx,$posy,2)
			endif
		
	}