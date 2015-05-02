// ???? ?? ??

function OnRequest(){
		}

function OnOption0(){

	$month =  GetSystemTime( "month" )
	$day =  GetSystemTime( "mday" )
	$h =  GetSystemTime( "hour" )
	$lv = GetPlayerInfo( -1, "level" )
	$a = GetPlayerInfo( -1, "item",52158 )
	$empty = GetPlayerInfo( -1, "nullitem",0 )


		if $month != 4
				BC( "dialogbox", "player", -1, "You can collect your gift between April 8th and 22nd." )
				return
		else
				if $day < 8
						BC( "dialogbox", "player", -1, "You can collect your gift between April 8th and 22nd." )
						return
				endif

				if $day > 22
						BC( "dialogbox", "player", -1, "You can collect your gift between April 8th and 22nd." )
						return
				endif
		endif

		if $lv < 20
				BC( "dialogbox", "player", -1, "Oh dear, you're not yet LV20! Reach LV20 if you want to collect a gift!" )
				return
		endif

		$t1 = GetSystemTime( "yday" )
		$t2 = GetPlayerVar( -1, 3866 )

		if $t1 == $t2
				BC( "dialogbox", "player", -1, "You've already collected a gift today" )
				return
		endif

		if $empty < 1
				BC( "screen", "player", -1, "Your bag is full." )
				return
		endif
			SetPlayerVar( -1, 3866, $t1 )
			AddPlayerInfo( -1, "item", 52158, 3 )
			BC( "dialogbox", "player", -1, "Happy Easter" )
		}







