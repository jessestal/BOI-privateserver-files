	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???1?681NPC??
	//		TaskID:DXLM1-NPC-Linxiao-681.s
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	function OnOption0(){

	$ectype_id = GetEctypeID(-1, 478)
	
	//??????????,????,???????
	$headerID = GetTeamHeaderID( -1 )
	$playerid = GetPlayerID()
		if $playerid != $headerID
			BC( "dialogbox", "player", -1, "You are not the Party Leader!" )
			return
		endif

	$is = GetEctypeVar(-1, 92)
	if $is != 0
		BC("screen", "player", -1, "Did you clean up the obstacles in front?")
		return
	endif
	
//	$revaluet = OpenMask(  , $ectype_id)
	
//	if $revaluet == 0
		AddMonsterByFloat(51775, 1, $ectype_id, 263, 215, 0)
		AddMonster(51822, 2, $ectype_id, 101, 66, 1)
		AddMonster(51822, 2, $ectype_id, 104, 68, 1)
		BC("screen", "map", $ectype_id, "I have activated the trigger for you. There are monsters blocking the way ahead. Be careful.")
//	endif
	
	
	
	
	
	
}