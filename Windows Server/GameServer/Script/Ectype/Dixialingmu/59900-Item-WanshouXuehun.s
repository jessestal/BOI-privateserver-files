	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/04
	//		Author:???(??,??,??)
	//		TaskName:???479??????????
	//		TaskID:59900-Item-WanshouXuehun.s
	//
	//****************************************
	
	function OnUseItem(){
		
	//???? ??id 479 ???? 55 56 57 ?? 51806
	$ectype_id = GetEctypeID(-1, 479)
	$mapid = GetPlayerInfo(-1, "mapid")
	$is_fly_up = GetEctypeVar(-1, 55)
	$is_fly_down = GetEctypeVar(-1, 56)
	$is_call = GetEctypeVar(-1, 57)
	
	if $ectype_id != $mapid
		BC("screen","player",-1,"Blood of Chaos can only be used in Pangaea Catacomb (Ethereal)")
		BC("chat","player",-1,"Blood of Chaos can only be used in Pangaea Catacomb (Ethereal)")
		return
	endif
	
	if $is_call >= 1
		BC("screen","player",-1,"You have already summoned Chiyu today")
		BC("chat","player",-1,"You have already summoned Chiyu today")
		return
	endif 
	
	if $is_fly_up == 0
		BC("screen","player",-1,"Blood of Chaos can only be used in the Observatory in Pangaea Catacomb!")
		BC("chat","player",-1,"You can face Chiyu in the Observatory if you have the Blood of Chaos.")
		return
	endif
	
	if $is_fly_up == 1
		$revaluet = SubPlayerInfo(-1, "item", 59900, 1)
			if $revaluet == 0
				AddMonsterByFloat(51806,1, $ectype_id, 30, 264, 0, 0, 270)
				BC("screen","map",$ectype_id,"The terrible Chiyu has been summoned. Everyone be careful!")
				PlayEffect(0,"common\story\burst\fire\tx_burst_fire1.ini")
				SetEctypeVar(-1, 57, 1)
			endif
	endif
	
//	if $revaluet == 0
//		if $is_fly_down == 1
//			AddMonsterByFloat(51806, 1, $ectype_id, 193,268,0)
//			BC("screen","map",$ectype_id,"The terrible Chiyu has been summoned. Everyone be careful!")
//			PlayEffect(0,"common\story\burst\fire\tx_burst_fire1.ini")
//			SetEctypeVar(-1, 57, 1)
//		endif
//	endif
	
	
	
	
}