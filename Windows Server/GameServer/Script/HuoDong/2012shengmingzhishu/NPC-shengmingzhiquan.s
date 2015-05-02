	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-7-31
	//		Author:??
	//		TaskName:NPC-shengmingzhiquan.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
	
	}
	function OnOption0(){
		//????
		$line = GetServerLineID()
		if $line != 7
			BC( "screen", "player", -1, "Only those in Realm 7 may collect from the Spring of Life!" )
			return
		endif
		//??????
		$name = GetPlayerInfo( -1, "name" )
		//??????? 296
		$num = GetServerVar(296 )
//		BC( "screen", "player", -1, "GUID:04789000001",$num,"GUID:04789000002" )
		//????????3343
		$playernum = GetPlayerVar( -1, 3343 )
		//?????????????,?????
		if $playernum > 30
			BC( "screen", "player", -1, "You've already received a blessing from the Tree of Life, you don't need to collect from the Spring of Life!" )
			return
		endif
		if $playernum == $num
			BC( "screen", "player", -1, "You collected water from the Spring of Life! Hurry to Atlantis and water the Tree of Life with it!" )
			return
		endif
		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		//??????????????
		$result = SetPlayerVar( -1, 3343, $num )
		
		if $result == 0
			$n = RandomNumber ( 1, 100 )
			if $n < 91
				AddPlayerInfo( -1, "item", 44376, 1 )
			else
				AddPlayerInfo( -1, "item", 44377, 1 )
			endif
			return
		endif
}
