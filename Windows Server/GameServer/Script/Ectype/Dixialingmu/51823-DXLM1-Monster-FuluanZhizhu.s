	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:??1??????
	//		TaskID:DXLM-Monster-zhizhu-51823.s
	//
	//****************************************
	
	function OnDead(){

	//???? ??id 478  NPC?? 681 M???? 51823 ?AI ????? 51847 ?? 88

	$ectype_id = GetEctypeID(-1, 478)
	$count = GetEctypeVar(-1, 88)
	$count = $count + 1
	SetEctypeVar(-1, 88, $count)

	if $count < 6
		BC( "screen", "map", $ectype_id, "Eggcarrier Spider ", $count, "/5 ")
	endif

	if $count == 5
		BC( "screen", "map", $ectype_id, "The blood in the air attracts more spiders!")
		BC( "screen", "map", $ectype_id, "Pangaea Catacomb Realm 1 is activated ")
  	//????				
  	AddMonster(51847, 5, $ectype_id, 107, 60, 5)
  	AddMonster(51847, 5, $ectype_id, 105, 62, 5)
  	AddMonster(51847, 5, $ectype_id, 100, 63, 5)
  	AddMonster(51847, 5, $ectype_id, 97, 63, 5)
  	AddMonster(51847, 5, $ectype_id, 96, 67, 5)
	endif	



	//??2?
	DeleteNPC(680, $ectype_id)

	



}

