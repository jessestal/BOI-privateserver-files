	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/24
	//		Author:???(??,??,??)
	//		TaskName:???478-1?NPC???583
	//		TaskID:583-DXLM1-NPC-Lingaohan.s
	//
	//****************************************
	
	function OnRequest(){
		
}

	function OnOption0(){
	//?????????
	//???? ??ID 478
	$ectype_id = GetEctypeID(-1,478)
	BC("dialogbox","player",-1,"Probably. Or is it just fantasy? ")		
	
}

	function OnOption1(){
	//??????
	//???? ??ID 478
	$ectype_id = GetEctypeID(-1,478)
	BC("dialogbox","player",-1,"Speak with Fryar or Skylar. Only the Party Leader can choose which way to complete the instance. Once an option is chosen, the other will be locked out.")		
		


}