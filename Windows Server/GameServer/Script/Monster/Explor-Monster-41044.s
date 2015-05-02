	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/13
	//		Author:???
	//		TaskName:Explor-Monster-41044.s
	//		TaskID:???? 41044
	//****************************************
 
 
	function OnDead(){
	
	
	//?????55 ?????????????
	
//----------------??????-----------------	
		$p = RandomNumber ( 0 , 1000 )
		$nullitem = GetPlayerInfo( -1 , "nullitem", 0 )
		$crystalnumber = GetPlayerInfo( -1 , "item", 63304 )
		$x1 = GetPlayerInfo ( -1 , "mapx" )
		$y1 = GetPlayerInfo ( -1 , "mapy" )
		//????????
		$x = GetPlayerInfo( -1 , "mapposx")
		$y = GetPlayerInfo( -1 , "mapposy")
		$mapid = GetPlayerInfo( -1 , "mapid")
		#name = GetPlayerInfo( -1 , "name" )
		$count = GetTeamMemberCount( -1 )
		$id = GetPlayerID()
		$headerID = GetTeamHeaderID( -1 )
		$time =  GetSystemTime( "yday" )
		$level = GetPlayerInfo( -1 , "level" )
		
		if $nullitem < 1
			BC( "screen", "player", -1 , "You bag is full.")
			return
		endif
		
		//------??60%????????------ ??-----
		if $p < 600
		// ????????????,????????????????????
			if $count > 1
				$Men1 = GetTeamMemberID( -1 , 0 )
				$Men2 = GetTeamMemberID( -1 , 1 )
				$Men3 = GetTeamMemberID( -1 , 2 )
				$Men4 = GetTeamMemberID( -1 , 3 )
				$Men5 = GetTeamMemberID( -1 , 4 )
				$Men6 = GetTeamMemberID( -1 , 5 )
				//----????2???------??------
				if $headerID == $id
					if $Men1 != -1
						$mapid1 = GetPlayerInfo( $Men1 , "mapid" )
						$nullitem1 = GetPlayerInfo( $Men1 , "nullitem" , 0 )
						if $mapid1 == 186
							if $nullitem1 > 0
								AddPlayerInfo( $Men1 , "item" , 63304 , 2 )
								BC( "chat", "player", $Men1 ,"Party leader ",#name," has gained 2 Star Shards for the whole party!")
							endif
						endif
					endif
					if $Men2 != -1
						$mapid2 = GetPlayerInfo( $Men2 , "mapid" )
						$nullitem2 = GetPlayerInfo( $Men2 , "nullitem" , 0 )
						if $mapid2 == 186
							if $nullitem2 > 0
								AddPlayerInfo( $Men2 , "item" , 63304 , 2 )
								BC( "chat", "player", $Men2 ,"Party leader ",#name," has gained 2 Star Shards for the whole party!")
							endif
						endif
					endif
					if $Men3 != -1
						$mapid3 = GetPlayerInfo( $Men3 , "mapid" )
						$nullitem3 = GetPlayerInfo( $Men3 , "nullitem" , 0 )
						if $mapid3 == 186
							if $nullitem3 > 0
								AddPlayerInfo( $Men3 , "item" , 63304 , 2 )
								BC( "chat", "player", $Men3 ,"Party leader ",#name," has gained 2 Star Shards for the whole party!")
							endif
						endif
					endif
					if $Men4 != -1
						$mapid4 = GetPlayerInfo( $Men4 , "mapid" )
						$nullitem4 = GetPlayerInfo( $Men4 , "nullitem" , 0 )
						if $mapid4 == 186
							if $nullitem4 > 0
								AddPlayerInfo( $Men4 , "item" , 63304 , 2 )
								BC( "chat", "player", $Men4 ,"Party leader ",#name," has gained 2 Star Shards for the whole party!")
							endif
						endif
					endif
					if $Men5 != -1
						$mapid5 = GetPlayerInfo( $Men5 , "mapid" )
						$nullitem5 = GetPlayerInfo( $Men5 , "nullitem" , 0 )
						if $mapid5 == 186
							if $nullitem5 > 0
								AddPlayerInfo( $Men5 , "item" , 63304 , 2 )
								BC( "chat", "player", $Men5 ,"Party leader ",#name," has gained 2 Star Shards for the whole party!")
							endif
						endif
					endif
					if $Men6 != -1
						$mapid6 = GetPlayerInfo( $Men6 , "mapid" )
						$nullitem6 = GetPlayerInfo( $Men6 , "nullitem" , 0 )
						if $mapid6 == 186
							if $nullitem6 > 0
								AddPlayerInfo( $Men6 , "item" , 63304 , 2 )
								BC( "chat", "player", $Men6 ,"Party leader ",#name," has gained 2 Star Shards for the whole party!")
							endif
						endif
					endif
				endif
				//----????2???------??------
				//----????1???------??------
				if $headerID != $id
					if $Men1 != -1
						$mapid11 = GetPlayerInfo( $Men1 , "mapid" )
						$nullitem11 = GetPlayerInfo( $Men1 , "nullitem", 0 )
						if $mapid11 == 186
							if $nullitem11 > 0
								AddPlayerInfo( $Men1 , "item" , 63304 , 1 )
								BC( "chat", "player", $Men1 , #name ," has gained 1 Star Shard for the whole team.")
							endif
						endif
					endif
					if $Men2 != -1
						$mapid12 = GetPlayerInfo( $Men2 , "mapid" )
						$nullitem12 = GetPlayerInfo( $Men2 , "nullitem", 0 )
						if $mapid12 == 186
							if $nullitem12 > 0
								AddPlayerInfo( $Men2 , "item" , 63304 , 1 )
								BC( "chat", "player", $Men2 , #name ," has gained 1 Star Shard for the whole team.")
							endif
						endif
					endif
					if $Men3 != -1
						$mapid13 = GetPlayerInfo( $Men3 , "mapid" )
						$nullitem13 = GetPlayerInfo( $Men3 , "nullitem", 0 )
						if $mapid13 == 186
							if $nullitem13 > 0
								AddPlayerInfo( $Men3 , "item" , 63304 , 1 )
								BC( "chat", "player", $Men3 , #name ," has gained 1 Star Shard for the whole team.")
							endif
						endif
					endif
					if $Men4 != -1
						$mapid14 = GetPlayerInfo( $Men4 , "mapid" )
						$nullitem14 = GetPlayerInfo( $Men4 , "nullitem", 0 )
						if $mapid14 == 186
							if $nullitem14 > 0
								AddPlayerInfo( $Men4 , "item" , 63304 , 1 )
								BC( "chat", "player", $Men4 , #name ," has gained 1 Star Shard for the whole team.")
							endif
						endif
					endif
					if $Men5 != -1
						$mapid15 = GetPlayerInfo( $Men5 , "mapid" )
						$nullitem15 = GetPlayerInfo( $Men5 , "nullitem", 0 )
						if $mapid15 == 186
							if $nullitem15 > 0
								AddPlayerInfo( $Men5 , "item" , 63304 , 1 )
								BC( "chat", "player", $Men5 , #name ," has gained 1 Star Shard for the whole team.")
							endif
						endif
					endif
					if $Men6 != -1
						$mapid16 = GetPlayerInfo( $Men6 , "mapid" )
						$nullitem16 = GetPlayerInfo( $Men6 , "nullitem", 0 )
						if $mapid16 == 186
							if $nullitem16 > 0
								AddPlayerInfo( $Men6 , "item" , 63304 , 1 )
								BC( "chat", "player", $Men6 , #name ," has gained 1 Star Shard for the whole team.")
							endif
						endif
					endif
				endif
			//----????1???------??------
			else
			//----????,??2?,???1?-----
				if $headerID == $id
					AddPlayerInfo( -1 , "item" , 63304 , 2 )
					BC( "chat", "player", -1 , "You have acquired 2 Star Shards.")
				else
					AddPlayerInfo( -1 , "item" , 63304 , 1 )
					BC( "chat", "player", -1 , "You have acquired 1 Star Shard.")
				endif
			endif			
			//------????-----??-----
			$crystal = GetServerVar( 55 )
			$m = GetPlayerInfo( -1 , "item", 63304 )
			#name1 = GetPlayerInfo( $headerID , "name" )
			if $m > $crystal
				SetServerVar( 55 , $m )
				if $m == 40
					BC( "screen", "map", 186, "[", #name1 ,"]team has gathered ",$m," Star Shard(s)!")
					BC( "chat", "map", 186, "[", #name1 ,"]team has gathered ",$m," Star Shard(s)!")
					AddStatus( $headerID , 10587 , 1 )
				endif
				if $m == 41
					BC( "screen", "map", 186, "[", #name1 ,"]team has gathered ",$m," Star Shard(s)!")
					BC( "chat", "map", 186, "[", #name1 ,"]team has gathered ",$m," Star Shard(s)!")
					AddStatus( $headerID , 10587 , 1 )
				endif
			
				if $m == 50
					BC( "screen", "map", 186, "[", #name1 ,"]team has gathered ",$m," Star Shard(s)!")
					BC( "chat", "map", 186, "[", #name1 ,"]team has gathered ",$m," Star Shard(s)!")
					AddStatus( $headerID , 10587 , 1 )
				endif
				if $m == 51
					BC( "screen", "map", 186, "[", #name1 ,"]team has gathered ",$m," Star Shard(s)!")
					BC( "chat", "map", 186, "[", #name1 ,"]team has gathered ",$m," Star Shard(s)!")
					AddStatus( $headerID , 10587 , 1 )
				endif
					
				if $m == 60
					BC( "screen", "map", 186, "[", #name1 ,"]team has gathered ",$m," Star Shard(s)!")
					BC( "chat", "map", 186, "[", #name1 ,"]team has gathered ",$m," Star Shard(s)!")
					AddStatus( $headerID , 10587 , 1 )
				endif
				if $m == 61
					BC( "screen", "map", 186, "[", #name1 ,"]team has gathered ",$m," Star Shard(s)!")
					BC( "chat", "map", 186, "[", #name1 ,"]team has gathered ",$m," Star Shard(s)!")
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
						BC( "screen", "map", 186, "[", #name1 ,"]team needs ",$n," Star Shard(s) to finish the 80-shard collection quest.")
						BC( "chat", "map", 186, "[", #name1 ,"]team needs ",$n," Star Shard(s) to finish the 80-shard collection quest.")
					endif
				endif
				if $m == 80
					BC( "screen", "map", 186, "[", #name1 ,"]team has finished the quest.")
					BC( "chat", "map", 186, "[", #name1 ,"]team has finished the quest.")
				endif
				//------????-----??-----
			endif
		else
		//------40%????????-------
			AddPlayerInfo( -1 , "item" , 63421 , 1 )
		endif
		
//--------------------??????---------------------------------
		$n = RandomNumber ( 1 , 1000 )
		
		//--------??32124??------
		if $n < 150
			if $n > 80
				AddMonster( 32125 , 1 , $mapid , $x1 , $y1 , 0 )
				BC( "screen", "map", 186, "The hero ", #name ,"]has accidentally enraged the mysterious protector of the stars.")
				PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			endif
		endif
		//--------????(12???)------
		if $n < 300
			if $n > 280
				call RandomFly()
				PlayEffect( 0 , "Effect\common\xiaojinzitachuansongmen\xiaochuansongmeng_zise.ini" )
				BC( "screen", "player", -1, "You have triggered the spatial displacement of Star Shard. You are being moved to another location." )	
			endif
		endif
		//--------????------------
		if $n < 800
			if $n > 770
				UseSkill( -1 , 8586 , 1 )
			endif
		endif
		
		//--------?????------------
		if $n < 700
			if $n > 600
				AddPlayerInfo( -1 , "item" , 63391 , 1 )
			endif
		endif
	
	}
	
	function RandomFly(){	
		
		$k = RandomNumber ( 1, 10 )
		if $k == 1
			FlyToMap( -1 , 186 ,63, 61 )
		endif
		if $k == 2
			FlyToMap( -1 , 186 ,61, 63 )
		endif
		if $k == 3
			FlyToMap( -1 , 186 ,54, 83 )
		endif
		if $k == 4
			FlyToMap( -1 , 186 ,72, 80 )
		endif
		if $k == 5
			FlyToMap( -1 , 186 ,78, 65 )
		endif
		if $k == 6
			FlyToMap( -1 , 186 ,80, 59 )
		endif
		if $k == 7
			FlyToMap( -1 , 186 ,69, 48 )
		endif
		if $k == 8
			FlyToMap( -1 , 186 ,49, 55 )
		endif
		if $k == 9
			FlyToMap( -1 , 186 ,57, 47 )
		endif
		if $k == 10
			FlyToMap( -1 , 186 ,45, 66 )
		endif
				
				
	}