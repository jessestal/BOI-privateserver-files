	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/12
	//		Author:???
	//		TaskName:????????
	//		TaskID:32376-BOSS1.s
	//
	//****************************************
	
	function OnDead(){


//--------------????------------------------------
//--??? ???90244  ???90246
	$playerID = GetPlayerID()
		if $playerID < 0
			return
		endif
//------------------------------------------
		$dropitemD = 90246
		$dropitemDbase = 90244
		//$droped = 0
		//$droped2 = 0
		$teamD_count = 0
		$Cid = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
			$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 9999
					$teamD_count = $teamD_count + 1
				endif
			endif
			$Cid = $Cid + 1
		endwhile

		$maskD = 60 / $teamD_count
		$maskD2 = $maskD
		$randbuff = RandomNumber( 0 , 59 )
//		BC("chat","server",-1,"teamD_count = ",$teamD_count)
		$Cid = 0
		while $Cid < 6
//			BC("chat","server",-1,"Cid = ",$Cid)
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
				$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 9999
  				if $randbuff < $maskD2
 					 #name = GetPlayerInfo( $teamplayer_id, "name" )
 						BC( "screen", "server", -1, "Player:",#name,"has defeated the Death Knight - Dyse, and luckily get Hades' Will!" )
 						BC( "chat", "server", -1, "Player:",#name,"has defeated the Death Knight - Dyse, and luckily get Hades' Will!" )
// 						BC( "chat", "server", -1, "teamplayer_id = ",$teamplayer_id)
// 						BC( "chat", "server", -1, "dropitemD = ",$dropitemD)
  					DropMonsterItems($teamplayer_id,$dropitemD)
  					AddTitle($teamplayer_id,94)
  					$maskD2 = -999
  					//$droped1 = $Cid
  				else
// 						BC( "chat", "server", -1, "teamplayer_id = ",$teamplayer_id)
// 						BC( "chat", "server", -1, "dropitemDbase = ",$dropitemDbase)
  					DropMonsterItems($teamplayer_id,$dropitemDbase)
  					AddTitle($teamplayer_id,94)
  					$maskD2 = $maskD2 + $maskD
  				endif
  			endif
			endif
			$Cid = $Cid + 1
		endwhile		
//----------------------????--------------------	
		
	
		
	}