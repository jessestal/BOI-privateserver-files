		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-08-25
		//		Author:???
		//		TaskName:??????
		//		TaskID:?????478

		//
		//****************************************

	function OnRequest(){

		$ectype_id = GetPlayerInfo(-1,"mapid")
		$key = 65
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 1
			DisableNpcOption(0)
		endif
		
		
	}


	function OnOption0(){
		//?????
		$ectype_id = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		
		$item1 = GetPlayerInfo( -1, "item", 44066)	
		if $item1 == 0
			BC( "screen", "player", -1, "You need a certain item to open the door." )
			return
		endif
		$key = 65
		SetEctypeVar($ectype_id,$key,1)
		SubPlayerInfo( -1, "item", 44066 ,1)
		OpenMask(7,$ectype_id)
		BC( "dialogbox", "player", -1, "The gate resonates with the Feather of Eternity and opens!" )
		DeleteNPC(656,-1)
		
	$mst = 51770
	$mst_chong = 51752
	$mst_she = 51753
	$mst_ci = 51815
	$mst_yi = 51752
	//??-??????? ????2??????
	//????  5? ?
	AddMonsterByFloat($mst_she, 1, $ectype_id, 33, 90, 0)
	AddMonsterByFloat($mst_she, 1, $ectype_id, 34, 83, 0)
	AddMonsterByFloat($mst_she, 1, $ectype_id, 22, 82, 0)
	AddMonsterByFloat($mst_she, 1, $ectype_id, 23, 91, 0)
	AddMonsterByFloat($mst_she, 1, $ectype_id, 28, 100, 0)
	
	//????  5? ?
	AddMonsterByFloat($mst_she, 1, $ectype_id, 28, 120, 0)
	AddMonsterByFloat($mst_she, 1, $ectype_id, 33, 129, 0)
	AddMonsterByFloat($mst_she, 1, $ectype_id, 23, 129, 0)
	AddMonsterByFloat($mst_she, 1, $ectype_id, 19, 133, 0)
	AddMonsterByFloat($mst_she, 1, $ectype_id, 20, 138, 0)

	//????????  4? ????
	AddMonsterByFloat($mst_ci, 1, $ectype_id, 23, 167, 0)
	AddMonsterByFloat($mst_ci, 1, $ectype_id, 26, 167, 0)
	AddMonsterByFloat($mst_ci, 1, $ectype_id, 23, 170, 0)
	AddMonsterByFloat($mst_ci, 1, $ectype_id, 26, 170, 0)
	
	//???????? 5? ???
	AddMonsterByFloat($mst_yi, 1, $ectype_id, 16, 152, 0)
	AddMonsterByFloat($mst_yi, 1, $ectype_id, 16, 156, 0)
	AddMonsterByFloat($mst_yi, 1, $ectype_id, 19, 165, 0)
	AddMonsterByFloat($mst_yi, 1, $ectype_id, 18, 170, 0)
	AddMonsterByFloat($mst_yi, 1, $ectype_id, 16, 179, 0)
	}





