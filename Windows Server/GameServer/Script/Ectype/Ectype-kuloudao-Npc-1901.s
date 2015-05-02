	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/02
	//		Author:??
	//		TaskName:Ectype-Npc-kuloudao1901.s
	//		TaskID:???NPC??
	//
	//****************************************
	//
	function OnRequest(){
		
	//????????,?????????
		$is_kill = GetEctypeVar(-1 ,2)
	//???????,??????
		$is_add = GetEctypeVar(-1 ,5)
		if $is_add == 1
			//????????????
			DisableNpcOption(1)
		endif
		if $is_kill == 0
			//???????????
			DisableNpcOption(0)
		endif
		

	}
	
	//??????
	function OnOption0(){
		
		$ectype_ID = GetEctypeID(-1 ,222)
		FlyToMap( -1, $ectype_ID, 65, 71 )

	}
	
	//?????
	function OnOption1(){
		$ectype_ID = GetEctypeID(-1 ,222)
		$ectype_type = GetEctypeVar(-1 ,0)
		if $ectype_type == 0
			SetEctypeVar(-1 ,5 , 1)
			AddMonster( 51112, 1, $ectype_ID, 65, 87,  0 )
			BC("screen", "map", $ectype_ID, "Marcell: We see how strong you really are, now!")
		else
			if  $ectype_type == 1
				SetEctypeVar(-1 ,5 , 1)
				AddMonster( 51132, 1, $ectype_ID, 65, 87, 0 )
				BC("screen", "map", $ectype_ID, "Marcell: We see how strong you really are, now!")
			else
				SetEctypeVar(-1 ,5 , 1)
				AddMonster( 51452, 1, $ectype_ID, 65, 87, 0 )
				BC("screen", "map", $ectype_ID, "Marcell: We see how strong you really are, now!")
			endif
		endif
	}
