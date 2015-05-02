	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:NPC????
	//		TaskID:
	//
	//****************************************
	
	function OnRequest(){
	//???? ??id 479 ???? 55
	$ectype_id = GetEctypeID(-1, 479)
	$is_fly = GetEctypeVar(-1, 55)
	
	if $is_fly == 0
		DisableNpcOption(2)
	else
		DisableNpcOption(1)
	endif

}
	
	function OnOption0(){

		//????NPC??id??????
		$playerid = GetPlayerID()
		$mapid = GetPlayerInfo($playerid, "mapid")
		if $mapid >= 14851
			if $mapid <= 15050		
				FlyToMap(-1, 119, 100, 50)
				return
			endif
		endif
		
		//?????????????????NPC??,????????
		FlyToMap(-1,146,52,35)
		BC("screen","player",-1,"You have triggered the NPC of Pangaea Catacomb outside the Pangaea Catacomb instance. If you have any problems, please contact customer service."		
	}
	
	function OnOption1(){
		
	//???? ??id 479 ???? 59900 ?????? 55
	$ectype_id = GetEctypeID(-1, 479)
	$item = 59900
	$is_get = GetPlayerInfo(-1,"item",$item )
	$size = GetTeamAreaSize(-1)

	if $is_get < 1
		BC("dialogbox","player",-1,"You require a Blood of Chaos to enter the Observatory.") 
		return
	endif
	
	
	if $size > 10
		BC( "dialogbox", "player", -1, "Your party members are too far away!" )
		return
	endif

	MapPlayerFlyToMap($ectype_id,$ectype_id, 11, 92)
	BC("screen","map",$ectype_id,"You have arrived in the Observatory. Use the Blood of Chaos inside to summon the terrible Chiyu.") 
	
	SetEctypeVar(-1, 55, 1)
		
	
}

	function OnOption2(){
		
	//???? ??id 479 
	$ectype_id = GetEctypeID(-1, 479)

		//????NPC??id??????
		$playerid = GetPlayerID()
		$mapid = GetPlayerInfo($playerid, "mapid")
		if $mapid >= 14851
			if $mapid <= 15050	
      	FlyToMap(-1, $ectype_id, 11, 92)
      	BC("screen","player",-1,"You have been teleported back to the doorway of Astrology Room") 
				return
			endif
		endif
		
		//?????????????????NPC??,????????
		FlyToMap(-1,146,52,35)
		BC("screen","player",-1,"You have triggered the NPC of Pangaea Catacomb outside the Pangaea Catacomb instance. If you have any problems, please contact customer service."		
      	
}