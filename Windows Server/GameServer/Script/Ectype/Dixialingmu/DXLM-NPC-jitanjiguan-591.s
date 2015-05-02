	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???????591
	//		TaskID:DXLM-NPC-jitanjiguan-591.s
	//
	//****************************************

	function OnRequest(){
		
	}	
	
	function OnOption0(){
		
	//??????????,????,???????

	$headerID = GetTeamHeaderID( -1 )
	$playerid = GetPlayerID()
	if $playerid != $headerID
		BC( "dialogbox", "player", -1, "You are not the Captain. You cannot activate the trigger" )
		return
	endif

	
	//??????,???10?51774,???25?51774,?????97
	$dif = GetEctypeVar(-1, 99)
	$count = GetEctypeVar(-1, 97)
	
	//?????10?51774,??????,???479
	if $dif == 1
		if $count < 10
			$a = 10 - $count
			BC( "screen", "map", -1, "There are " , $a , " spiders left to kill before the seal is activated.")
			return
		else
//			FlyToMap( -1, 479, $mapX, $mapY)
			BC( "screen", "map", -1, "You successfully closed this trigger, but it seems that you have activated another trigger, which leads to the Gates of Hell.")	
		endif
	endif

	//?????25?51774,??????,???479
	if $dif == 2
		if $count < 25
			$b = 25 - $count
			BC( "screen", "map", -1, "There are " , $b , " spiders left to kill before the seal is activated.")
			return
		else
//			MapPlayerFlyToMap( -1, 479, $mapX, $mapY )								
			BC( "screen", "map", -1, "You successfully closed this trigger, but it seems that you have activated another trigger, which leads to the Gates of Hell.")	
		endif
	endif	
							
	
		
	
	
}