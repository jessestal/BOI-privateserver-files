	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:?????NPC??
	//		TaskID:DXLM-NPC-Xiaoxiao-582.s
	//
	//****************************************

	function OnRequest(){
		
	}	
	
	function OnOption0(){

	//??????????,????,???????

	$headerID = GetTeamHeaderID( -1 )
	$playerid = GetPlayerID()
	if $playerid != $headerID
		BC( "dialogbox", "player", -1, "You are not the Captain! You must not have a sense of responsibility!" )
		return
	endif

	$size = GetTeamAreaSize(-1)
	if $size > 10
		BC( "dialogbox", "player", -1, "Your party members are too far away from you. Aren't they listening to you?!" )
		return
	endif	

	//??NPC????591		
	AddNPC(591 , -1)	
	BC( "screen", "map", -1, "Just kill the spiders here, the seal will automatically absorb their power. Use the seal to enter the ethereal once it is activated.")
	
}
