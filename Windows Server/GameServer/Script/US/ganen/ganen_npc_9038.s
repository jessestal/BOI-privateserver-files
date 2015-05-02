//  ?? ?? ???

function OnRequest(){

	}


function OnOption0(){

		$d = GetSystemTime( "yday" )
		$g2 = GetPlayerVar( -1, 3862 )
		$lv = GetPlayerInfo( -1, "level" )

		if $g2 == $d
			BC( "dialogbox", "player", -1, "You've already collected a gift today, come again tomorrow." )
			return
		endif

		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif

			AddPlayerInfo( -1, "item", 52156, 3 )
			SetPlayerVar( -1, 3862,$d )
			BC( "dialogbox", "player", -1, "You hear a clear voice ringing in your mind: Be thankful, be content." )



}
