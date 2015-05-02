	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/6/25
	//		Author:???
	//		TaskName:Explor-Monster-30050.s
	//		TaskID:????
	//****************************************
 
 
	function OnDead(){
	
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
						AddPlayerInfo( $Men1 , "item" , 63304 , 10 )
					endif
				endif
			endif
			if $Men2 != -1
				$mapid2 = GetPlayerInfo( $Men2 , "mapid" )
				$nullitem2 = GetPlayerInfo( $Men2 , "nullitem" , 0 )
				if $mapid2 == 186
					if $nullitem2 > 0
						AddPlayerInfo( $Men2 , "item" , 63304 , 10 )
					endif
				endif
			endif
			if $Men3 != -1
				$mapid3 = GetPlayerInfo( $Men3 , "mapid" )
				$nullitem3 = GetPlayerInfo( $Men3 , "nullitem" , 0 )
				if $mapid3 == 186
					if $nullitem3 > 0
						AddPlayerInfo( $Men3 , "item" , 63304 , 10 )
						endif
				endif
			endif
			if $Men4 != -1
				$mapid4 = GetPlayerInfo( $Men4 , "mapid" )
				$nullitem4 = GetPlayerInfo( $Men4 , "nullitem" , 0 )
				if $mapid4 == 186
					if $nullitem4 > 0
						AddPlayerInfo( $Men4 , "item" , 63304 , 10 )
					endif
				endif
			endif
			if $Men5 != -1
				$mapid5 = GetPlayerInfo( $Men5 , "mapid" )
				$nullitem5 = GetPlayerInfo( $Men5 , "nullitem" , 0 )
				if $mapid5 == 186
					if $nullitem5 > 0
						AddPlayerInfo( $Men5 , "item" , 63304 , 10 )
					endif
				endif
			endif
			if $Men6 != -1
				$mapid6 = GetPlayerInfo( $Men6 , "mapid" )
				$nullitem6 = GetPlayerInfo( $Men6 , "nullitem" , 0 )
				if $mapid6 == 186
					if $nullitem6 > 0
						AddPlayerInfo( $Men6 , "item" , 63304 , 10 )
					endif
				endif
			endif
		else
			AddPlayerInfo( -1 , "item" , 63304 , 10 )
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
	
	}
	