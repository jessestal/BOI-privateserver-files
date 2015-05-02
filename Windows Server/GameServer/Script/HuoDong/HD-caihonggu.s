	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/25
	//		Author:???
	//		TaskName:????
	//		TaskID:HD-caihonggu.s
	//
	//****************************************

	function OnRequest(){
		$result2 = IsTaskAccept( -1, 1863 )
		$result3 = IsTaskAccept( -1, 1864 )
		$result4 = IsTaskAccept( -1, 1865 )
		
		$week = GetNowWeek()
		$last_1863 = GetPlayerVar(-1 , 3336)
		$last_1864 = GetPlayerVar(-1 , 3337)
		$last_1865 = GetPlayerVar(-1 , 3338)
		
		if $last_1863 != $week
			DisableNpcOption(2)
			DisableNpcOption(3)
			if $result2 == 0
				DisableNpcOption(1)
			endif
			return
		endif

		if $last_1864 != $week
			DisableNpcOption(1)
			DisableNpcOption(3)
			if $result3 == 0
				DisableNpcOption(2)
			endif
			return
		endif

		if $last_1865 != $week
			DisableNpcOption(1)
			DisableNpcOption(2)
			if $result4 == 0
				DisableNpcOption(3)
			endif
			return
		endif

		if $last_1863 == $week
			if $last_1864 == $week
				if $last_1865 == $week
					DisableNpcOption(1)
					DisableNpcOption(2)
					DisableNpcOption(3)
					return
				endif
				return
			endif
			return
		endif

	}
	
	function OnOption0(){
		FlyToMap( -1 , 153 , 58 , 86 )
	}	

	function OnOption1(){
		
		//??????
			AcceptTask( -1, 1863 )

	}
		
	function OnOption2(){

	//??????
		$ectype_id = GetEctypeID(-1 , 558)
		$lv = GetPlayerInfo(-1 , "level")
		$monster_fieldlevel = GetFieldLevel( -1 )

			AcceptTask( -1, 1864 )
			AddNPC(812 , -1)
			AddNPC(813 , -1)
			AddNPC(814 , -1)
			AddNPC(815 , -1)
			AddNPC(816 , -1)
			AddNPC(817 , -1)
			AddNPC(818 , -1)

		if $monster_fieldlevel > 0
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 73 , 44 , 1)
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 72 , 46 , 1)
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 76 , 47 , 1)
			BC( "screen" , "map" , $ectype_id , "The first group of invaders are here. Tormented Minions have appeared at 193, 112!")
			BC( "chat" , "map" , $ectype_id , "The first group of invaders are here. Tormented Minions have appeared at 193, 112!" )
		else
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 73 , 44 , 1)
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 72 , 46 , 1)
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 76 , 47 , 1)
			BC( "screen" , "map" , $ectype_id , "The first group of invaders are here. Tormented Minions have appeared at 193, 112!")
			BC( "chat" , "map" , $ectype_id , "The first group of invaders are here. Tormented Minions have appeared at 193, 112!" )
		endif
		
	}
	
	function OnOption3(){		

	//??????
			AcceptTask( -1, 1865 )

	}

	function OnOption4(){

		$ectype_id = GetEctypeID(-1 , 558)
		$Done2 = IsTaskDone( -1 , 1863 )
		$Done3 = IsTaskDone( -1 , 1864 )
		$Done4 = IsTaskDone( -1 , 1865 )
		
		if $Done2 != 0
			BC( "screen" , "player" , -1 , "Please first complete the Rainbow Crystal, Rainbow Protection and Rainbow Seal quests!" )
			BC( "chat" , "player" , -1 , "Please first complete the Rainbow Crystal, Rainbow Protection and Rainbow Seal quests!" )
			return
		endif

		if $Done3 != 0
			BC( "screen" , "player" , -1 , "Please first complete the Rainbow Protection and Rainbow Seal quests!" )
			BC( "chat" , "player" , -1 , "Please first complete the Rainbow Protection and Rainbow Seal quests!" )
			return
		endif

		if $Done4 != 0
			BC( "screen" , "player" , -1 , "Please first complete the Rainbow Seal quest!" )
			BC( "chat" , "player" , -1 , "Please first complete the Rainbow Seal quest!" )
			return
		endif

		$baoxiang = GetEctypeVar( $ectype_id , 21 )
		if $baoxiang == 0
			AddMonsterByFloat( 52372, 5, $ectype_id, 110, 92, 2 , -1 )			
			AddMonsterByFloat( 52372, 5, $ectype_id, 104, 95, 2 , -1 )	
			AddMonsterByFloat( 52372, 5, $ectype_id, 100, 98, 2 , -1 )	
			AddMonsterByFloat( 52372, 5, $ectype_id, 98, 103, 2 , -1 )	
			AddMonsterByFloat( 52372, 5, $ectype_id, 97, 110, 2 , -1 )	
			AddMonsterByFloat( 52372, 5, $ectype_id, 92, 112, 2 , -1 )	
			BC("screen" , "player" , -1 , "Lucio has prepared a few honorary gifts for you at (106, 106). Hurry and see what is there!" )
			BC("dialogbox" , "player" , -1 , "Lucio has prepared a few honorary gifts for you at (106, 106). Hurry and see what is there!" )
			BC("chat" , "player" , -1 , "Lucio has prepared a few honorary gifts for you at (106, 106). Hurry and see what is there!" )
			$baoxiang = $baoxiang + 1
			SetEctypeVar($ectype_id , 21 , $baoxiang)
		else
			BC("screen" , "player" , -1 , "You've already collected your treasure chest! Let's not get greedy, now..." )			
		endif
		
	}

	function OnOption5(){
		$ectype_id = GetEctypeID(-1 , 558)
		$guanbi = GetEctypeVar( $ectype_id , 21 )
		if $guanbi == 1
			ReleaseEctype ($ectype_id )	
			FlyToMap( -1 , 153 , 58 , 86 )
			AddPlayerInfo(-1 , "item" , 59114 , 1)
			BC( "screen" , "player" , -1 , "Congratulations! You've resolved the Rainbow Crisis!" )
			BC("chat" , "player" , -1 , "Congratulations! You've resolved the Rainbow Crisis!" )
		else
			BC("screen" , "player" , -1 , "Hold on a minute, the crisis hasn't been resolved just yet! Don't be in such a hurry to leave!" )		
		endif
	}
