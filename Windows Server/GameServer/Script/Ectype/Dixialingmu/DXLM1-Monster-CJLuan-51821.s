	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/13
	//		Author:???(??,??,??)
	//		TaskName:???1????51821?????
	//		TaskID:DXLM1-Monster-CJLuan-51821.s
	//
	//****************************************
	
	function OnDead(){
	
	//???? 478, ??????92-0?1?,
	$ectype_id = GetEctypeID(-1, 478)

	AddNPC(581, $ectype_id)
	BC("screen", "map", $ectype_id, "Phew...am I... saved?")


}