		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-07
		//		Author:???
		//		TaskName:??????
		//		TaskID:
		//
		//****************************************

	function OnRequest(){


	}


	function OnOption0(){
		
		$max_hp = GetPlayerInfo( -1, "maxhp")
		$max_mp = GetPlayerInfo( -1, "maxmp")
		$hp = GetPlayerInfo( -1, "hp")
		$mp = GetPlayerInfo( -1, "mp")
		$cost_money = 1000

		$money = GetPlayerInfo( -1, "money")
		if $money >= $cost_money
			SubPlayerInfo( -1, "money", $cost_money)
		else
			BC( "screen", "player", -1, "Insufficient Coins!" )
			return
		endif

		$add_hp = $max_hp - $hp
		$add_mp = $max_mp - $mp
 		AddPlayerInfo( -1, "hp", $add_hp)
		AddPlayerInfo( -1, "mp", $add_mp)
		//HealAllPet(-1)
		PlayEffect( -1,"skill\Priest\shengminghuifu\hit\tx_priest_shengminghuifu_hit.ini")
		BC( "chat", "player", -1, "Coin Cost: ", $cost_money)
		BC( "screen", "player", -1, "Coin Cost: ", $cost_money)
	}

	function OnOption1(){
		//??
		FlyToMap( -1, 119, 100, 49)
	}