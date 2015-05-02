	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479NPC??
	//		TaskID:DXLM-NPC-Qimeng-689.s
	//
	//****************************************

	function OnRequest(){

		$ectype_id = GetEctypeID(-1, 479)
		$isadd = GetEctypeVar($ectype_id,1)
		if $isadd > 0
			DisableNpcOption(0)
		endif
		
		$count = GetEctypeVar($ectype_id, 2)
		
		if $count < 18
			DisableNpcOption(2)
		endif

		
	}

	function OnOption0(){

		$ectype_id = GetEctypeID(-1, 479)
		$isadd = GetEctypeVar($ectype_id,1)
		if $isadd > 0
			return
		endif
		SetEctypeVar($ectype_id,1,1)
		//???? ----18?
		AddMonsterByFloat(51792, 1, $ectype_id, 190, 181, 0)
		AddMonsterByFloat(51792, 1, $ectype_id, 199, 181, 0)
		AddMonsterByFloat(51792, 1, $ectype_id, 199, 193, 0)
		AddMonsterByFloat(51792, 1, $ectype_id, 190, 193, 0)
		AddMonsterByFloat(51792, 1, $ectype_id, 194, 174, 0)
		AddMonsterByFloat(51792, 1, $ectype_id, 191, 175, 0)
		AddMonsterByFloat(51792, 1, $ectype_id, 197, 175, 0)
		AddMonsterByFloat(51792, 1, $ectype_id, 187, 178, 0)
		AddMonsterByFloat(51792, 1, $ectype_id, 201, 178, 0)
		AddMonsterByFloat(51792, 1, $ectype_id, 185, 185, 0)
		AddMonsterByFloat(51792, 1, $ectype_id, 203, 185, 0)
		AddMonsterByFloat(51792, 1, $ectype_id, 185, 190, 0)
		AddMonsterByFloat(51792, 1, $ectype_id, 203, 190, 0)
		AddMonsterByFloat(51792, 1, $ectype_id, 188, 197, 0)
		AddMonsterByFloat(51792, 1, $ectype_id, 200, 197, 0)
		AddMonsterByFloat(51792, 1, $ectype_id, 190, 200, 0)
		AddMonsterByFloat(51792, 1, $ectype_id, 198, 200, 0)
		AddMonsterByFloat(51792, 1, $ectype_id, 194, 201, 0)
		BC( "screen", "map", $ectype_id, "So cold... so lonely...")
		BC( "screen", "map", $ectype_id, "Start cleansing the sins of the soul in this room.")

	
	}

	function OnOption1(){

		//????,??id 479,???? 44051,??????? 37-0?1?, ?????? 99-1?2?, ??????2-?12?25, ????51824
		$ectype_id = GetEctypeID(-1, 479)
		$is_item_ex = GetPlayerInfo(-1, "item", 44051)
		$is_open = GetEctypeVar(-1, 37)
//		$dif = GetEctypeVar(-1, 99)
		$count = GetEctypeVar(-1, 2)

		//???????????-????
		if $is_item_ex != 0
			BC("dialogbox", "player", -1, "You have obtained the Realm of Cycles.")
			return
		endif

		//???????????-???????
		if $is_open == 1
			BC("screen", "player", -1, "Lost souls' dream is broken. They cannot return to the past because Nirvana's Gateway is already open")
			BC("dialogbox", "player", -1, "Nirvana's Gateway is already open. The lost souls have been cleansed.")
			return
		endif


			if $count >= 18
				AddPlayerInfo(-1, "item", 44051, 1)
				BC( "screen", "player", -1, "This is the Nirvana Mirror, the manifest of your mind's clarity. Use it wisely.")
				OpenMask(13,$ectype_id)
				AddMonsterByFloat(51824, 1, $ectype_id, 232, 229, 0)
				AddMonsterByFloat(51850, 1, $ectype_id, 226, 199, 0)
				AddMonsterByFloat(51850, 1, $ectype_id, 221, 198, 0)
				AddMonsterByFloat(51850, 1, $ectype_id, 212, 198, 0)
				AddMonsterByFloat(51850, 1, $ectype_id, 231, 221, 0)
				AddMonsterByFloat(51850, 1, $ectype_id, 234, 227, 0)
				AddMonsterByFloat(51850, 1, $ectype_id, 245, 229, 0)				
			else
				BC( "dialogbox", "player", -1, "There are still parts of your conscience that need clearing.")
				return
			endif
		


	}


	function OnOption2(){
		
		BC( "dialogbox", "player", -1 , "Use the Nirvana Mirror to open the way to the Prayer Altar. Find the purpose of your destiny..." )
		

	}