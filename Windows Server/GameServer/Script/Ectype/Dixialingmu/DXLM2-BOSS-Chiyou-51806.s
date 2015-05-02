	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/03
	//		Author:???(??,??,??)
	//		TaskName:???479????BOSS??
	//		TaskID:DXLM2-BOSS-Chiyou-51806.s
	//
	//****************************************
	
	function OnDead(){
	
	$ectype_id = GetEctypeID(-1, 479) 
	BC( "screen", "map", $ectype_id, "Chiyu was defeated!")
	PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
	
	//????
	SetEctypeVar(-1, 35, 2)
	
	//?????
	$revaluet = AddNPC( 688, $ectype_id)
	if $revaluet == 0
		BC( "screen", "map", $ectype_id, "The Tomb Exit appears. Leave the Pangaea Catacomb now!")
	endif
	

	
}