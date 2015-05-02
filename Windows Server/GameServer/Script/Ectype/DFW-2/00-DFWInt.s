	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2012-12
	//		Author:???
	//		TaskName:????2?
	//		TaskID:mapid = 568
	//****************************************

	function OnCreate(){

	

	}

	function InitTimer(){
		
		$time = 2
		SetEctypeTimer(1,$time,"Int")
		$time = 3
		SetEctypeTimer(2,$time,"NormalTimer")
		$time = 5
		SetEctypeTimer(3,$time,"DiceTimer")
		$time = 5 
		SetEctypeTimer(4,$time,"MoveTimer")

	}

	function Int(){
//???
		$ectype_id = GetCurEctypeID()
		AddNpcByPos(2342,$ectype_id,52,289,7200,0)
		AddMonsterByFloat(32399,1,$ectype_id,52,289,0)
		
		
		
		
		
		
		SetEctypeVar($ectype_id,1,1)
		SetEctypeVar($ectype_id,4,1)
		SetEctypeVar($ectype_id,30,1)
		BC("screen","map",$ectype_id,"Welcome to the Pursuit of Rapture! Your adventure will start now!")
		
	}

	function NormalTimer(){
//????
		
		call Rank2()
//		call Rank()
//		call Rank()
//		call Rank()
//		call Rank()
		
		$ectype_id = GetCurEctypeID()
		$key2 = 111
		$key = 31
		$skey2 = 371
		$skey = 379
		while $key <= 38
			$getvar = GetServerVar($skey)
			SetEctypeVar($ectype_id,$key,$getvar)
			$getvar2 = GetServerVar($skey2)
			SetEctypeVar($ectype_id,$key2,$getvar2)
//			BC("chat","map",$ectype_id,"|getvar(",$skey2,")=",$getvar2,"|getvar(",$skey,")=",$getvar)
			$key += 1
			$skey += 1
			$key2 += 1
			$skey2 += 1
		endwhile
		
		StartEctypeTimer($ectype_id,2)
//		BC("screen","map",$ectype_id,"GUID:03879000001")
		
	}
	
	function DiceTimer(){
//????
		$ectype_id = GetCurEctypeID()
		$mposx = GetEctypeVar($ectype_id,23)
		$mposy = GetEctypeVar($ectype_id,24)
		$fposx = GetEctypeVar($ectype_id,21)
		$fposy = GetEctypeVar($ectype_id,22)
		$dice = GetEctypeVar($ectype_id,12)
		$event = GetEctypeVar($ectype_id,6)
		$stage = GetEctypeVar($ectype_id,4)
		
		if $event == 5
			if $dice == 1
				SetEctypeVar($ectype_id,12,1)
				SetEctypeVar($ectype_id,6,99)
				BC("screen","map",$ectype_id,"The Exalted Dice rolled a 1! The door ahead will open now!")
				BC("chat","map",$ectype_id,"The Exalted Dice rolled a 1! The door ahead will open now!")
				StartEctypeTimer($ectype_id,4)
			else
				AddMonsterByFloat(32398,1,$ectype_id,$mposx,$mposy,0)
				BC("screen","map",$ectype_id,"Sorry, the Exalted Dice didn't stop at 1! Try again.")
				BC("chat","map",$ectype_id,"Sorry, the Exalted Dice didn't stop at 1! Try again.")
			endif
		else
			BC("screen","map",$ectype_id,"The Exalted Dice rolled a ",$dice,"! You will be moved shortly.")
			BC("chat","map",$ectype_id,"The Exalted Dice rolled a ",$dice,"! You will be moved shortly.")
			StartEctypeTimer($ectype_id,4)
		endif
		
	}
	
	function MoveTimer(){
//????
		$ectype_id = GetCurEctypeID()
		$mposx = GetEctypeVar($ectype_id,23)
		$mposy = GetEctypeVar($ectype_id,24)
		$fposx = GetEctypeVar($ectype_id,21)
		$fposy = GetEctypeVar($ectype_id,22)
		$dice = GetEctypeVar($ectype_id,12)
		$event = GetEctypeVar($ectype_id,6)
		$stage = GetEctypeVar($ectype_id,4)
		SetEctypeVar($ectype_id,30,$stage)
		
		$fposx *= 100
		$fposx /= 256
		$fposy *= 100
		$fposy /= 256
		MapPlayerFlyToMap($ectype_id,$ectype_id,$fposx,$fposy,0)
		
//		BC("chat","map",$ectype_id,"|ectype_id=",$ectype_id,,"|stage=",$stage,"|fposx=",$fposx,"|fposy=",$fposy)
		SetEctypeVar($ectype_id,6,0)
		SetEctypeVar($ectype_id,1,1)
		BC("screen","map",$ectype_id,"Keep moving! The party has reached Platform ",$stage," now.")
		BC("chat","map",$ectype_id,"Keep moving! The party has reached Platform ",$stage," now.")
		
		
		$fastistSTAGE = GetServerVar(368)
		if $stage > $fastistSTAGE
			SetServerVar(368,$stage)
			$head = GetEctypeVar($ectype_id,110)
			#name = GetPlayerInfo($head,"name")
			BC("screen","server",-1,"The player, ",#name,"'s team has arrived Platform",$stage,"!")
		endif
		
	}
	

	
	function Rank2(){
		
		$ectype_id = GetCurEctypeID()
		$guildid = GetEctypeVar($ectype_id,110)
		$point = GetEctypeVar($ectype_id,30)
		
//371	?1????ID
//376	?1??????
//5 ?5???
		
		$rankstart = 371
		$pointstart = 379
		$allrank = 8
		
		$allrankD = $allrank - 1
		$rankend = $rankstart + $allrankD
		$pointend = $pointstart + $allrankD
		//???????
		$key_id = $rankstart
		$temp_rank = $rankend + 1
		while $key_id <= $rankend
			$rank_gid = GetServerVar($key_id)
			if $guildid == $rank_gid
				$temp_rank = $key_id
			endif
			$key_id += 1
		endwhile
		//?????????,?????
		if $temp_rank == $rankstart
			$getsetpoint = GetServerVar($pointstart)
			if $getsetpoint < $point
				SetServerVar($pointstart,$point)
			endif
		endif
		//???????????????,????
		$turerank = $temp_rank - $rankstart
		$key_pt = $pointstart + $turerank
		$key_pt -= 1
		while $key_pt >= $pointstart
			$rank_point = GetServerVar($key_pt)
			$turerank_key = $key_pt - $pointstart
			$key_id = $rankstart + $turerank_key
			$rank_gid = GetServerVar($key_id)
			if $point > $rank_point
				//???????,????????
				SetServerVar($key_pt,$point)
				SetServerVar($key_id,$guildid)
				//???????20?,?????????,??????
				if $key_pt < $pointend
					$key_set_pt = $key_pt + 1
					$key_set_id = $key_id + 1
					SetServerVar($key_set_pt,$rank_point)
					SetServerVar($key_set_id,$rank_gid)
				endif
			else
				//????????
				//???????20?,??????,???????
				//????
				if $key_pt < $pointend
					$key_set_pt = $key_pt + 1
					$getsetpoint = GetServerVar($key_set_pt)
					if $getsetpoint < $point
						SetServerVar($key_set_pt,$point)
					endif
				endif
				$key_pt = $pointstart
			endif
			$key_pt -= 1
		endwhile
		
		
	}
	
	
	