	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/01
	//		Author:???(??,??,??)
	//		TaskName:???479??1???????
	//		TaskID:DXLM1-CSNPC-Midao-622.s
	//
	//****************************************
	
	function OnRequest(){
		
	}	
	
	function OnOption0(){
	
		//??????ID 479,??51802,????38--0?1?2?
		//????????? 58 ??3????????
		$ectype_id = GetEctypeID(-1, 479)
		$n = GetEctypeVar(-1, 58)
		$is_51802 = GetEctypeVar(-1, 38)
	
		if $n < 3
			$b = 3 - $n
			if $b > 0
				BC("screen", "map", $ectype_id, "The Palace Secret Passage is now guarded by the Guard Captain. Cannot open now!!")
				return
			endif
		else		
		//????NPC??id??????
		$playerid = GetPlayerID()
		$mapid = GetPlayerInfo($playerid, "mapid")
  		if $mapid >= 14851
  			if $mapid <= 15050
  				FlyToMap(-1,$ectype_id,53,106)
  				BC("screen", "map", $ectype_id, "You arrived in the Seal of Balance.")

        		//?BOSS??51802,??38????0??
        		if $is_51802 != 0
        			return
        		else
        			AddMonsterByFloat( 51802, 1, $ectype_id, 136, 273, 0)
        			SetEctypeVar(-1, 38, 1)
        		endif

  				return
  			endif
  		endif
  	endif

		//?????????????????NPC??,????????
		FlyToMap(-1,146,52,35)
		BC("screen","player",-1,"You have triggered the NPC of Pangaea Catacomb outside the Pangaea Catacomb instance. If you have any problems, please contact customer service."

	
		
	}