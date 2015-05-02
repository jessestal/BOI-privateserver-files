// ???? ?? ??

function OnRequest(){
		}

function OnOption0(){

		$lv = GetPlayerInfo( -1, "level" )

		if $lv < 20
				BC( "dialogbox", "player", -1, "Oh dear, you're not yet LV20! Reach LV20 if you want to collect a gift!" )
				return
		endif

		$h =  GetSystemTime( "hour" )

				if $h > 5
						if $h < 19
								BC( "dialogbox", "player", -1, "My reindeer are sleeping right now, come back between 19:00 and 05:00 to collect your gift." )
								return
						endif
				endif

		$t1 = GetSystemTime( "yday" )
		$t2 = GetPlayerVar( -1, 3866 )

		if $t1 == $t2
				BC( "dialogbox", "player", -1, "You've already collected your gift today, come again tomorrow." )
				return
		endif


			$empty = GetPlayerInfo( -1, "nullitem",0 )
			if $empty < 1
					BC( "dialogbox", "player", -1, "Make sure you reserve at least 1 open slot in your bag, or you won't be able to collect your prize." )
					return
			endif


		AddPlayerInfo( -1, "item", 52118, 1 )
		BC( "dialogbox", "player", -1, "Merry Christmas" )
		SetPlayerVar( -1, 3866, $t1 )


		}









