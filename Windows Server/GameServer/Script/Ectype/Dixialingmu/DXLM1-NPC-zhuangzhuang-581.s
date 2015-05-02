	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???1?13??NPC???
	//		TaskID:DXLM1-NPC-zhuangzhuang-581.s
	//
	//****************************************

	function OnRequest(){
	//???? ??????90-0?1
	$is = GetEctypeVar(-1, 90)
	if $is == 1
		DisableNpcOption(0)
	endif
	
		
	}	
	
	function OnOption0(){

	$ectype_id = GetEctypeID(-1, 478)		
	$playerid = GetPlayerID()
	
	$is = GetEctypeVar(-1, 90)
	if $is == 1
		return
	endif
	
	$revaluet = OpenMask(13,$ectype_id)
		if $revaluet == 0
	  	AddMonsterByFloat( 51812, 1, $ectype_id, 232, 211, 0)
	  	AddMonsterByFloat( 51812, 1, $ectype_id, 232, 209, 0)
	  	AddMonsterByFloat( 51812, 2, $ectype_id, 232, 207, 0)
	  	AddMonsterByFloat( 51812, 1, $ectype_id, 232, 205, 0)
	  	AddMonsterByFloat( 51812, 1, $ectype_id, 232, 203, 0)
	  	AddMonsterByFloat( 51812, 2, $ectype_id, 232, 201, 0)
	  	AddMonsterByFloat( 51812, 1, $ectype_id, 232, 199, 0)
	  	AddMonsterByFloat( 51812, 1, $ectype_id, 230, 199, 0)
	  	AddMonsterByFloat( 51812, 2, $ectype_id, 228, 199, 0)
	  	AddMonsterByFloat( 51812, 1, $ectype_id, 226, 199, 0)
	  	AddMonsterByFloat( 51812, 1, $ectype_id, 224, 199, 0)

			AddMonster( 51822, 4, $ectype_id, 80, 71, 4)
			AddMonster( 51822, 4, $ectype_id, 74, 72, 4)						
			AddMonster( 51822, 4, $ectype_id, 76, 73, 4)
			AddMonster( 51822, 4, $ectype_id, 73, 74, 4)
			BC( "screen", "map", $ectype_id, "Noxious insects are coming out. Be careful everyone!" )
				//??	  
	  	SetEctypeVar(-1, 90, 1)
	  endif


	  
	  
}