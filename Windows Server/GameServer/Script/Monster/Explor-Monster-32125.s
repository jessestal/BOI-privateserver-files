	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/6/25
	//		Author:???
	//		TaskName:Explor-Monster-32125.s
	//		TaskID:?????
	//****************************************
 
 
	function OnDead(){
	
	
	//?????57 ????????
		$count = GetTeamMemberCount( -1 )
		if $count > 1
			$Men1 = GetTeamMemberID( -1 , 0 )
			$Men2 = GetTeamMemberID( -1 , 1 )
			$Men3 = GetTeamMemberID( -1 , 2 )
			$Men4 = GetTeamMemberID( -1 , 3 )
			$Men5 = GetTeamMemberID( -1 , 4 )
			$Men6 = GetTeamMemberID( -1 , 5 )
		//----????5???------??------
			if $Men1 != -1
				$mapid1 = GetPlayerInfo( $Men1 , "mapid" )
				$nullitem1 = GetPlayerInfo( $Men1 , "nullitem" , 0 )
				if $mapid1 == 186
					if $nullitem1 > 0
						AddPlayerInfo( $Men1 , "item" , 63304 , 5 )
					endif
				endif
			endif
			if $Men2 != -1
				$mapid2 = GetPlayerInfo( $Men2 , "mapid" )
				$nullitem2 = GetPlayerInfo( $Men2 , "nullitem" , 0 )
				if $mapid2 == 186
					if $nullitem2 > 0
						AddPlayerInfo( $Men2 , "item" , 63304 , 5 )
					endif
				endif
			endif
			if $Men3 != -1
				$mapid3 = GetPlayerInfo( $Men3 , "mapid" )
				$nullitem3 = GetPlayerInfo( $Men3 , "nullitem" , 0 )
				if $mapid3 == 186
					if $nullitem3 > 0
						AddPlayerInfo( $Men3 , "item" , 63304 , 5 )
						endif
				endif
			endif
			if $Men4 != -1
				$mapid4 = GetPlayerInfo( $Men4 , "mapid" )
				$nullitem4 = GetPlayerInfo( $Men4 , "nullitem" , 0 )
				if $mapid4 == 186
					if $nullitem4 > 0
						AddPlayerInfo( $Men4 , "item" , 63304 , 5 )
					endif
				endif
			endif
			if $Men5 != -1
				$mapid5 = GetPlayerInfo( $Men5 , "mapid" )
				$nullitem5 = GetPlayerInfo( $Men5 , "nullitem" , 0 )
				if $mapid5 == 186
					if $nullitem5 > 0
						AddPlayerInfo( $Men5 , "item" , 63304 , 5 )
					endif
				endif
			endif
			if $Men6 != -1
				$mapid6 = GetPlayerInfo( $Men6 , "mapid" )
				$nullitem6 = GetPlayerInfo( $Men6 , "nullitem" , 0 )
				if $mapid6 == 186
					if $nullitem6 > 0
						AddPlayerInfo( $Men6 , "item" , 63304 , 5 )
					endif
				endif
			endif
		else
			AddPlayerInfo( -1 , "item" , 63304 , 5 )
		endif
		//------????-----??-----
		$crystal = GetServerVar( 55 )
		$m = GetPlayerInfo( -1 , "item", 63304 )
		$headerID = GetTeamHeaderID( -1 )
		#name1 = GetPlayerInfo( $headerID , "name" )
		if $m > $crystal
			SetServerVar( 55 , $m )
			if $m == 40
				BC( "screen", "map", 186, "[", #name1 ,"]team has gathered ", $m ," Star Shard(s)!")
				BC( "chat", "map", 186, "[", #name1 ,"]team has gathered ", $m ," Star Shard(s)!")
				AddStatus( $headerID , 10587 , 1 )
			endif
			if $m == 41
				BC( "screen", "map", 186, "[", #name1 ,"]team has gathered ", $m ," Star Shard(s)!")
				BC( "chat", "map", 186, "[", #name1 ,"]team has gathered ", $m ," Star Shard(s)!")
				AddStatus( $headerID , 10587 , 1 )
			endif
			
			if $m == 50
				BC( "screen", "map", 186, "[", #name1 ,"]team has gathered ", $m ," Star Shard(s)!")
				BC( "chat", "map", 186, "[", #name1 ,"]team has gathered ", $m ," Star Shard(s)!")
				AddStatus( $headerID , 10587 , 1 )
			endif
			if $m == 51
				BC( "screen", "map", 186, "[", #name1 ,"]team has gathered ", $m ," Star Shard(s)!")
				BC( "chat", "map", 186, "[", #name1 ,"]team has gathered ", $m ," Star Shard(s)!")
				AddStatus( $headerID , 10587 , 1 )
			endif
					
			if $m == 60
				BC( "screen", "map", 186, "[", #name1 ,"]team has gathered ", $m ," Star Shard(s)!")
				BC( "chat", "map", 186, "[", #name1 ,"]team has gathered ", $m ," Star Shard(s)!")
				AddStatus( $headerID , 10587 , 1 )
			endif
			if $m == 61
				BC( "screen", "map", 186, "[", #name1 ,"]team has gathered ", $m ," Star Shard(s)!")
				BC( "chat", "map", 186, "[", #name1 ,"]team has gathered ", $m ," Star Shard(s)!")
				AddStatus( $headerID , 10587 , 1 )
			endif
					
			if $m == 70
				BC( "screen", "map", 186, "[", #name1 ,"]team needs 10 Star Shards to finish the quest!")
				BC( "chat", "map", 186, "[", #name1 ,"]team needs 10 Star Shards to finish the quest!")
				AddStatus( $headerID , 10587 , 1 )
			endif
			if $m == 71
				BC( "screen", "map", 186, "[", #name1 ,"]team needs 9 Star Shards to finish the quest!")
				BC( "chat", "map", 186, "[", #name1 ,"]team needs 9 Star Shards to finish the quest!")
				AddStatus( $headerID , 10587 , 1 )
			endif
			if $m > 75
				if $m < 80
					$n = 80 - $m
					BC( "screen", "map", 186, "[", #name1 ,"]team needs ", $n ," Star Shard(s) to finish the 80-shard collection quest.")
					BC( "chat", "map", 186, "[", #name1 ,"]team needs ", $n ," Star Shard(s) to finish the 80-shard collection quest.")
				endif
			endif
			if $m == 80
				BC( "screen", "map", 186, "[", #name1 ,"]team has finished the quest.")
				BC( "chat", "map", 186, "[", #name1 ,"]team has finished the quest.")
			endif
				//------????-----??-----
		endif
		
		$a = GetServerVar( 57 )
		$b = $a + 1
		SetServerVar( 57 , $b )
		if $b < 40
			if $b > 30
				BC( "screen", "map", 186 , "The soul of the guardian gathers above Outer Starway. Void Emperor's turbid voice is heard from afar." )
				BC( "chat", "map", 186 , "The soul of the guardian gathers above Outer Starway. Void Emperor's turbid voice is heard from afar." )
			endif
		endif
		//--??????,???????????BUFF	
		if $b == 40
			PlayEffect( 0 , "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			BC( "screen", "map", 186, "Void Emperor is unleashing his overwhelming power, which has then stopped the time!")
			AddStatusToMap(186,10653,1)
			$n = RandomNumber ( 1, 5 )
			if $n == 1
				AddMonster(30050, 1, 186,81, 64, 0 )
				BC("screen", "map", 186 , "Void Emperor has come to Aquarius area!")
			endif
			
			if $n == 2
				AddMonster(30050, 1, 186,57, 77, 0 )
				BC("screen", "map", 186 , "Void Emperor has come to Libra area!")
			endif
			
			if $n == 3
				AddMonster(30050, 1, 186,75, 76, 0 )
				BC("screen", "map", 186 , "Void Emperor has come to Sagittarius area!")
			endif
			
			if $n == 4
				AddMonster(30050, 1, 186,44, 63, 0 )
				BC("screen", "map", 186 , "Void Emperor has come to Leo area!")
			endif
			
			if $n == 5
				AddMonster(30050, 1, 186,64, 45, 0 )
				BC("screen", "map", 186 , "Void Emperor has come to Aquarius area!")
			endif
		endif
		if $b > 40
			return
		endif
		
		
			
	}
	