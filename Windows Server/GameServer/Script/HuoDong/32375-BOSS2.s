	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/12
	//		Author:???
	//		TaskName:??-??????
	//		TaskID:32375-BOSS1.s
	//
	//****************************************
	
	function OnDead(){


//--------------????------------------------------
//--??? 90243?????
	$playerID = GetPlayerID()
		if $playerID < 0
			return
		endif
//------------------------------------------
//		$dropitemD = 90246
		$dropitemDbase = 90243
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
		 #name = GetPlayerInfo( -1, "name" )
 		BC( "screen", "server", -1, "Player:",#name,"has defeated the Abyss - Dysteri with his warriors. Successfully defended the Atlantis!" )
 		BC( "chat", "server", -1, "Player:",#name,"has defeated the Abyss - Dysteri with his warriors. Successfully defended the Atlantis!" )


		$maskD = 60 / $teamD_count
		$maskD2 = $maskD
//		$randbuff = RandomNumber( 0 , 59 )
//		BC("chat","server",-1,"teamD_count = ",$teamD_count)
		$Cid = 0
		while $Cid < 6
//			BC("chat","server",-1,"Cid = ",$Cid)
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
				$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 9999

  					DropMonsterItems($teamplayer_id,$dropitemDbase)
  					$maskD2 = $maskD2 + $maskD
  				endif
  			endif
			
			$Cid = $Cid + 1
		endwhile		
//----------------------????--------------------	
		
	
		
	}