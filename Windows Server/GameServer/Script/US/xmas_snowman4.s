// ???? ?? ??

function OnRequest(){
		}

function OnOption0(){

			$n1 = GetGlobalVar( 204 )
			if $n1 > 1000000
					BC( "dialogbox", "player", -1, "I don't need a Blessed Snowball, go and pile it onto another snowman." )
					return
			endif

			$empty = GetPlayerInfo( -1, "nullitem",0 )
			if $empty < 1
					BC( "dialogbox", "player", -1, "Make sure you reserve at least 1 open slot in your bag, or you won't be able to collect your prize." )
					return
			endif

			$a = GetPlayerInfo( -1, "item", 52116 )
			if $a < 1
					BC( "dialogbox", "player", -1, "You haven't yet received a Blessed Snowball." )
					return
			endif

			$sub = SubPlayerInfo(-1,"item",52116,1)

			AddPlayerInfo( -1, "item", 52129, 1 )
			$n1 = $n1 + 1
			SetGlobalVar( 204,$n1 )
			if $n1 == 1000000
					BC("scrollbar", "server", -1 , "With your efforts, the fourth snowman is made. Please go to get your gift")
					$n1 = $n1 + 1
					SetGlobalVar( 204,$n1 )
					DeleteNPC( 9014 )
					DeleteNPC( 9022 )
					AddNPC( 9029 )
			endif


		}

function OnOption1(){

			$n1 = GetGlobalVar( 204 )
			if $n1 < 1000000
					BC( "dialogbox", "player", -1, "I'm not a snowman yet, you can't give your gift to me!" )
					return
			endif
			$lv = GetPlayerInfo( -1, "level" )

			if $lv < 20
					BC( "dialogbox", "player", -1, "Keep trying - you need to be LV20 before you can collect a prize." )
					return
			endif
			$t1 = GetSystemTime( "yday" )
			$t2 = GetPlayerVar( -1, 3854 )

			if $t1 == $t2
					BC( "dialogbox", "player", -1, "You've already collected your gift today, come again tomorrow." )
					return
			endif

			$a = GetPlayerInfo( -1, "item", 52116 )

			if $a < 4
					BC( "dialogbox", "player", -1, "Just give me four Blessed Snowballs and you can get a gift" )
					return
			endif
			$empty = GetPlayerInfo( -1, "nullitem",0 )
			if $empty < 1
					BC( "dialogbox", "player", -1, "Make sure you reserve at least 1 open slot in your bag, or you won't be able to collect your prize." )
					return
			endif
			$sub = SubPlayerInfo(-1,"item",52116,4)


			AddPlayerInfo( -1, "item", 52124, 1 )
			BC( "dialogbox", "player", -1, "Merry Christmas" )
			SetPlayerVar( -1, 3854, $t1 )

		}

function OnOption2(){

			$n1 = GetGlobalVar( 204 )
			$n2 = 1000000 - $n1
			if $n1 > 1000000
					BC( "dialogbox", "player", -1, "Thanks! Merry Christmas!" )
					return
			endif

			BC( "dialogbox", "player", -1, "Just make ",$n2," snow balls, and you can turn me into a snowman." )

		}


















