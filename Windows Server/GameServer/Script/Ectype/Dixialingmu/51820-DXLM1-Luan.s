	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/13
	//		Author:???(??,??,??)
	//		TaskName:?????
	//		TaskID:DXLM1-Monster-CJLuan-51821.s
	//
	//****************************************
	
	function OnDead(){
	//????? 51849

	
		$ectype_id = GetEctypeID(-1, 478)
		$x = GetPlayerInfo(-1, "mapposx")
		$y = GetPlayerInfo(-1, "mapposy")
		$lot = RandomNumber(1, 2)
		if $lot == 1
			AddMapPlayerInfo($ectype_id, "exp", 85000)
			BC( "screen", "map", $ectype_id, "There is nothing in the spider egg")
		endif
		
		if $lot == 2
			AddMonsterByFloat(51849, 1, $ectype_id, $x, $y, 0)
			BC( "screen", "map", $ectype_id, "A parasitic spider comes out of the spider egg")
		endif

	
} 