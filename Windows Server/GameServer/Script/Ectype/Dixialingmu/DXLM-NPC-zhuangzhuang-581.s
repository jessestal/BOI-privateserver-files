	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???13??NPC???
	//		TaskID:DXLM-NPC-zhuangzhuang-581.s
	//
	//****************************************

	function OnRequest(){
		
	}	
	
	function OnOption0(){
		
	//??????????,????,???????

	$headerID = GetTeamHeaderID( -1 )
	$playerid = GetPlayerID()
	if $playerid != $headerID
		BC( "dialogbox", "player", -1, "You are not the Party Leader!" )
		return
	endif

	$size = GetTeamAreaSize(-1)
	if $size > 10
		BC( "dialogbox", "player", -1, "Your party members are too far away from you. Call them here!" )
		return
	endif	
		
	//??door13,???????????
	OpenMask(13,-1)
	$dif = GetEctypeVar(-1, 99 )
	//???????,?18?
	if $dif == 1
	AddMonster( 51774, 3, -1, 82, 232, 3)
	AddMonster( 51774, 3, -1, 82, 232, 3)	
	AddMonster( 51774, 3, -1, 82, 232, 3)
	AddMonster( 51774, 3, -1, 82, 232, 3)
	AddMonster( 51774, 3, -1, 82, 232, 3)
	AddMonster( 51774, 3, -1, 82, 232, 3)
	
	//???????,?36?
	if $dif == 2
	AddMonster( 51774, 6, -1, 82, 232, 5)
	AddMonster( 51774, 6, -1, 82, 213, 5)		
	AddMonster( 51774, 6, -1, 90, 222, 5)	
	AddMonster( 51774, 6, -1, 82, 202, 5)
	AddMonster( 51774, 6, -1, 90, 222, 5)
	AddMonster( 51774, 6, -1, 77, 189, 5)	
	
	
}