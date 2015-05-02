	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/10
	//		Author:??
	//		TaskName:HD-cangbaotu-NPC.s
	//		TaskID:???NPC?????
	//
	//****************************************

	//????1,?????????????	3609
	//????2,????????????????,?????????????	3204
	//2012-3-12 ?????
	function OnRequest(){
		
		DisableNpcOption(0)
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 40
			DisableNpcOption(0)
			return
		endif
		
		$Line = GetServerLineID()
		if $Line != 3
			DisableNpcOption(0)
			return
		endif
		
		$today_time = GetSystemTime( "yday" )
		
		//?????????
		$quest_time =  GetPlayerVar( -1	, 3609 )
		$quest_number = GetPlayerVar( -1 , 3204 )
		//???5??????
		if $today_time == $quest_time
			if $quest_number >= 5
				DisableNpcOption(0)
				return
			endif
		endif
	}
	
	
	
	function OnOption0(){
		
	}
	
	
	function OnOption_unuse(){

		$level = GetPlayerInfo( -1, "level" )
		if $level < 40
			BC( "screen", "player", -1, "I understand your determination to take a risk, but it also needs great power to fulfill it. Please come here when your LV is above 40." )
			BC( "chat", "player", -1, "I understand your determination to take a risk, but it also needs great power to fulfill it. Please come here when your LV is above 40." )
			return
		endif
		$count = GetTaskCount ( -1 )
		if $count >= 20
			BC( "screen", "player", -1, "Your quest list is full. Please delete some and then try to accept it!" )
			BC( "chat", "player", -1, "Your quest list is full. Please delete some and then try to accept it!" )
			return
		endif
		$today_time = GetSystemTime( "yday" )
		//?????????
		$quest_time =  GetPlayerVar( -1	, 3609 )
		$quest_number = GetPlayerVar( -1 , 3204 )
		
		if $today_time == $quest_time
			if $quest_number >= 5
				BC( "screen", "player", -1, "You have already combined 5 Treasure Maps today. Please come here tomorrow!" )
				BC( "chat", "player", -1, "You have already combined 5 Treasure Maps today. Please come here tomorrow!" )
				return
			endif
		endif
		
		$result = IsTaskAccept( -1, 4330 )
		if $result == 0
			BC( "screen", "player", -1, "Please go and complete the quest I gave you at first!" )
			BC( "chat", "player", -1, "Please go and complete the quest I gave you at first!" )
			return
		endif
		
		$result = AcceptTask( -1, 4330 )
		if $result == 0
		//???????????????
			if $today_time == $quest_time
				//??????????
				$quest_number += 1
				SetPlayerVar (-1 ,3204 ,$quest_number )
				BC( "messagebox", "player", -1, "You can accept this quest at most 5 times. You just received it ",$quest_number,"times!" )
				//??????
			else
				//???????????????
				SetPlayerVar( -1, 3609 ,$today_time)
				//??????????1
				SetPlayerVar (-1 ,3204 ,1 )
				BC( "messagebox", "player", -1, "You can accept this quest at most 5 times. You just received it once!" )
           		//??-START
				$TJ_join_number = GetGlobalVar(918)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(918 , $TJ_join_number)
				//??-END		
			endif
			//??-START
			$TJ_join_number = GetGlobalVar(919)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(919 , $TJ_join_number)
			//??-END	       			
		endif

	}