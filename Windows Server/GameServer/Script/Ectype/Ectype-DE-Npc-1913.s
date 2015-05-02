	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/02
	//		Author:??
	//		TaskName:Ectype-Npc-1913.s
	//		TaskID:???
	//
	//****************************************
	//
	function OnRequest(){
		//??70?
		$ectype_type = GetEctypeVar( -1, 111 )
		if $ectype_type != 70
			DisableNpcOption(0)
		endif
		
		$ectypevar2 = GetEctypeVar( -1, 1 )
		if $ectypevar2 != 0
			DisableNpcOption(0)
		endif
	}
	
	//??????
	function OnOption0(){
		$ectype_ID = GetEctypeID( -1, 226 )
		
		$ectypevar2 = GetEctypeVar( -1, 1 )
		if $ectypevar2 != 0
			BC( "dialogbox", "player", -1, "Merak Pillar has been activated." )
			return
		endif
		
		//??70?
		$ectype_type = GetEctypeVar( -1, 111 )
		if $ectype_type == 70
			SetEctypeVar( -1, 1, 1 )
			BC("screen", "map", $ectype_ID, "Merak Pillar is activated.")
		endif
		
		$ectypevar1 = GetEctypeVar( -1, 0 )
		$ectypevar2 = GetEctypeVar( -1, 1 )
		$ectypevar3 = GetEctypeVar( -1, 2 )
		$ectypevar4 = GetEctypeVar( -1, 3 )
		$ectypevar5 = GetEctypeVar( -1, 4 )
		$ectypevar6 = GetEctypeVar( -1, 5 )
		$ectypevar7 = GetEctypeVar( -1, 6 )
		
		if $ectypevar1 != 1
			return
		endif
		
		if $ectypevar2 != 1
			return
		endif
		
		if $ectypevar3 != 1
			return
		endif
		
		if $ectypevar4 != 1
			return
		endif
		
		if $ectypevar5 != 1
			return
		endif
		
		if $ectypevar6 != 1
			return
		endif
		
		if $ectypevar7 != 1
			return
		endif
		
		$ectype_type = GetEctypeVar( -1, 7 )
		if $ectype_type == 0
			AddMonster( 51485, 1, $ectype_ID, 63, 55 , 0 )
			BC("screen", "map", $ectype_ID, "The seven stars shine brightly.  The Dragon Emperor appears!")
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		else
			AddMonster( 51205, 1, $ectype_ID, 63, 55 , 0 )
			BC("screen", "map", $ectype_ID, "The seven stars shine brightly.  The Dragon Emperor appears!")
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		endif
		
	}
	
	