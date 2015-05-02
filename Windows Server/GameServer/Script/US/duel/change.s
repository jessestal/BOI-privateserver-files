function OnRequest(){



		}

function OnOption0(){

		$lv = GetPlayerInfo( -1, "level" )

		if $lv < 20
				BC( "dialogbox", "player", -1, "Must be above LV20 to exchange." )
				return
		endif

		$money = GetPlayerInfo( -1, "money" )

		if $money < 1000
				BC( "dialogbox", "player", -1, "You don't have enough money to exchange." )
				return
		endif

		$empty = GetPlayerInfo( -1, "nullitem",0 )

		if $empty < 1
				BC( "dialogbox", "player", -1, "Your bag is full." )
				return
		endif

		$del = SubPlayerInfo( -1, "money", 1000 )

		if $del == 0
				AddPlayerInfo( -1,"item",52163,1 )

		endif


			}


function OnOption1(){

		$lv = GetPlayerInfo( -1, "level" )

		if $lv < 20
				BC( "dialogbox", "player", -1, "Must be above LV20 to exchange." )
				return
		endif

		$money = GetPlayerInfo( -1, "money" )

		if $money < 10000
				BC( "dialogbox", "player", -1, "You don't have enough money to exchange." )
				return
		endif

		$empty = GetPlayerInfo( -1, "nullitem",0 )

		if $empty < 1
				BC( "dialogbox", "player", -1, "Your bag is full." )
				return
		endif

		$del = SubPlayerInfo( -1, "money", 10000 )

		if $del == 0
				AddPlayerInfo( -1,"item",52163,10 )

		endif


			}



function OnOption2(){

		$lv = GetPlayerInfo( -1, "level" )

		if $lv < 20
				BC( "dialogbox", "player", -1, "Must be above LV20 to exchange." )
				return
		endif

		$money = GetPlayerInfo( -1, "money" )

		if $money < 100000
				BC( "dialogbox", "player", -1, "You don't have enough money to exchange." )
				return
		endif

		$empty = GetPlayerInfo( -1, "nullitem",0 )

		if $empty < 1
				BC( "dialogbox", "player", -1, "Your bag is full." )
				return
		endif

		$del = SubPlayerInfo( -1, "money", 100000 )

		if $del == 0
				AddPlayerInfo( -1,"item",52163,100 )

		endif


			}



function OnOption3(){

		$t = GetSystemTime( "yday" )
		$n = GetPlayerVar( -1, 3866 )

		if $t == $n
				BC( "dialogbox", "player", -1, "You've already exchanged today, come again tomorrow." )
				return
		endif


		$lv = GetPlayerInfo( -1, "level" )

		if $lv < 20
				BC( "dialogbox", "player", -1, "Must be above LV20 to exchange." )
				return
		endif

		$a = GetPlayerInfo( -1, "item", 52167 )

		if $a < 10
				BC( "dialogbox", "player", -1, "You don't have enough Victory Tokens to exchange." )
				return
		endif

		$empty = GetPlayerInfo( -1, "nullitem",0 )

		if $empty < 1
				BC( "dialogbox", "player", -1, "Your bag is full." )
				return
		endif

		$del = SubPlayerInfo( -1, "item", 52167,10 )

		if $del == 0
				AddPlayerInfo( -1,"item",52164,1 )
		endif

		SetPlayerVar( -1, 3866, $t )


	}

function OnOption4(){

		$t = GetSystemTime( "yday" )
		$n = GetPlayerVar( -1, 3867 )

		if $t == $n
				BC( "dialogbox", "player", -1, "You've already exchanged today, come again tomorrow." )
				return
		endif


		$lv = GetPlayerInfo( -1, "level" )

		if $lv < 20
				BC( "dialogbox", "player", -1, "Must be above LV20 to exchange." )
				return
		endif

		$a = GetPlayerInfo( -1, "item", 52167 )

		if $a < 50
				BC( "dialogbox", "player", -1, "You don't have enough Victory Tokens to exchange." )
				return
		endif

		$empty = GetPlayerInfo( -1, "nullitem",0 )

		if $empty < 1
				BC( "dialogbox", "player", -1, "Your bag is full." )
				return
		endif

		$del = SubPlayerInfo( -1, "item", 52167,50 )

		if $del == 0
				AddPlayerInfo( -1,"item",52165,1 )
		endif

		SetPlayerVar( -1, 3867, $t )


	}

function OnOption5(){

		$t = GetSystemTime( "yday" )
		$n = GetPlayerVar( -1, 3868 )

		if $t == $n
				BC( "dialogbox", "player", -1, "You've already exchanged today, come again tomorrow." )
				return
		endif


		$lv = GetPlayerInfo( -1, "level" )

		if $lv < 20
				BC( "dialogbox", "player", -1, "Must be above LV20 to exchange." )
				return
		endif

		$a = GetPlayerInfo( -1, "item", 52167 )

		if $a < 100
				BC( "dialogbox", "player", -1, "You don't have enough Victory Tokens to exchange." )
				return
		endif

		$empty = GetPlayerInfo( -1, "nullitem",0 )

		if $empty < 1
				BC( "dialogbox", "player", -1, "Your bag is full." )
				return
		endif

		$del = SubPlayerInfo( -1, "item", 52167,100 )

		if $del == 0
				AddPlayerInfo( -1,"item",52166,1 )
		endif

		SetPlayerVar( -1, 3868, $t )


	}










