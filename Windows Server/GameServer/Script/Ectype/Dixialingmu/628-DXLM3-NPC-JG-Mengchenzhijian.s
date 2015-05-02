	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479???????628
	//		TaskID:DXLM3-NPC-JG-Mengchenzhijian-628.s
	//
	//****************************************

	function OnRequest(){

		//???? ????43-0?1?2?

  	//???????????
  	$is = GetEctypeVar(-1, 43)
  	if $is	>= 1
  		DisableNpcOption(0)
  	endif
	
	}	
	
	function OnOption0(){

		//???? ??id 479,????var 43-0?1?2?, BOSS????-51801 ?????? 51786 ??51785 ???? 51776
		$ectype_id = GetEctypeID(-1, 479)
		$mst_jian_id = 51801
		$is_done = GetEctypeVar(-1, 43)
		$mst_guard = 51786

		//??????
		if $is_done != 0
			BC("dialogbox","player",-1,"Pangaea Sword's godforce is still not free from the seal")
			return
		endif
				
  	//??????????,????,??????? 
  	$headerID = GetTeamHeaderID( -1 )
  	$playerid = GetPlayerID()
  		if $playerid != $headerID
  			BC( "screen", "player", -1, "You are not the Party Leader!" )
  			return
  		endif

		//?????????
		//?????????

		//????51801, ????
		AddMonsterByFloat(51801, 1, $ectype_id, 304, 84, 0, 0 , 90)
		BC( "screen", "map", $ectype_id, "The power of the sword's seal transforms into a spirit. Defeat it to prove you are worthy of the Pangaea Sword.")
		BC("chat","player",-1,"The power of the sword's seal transforms into a spirit. Defeat it to prove you are worthy of the Pangaea Sword.")
		//????
		$n = $n + 1
		SetEctypeVar(-1, 43, $n)

		//????? 
		DeleteMonster($ectype_id, 51785)
		DeleteMonster($ectype_id, 51776)

		//???????? 51786
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 272, 126, 0, 0, 0)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 272, 128, 0, 0, 0)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 272, 130, 0, 0, 0)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 276, 126, 0, 0, 180)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 276, 128, 0, 0, 180)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 276, 130, 0, 0, 180)
				
	//??NPC???2?
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 299, 117, 0, 0, 90)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 305, 117, 0, 0, 90)	
	//??3?
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 299, 122, 0, 0, 270)	
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 302, 122, 0, 0, 270)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 305, 122, 0, 0, 270)	

	//??6?
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 296, 117, 0, 0, 90)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 293, 117, 0, 0, 90)	
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 290, 117, 0, 0, 90)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 296, 122, 0, 0, 270)	
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 293, 122, 0, 0, 270)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 290, 122, 0, 0, 270)	
		
	//???8
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 292, 95, 0, 0, 0)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 292, 93, 0, 0, 0)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 292, 91, 0, 0, 0)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 292, 89, 0, 0, 0)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 292, 87, 0, 0, 0)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 292, 85, 0, 0, 0)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 292, 83, 0, 0, 0)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 292, 81, 0, 0, 0)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 292, 79, 0, 0, 0)
	//????8
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 312, 95, 0, 0, 180)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 312, 93, 0, 0, 180)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 312, 91, 0, 0, 180)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 312, 89, 0, 0, 180)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 312, 87, 0, 0, 180)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 312, 85, 0, 0, 180)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 312, 83, 0, 0, 180)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 312, 81, 0, 0, 180)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 312, 79, 0, 0, 180)


}