	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-7
	//		Author:???
	//		TaskName:???? - The Throne of Magic Crystal
	//		TaskID:
	//
	//****************************************

	function OnRequest(){

		$playerid = GetPlayerID()
		$guildid = GetPlayerInfo($playerid,"guildid")
		if $guildid == 0
			FlyToMap($playerid,173,55,66,0)
			return
		endif


	}
	
function OnOption0(){

	$level = GetPlayerInfo( -1, "level")
	$max_hp = GetPlayerInfo( -1, "maxhp")
	$max_mp = GetPlayerInfo( -1, "maxmp")
	$hp = GetPlayerInfo( -1, "hp")
	$mp = GetPlayerInfo( -1, "mp")


		//???
		call CostMoney()
		//?????
		$money = GetPlayerInfo( -1, "money")
		//?????
		if $money >= $cost_money
			SubPlayerInfo( -1, "money", $cost_money)
		else
			BC( "screen", "player", -1, "Insufficient Coins, unable to heal..." )
			return
		endif
	
	$add_hp = $max_hp - $hp
	$add_mp = $max_mp - $mp
 	AddPlayerInfo( -1, "hp", $add_hp)
	AddPlayerInfo( -1, "mp", $add_mp)
	HealAllPet(-1)
	PlayEffect(-1,"skill\Priest\shengminghuifu\hit\tx_priest_shengminghuifu_hit.ini")

	BC( "chat", "player", -1, "Coins Cost: ", $cost_money)
	
	
}

function CostMoney(){

	$max_hp = GetPlayerInfo( -1, "maxhp")
	$max_mp = GetPlayerInfo( -1, "maxmp")
	$hp = GetPlayerInfo( -1, "hp")
	$mp = GetPlayerInfo( -1, "mp")
	$level = GetPlayerInfo( -1, "level")
	
	$a = $max_hp - $hp
	$b = $max_mp - $mp
	$c = $a + $b
	$d = $level + 30
	$e = $c * $d
	$cost_money = $e / 1350
	
	$cost_money *= 3
	
}