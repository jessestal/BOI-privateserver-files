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
	
	OpenMask(21, $ectype_id)
	$revaluet = OpenMask(13,$ectype_id)
		if $revaluet == 0
	  	AddMonsterByFloat( 51812, 1, $ectype_id, 232, 211, 0)
	  	AddMonsterByFloat( 51812, 1, $ectype_id, 232, 209, 0)
	  	AddMonsterByFloat( 51812, 1, $ectype_id, 232, 207, 0)
	  	AddMonsterByFloat( 51812, 1, $ectype_id, 232, 205, 0)
	  	AddMonsterByFloat( 51812, 1, $ectype_id, 232, 203, 0)
	  	AddMonsterByFloat( 51812, 1, $ectype_id, 232, 201, 0)
	  	AddMonsterByFloat( 51812, 1, $ectype_id, 232, 199, 0)
	  	AddMonsterByFloat( 51812, 1, $ectype_id, 230, 199, 0)
	  	AddMonsterByFloat( 51812, 1, $ectype_id, 228, 199, 0)
	  	AddMonsterByFloat( 51812, 1, $ectype_id, 226, 199, 0)
	  	AddMonsterByFloat( 51812, 1, $ectype_id, 224, 199, 0)
	  	AddMonsterByFloat( 51812, 1, $ectype_id, 235, 228, 0)
	  	AddMonsterByFloat( 51812, 1, $ectype_id, 231, 222, 0)
	  	
			AddMonster( 51822, 4, $ectype_id, 81, 78, 4)
			AddMonster( 51822, 4, $ectype_id, 75, 78, 4)						
			AddMonster( 51822, 4, $ectype_id, 75, 67, 4)
			AddMonster( 51822, 4, $ectype_id, 70, 78, 4)
			BC( "screen", "map", $ectype_id, "The door...is open...Huh...Huh!" )
			BC( "dialogbox", "player", -1, "Aaahh! There is... is something, my... my stomach is...aaaahhhhh!!" )
			PlayEffect(0, "Effect\common\leitingzhili\hit1\tx_leitingzhili_hit1.ini")
			DeleteNPC(581,$ectype_id)
			AddMonsterByFloat(51849, 1, $ectype_id, 258, 227, 0)			
			AddMonsterByFloat(51849, 1, $ectype_id, 259, 227, 0)	
			AddMonsterByFloat(51849, 1, $ectype_id, 257, 227, 0)	
			AddMonsterByFloat(51849, 1, $ectype_id, 258, 228, 0)	
			AddMonsterByFloat(51849, 1, $ectype_id, 258, 226, 0)	
			AddMonsterByFloat(51849, 1, $ectype_id, 258, 226, 0)
			
				//??	  
	  	SetEctypeVar(-1, 90, 1)
	  endif


	  
	  
}