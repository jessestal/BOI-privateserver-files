	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/10
	//		Author:??
	//		TaskName:QUEST-npc182.s
	//		TaskID:???NPC?????
	//
	//****************************************

	//????1,??975??,?????????	3700
	//????2,??975??,???????????????	3300
	//????3, ??976??,????????? 3701
	
	//??????
	function OnRequest(){
	

		$level = GetPlayerInfo( -1, "level" )
		if $level < 30
			DisableNpcOption(0)
			return
		endif
		if $level < 40
			DisableNpcOption(1)
			return
		endif
		
		$today_time = GetSystemTime( "yday" )
		
		//?????????
		$quest_time =  GetPlayerVar( -1	, 3701 )
		if $today_time == $quest_time
			DisableNpcOption(1)
		endif
	
		$quest_time =  GetPlayerVar( -1	, 3700 )
		$quest_number = GetPlayerVar( -1 , 3300 )
		
		if $today_time == $quest_time
			if $quest_number >= 5
				DisableNpcOption(0)
			endif
		endif

	}
	
	//?975???,?????5?
	function OnOption0(){

		$level = GetPlayerInfo( -1, "level" )
		if $level < 30
			BC( "messagebox", "player", -1, "Want to take this quest? You are not strong enough. Please come back when you are above LV30." )
			return
		endif
		$count = GetTaskCount ( -1 )
		if $count >= 20
			BC( "messagebox", "player", -1, "Quest list is full. Please delete some quests and try again." )
			return
		endif
		$today_time = GetSystemTime( "yday" )
		//?????????
		$quest_time =  GetPlayerVar( -1	, 3700 )
		$quest_number = GetPlayerVar( -1 , 3300 )
		
		if $today_time == $quest_time
			if $quest_number >= 5
				BC( "messagebox", "player", -1, "You have done this 5 times today. Please come back tomorrow." )
				return
			endif
		endif
		
		$result = IsTaskAccept( -1, 975 )
		if $result == 0
			BC( "messagebox", "player", -1, "Please first complete my quest for you." )
			return
		endif
		
		$result = AcceptTask( -1, 975 )
		if $result == 0
		//???????????????
			if $today_time == $quest_time
				//??????????
				$quest_number += 1
				SetPlayerVar (-1 ,3300 ,$quest_number )
				BC( "messagebox", "player", -1, "You can take this quest 5 times a day. Currently, you have taken it ",$quest_number," times." )
				//??????
			else
				//???????????????
				SetPlayerVar( -1, 3700 ,$today_time)
				//??????????1
				SetPlayerVar (-1 ,3300 ,1 )
				BC( "messagebox", "player", -1, "You can take this quest 5 times a day. Currently, you have taken it " )
			endif
		endif

	}
	
	
	//?976???,?????1?
	function OnOption1(){

		$level = GetPlayerInfo( -1, "level" )
		if $level < 40
			BC( "messagebox", "player", -1, "Want to take this quest? You are not strong enough. Please come back when you are above LV40." )
			return
		endif
		$count = GetTaskCount ( -1 )
		if $count >= 20
			BC( "messagebox", "player", -1, "Quest list is full. Please delete some quests and try again." )
			return
		endif
		$today_time = GetSystemTime( "yday" )
		//?????????
		$quest_time =  GetPlayerVar( -1	, 3701 )

		if $today_time == $quest_time
			BC( "messagebox", "player", -1, "You have done this today. Please come back tomorrow." )
			return
		endif
		
		$result = IsTaskAccept( -1, 976 )
		if $result == 0
			BC( "messagebox", "player", -1, "Please first complete my quest for you." )
			return
		endif
		
		$result = AcceptTask( -1, 976 )
		if $result == 0
			SetPlayerVar( -1, 3701 ,$today_time)
			BC( "messagebox", "player", -1, "You have received a quest." )
		endif

	}