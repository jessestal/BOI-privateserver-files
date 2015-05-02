	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-7-31
	//		Author:??
	//		TaskName:NPC-shengmingzhishu.s
	//		TaskID:????
	//****************************************
	
	function OnRequest(){
		$playernum = GetPlayerVar( -1, 210 )
		if $playernum != 0
			DisableNpcOption(0)
		endif
	}
//	function OnOption0(){
//		//????
//		$line = GetServerLineID()
//		if $line != 7
//			BC( "screen", "player", -1, "Only those in Realm 7 may water the Tree of Life!" )
//			return
//		endif		
//		//?????
//		$guangai = GetServerVar(297 )
//		//?????
//		$level = GetPlayerInfo( -1, "level" )
//		$fieldlevel = GetFieldLevel(-1 )		
//		//???
//		//((level*4-76)*6*level*level/5+400*level*level)*2
//		$exp = $level * 4
//		$exp = $exp - 76
//		$exp = $exp * 6
//		$exp = $exp * $level
//		$exp = $exp * $level
//		$exp = $exp / 5
//		$exp1 = $level * $level
//		$exp1 = 400 * $exp1
//		$exp = $exp + $exp1
//		$exp = $exp * 2
//		//???
//		//(level^2+0.6*level+1000)*350
//		if $fieldlevel != 0
//			$fieldexp = $fieldlevel * $fieldlevel
//			$fieldexp1 =  $fieldlevel * 10
//			$fieldexp1 = $fieldexp1 / 6
//			$fieldexp1 = $fieldexp1 + 1000
//			$fieldexp = $fieldexp1 + $fieldexp
//			$fieldexp = $fieldexp * 350			
//		else
//			$fieldexp = 0
//		endif
//		//??????
//		$num1 = GetPlayerInfo( -1, "item", 44376 )
//		//????????
//		$num2 = GetPlayerInfo( -1, "item", 44377 )
//		$totalnum = $num1 + $num2
//		if $totalnum < 1
//			BC( "screen", "player", -1, "You don't have any water from the Spring of Life!" )
//		endif
////		BC( "screen", "player", -1, "GUID:04790000002",$num1,"GUID:04790000003",$num1,"GUID:04790000004" )
//		if $num1 > 0
//			$result = SubPlayerInfo( -1, "item", 44376, 1 )
//			if $result == 0
//				AddPlayerInfo( -1, "exp", $exp )
//				AddFieldExp( -1, $fieldexp )
//				//????-START
//				$TJ_join_number = GetGlobalVar(882)
//				$TJ_join_number = $TJ_join_number + 1
//				SetGlobalVar(882 , $TJ_join_number)
//				SetPlayerActLog(-1,1,0)
//				//????-END
//				$guangai = $guangai + 1
////				BC( "screen", "player", -1, "GUID:04790000005",$guangai,"GUID:04790000006" )
//				SetServerVar( 297, $guangai )				
//				return
//			endif
//		endif
//		
//		//??????????
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		if $bag_count < 1
//			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
//			return
//		endif
//		
//		if $num2 > 0
//			$result = SubPlayerInfo( -1, "item", 44377, 1 )
//				if $result == 0
//				//??
//				$n = RandomNumber ( 1, 100 )
//				//4???
//				if $n > 99
//					AddPlayerInfo( -1, "item", 5981, 1 )
//					#name = GetPlayerInfo(-1 , "name")
//					BC("screen","servergroup",-1,"The hero ",#name," was lucky enough to receive a Diamond of Frigga LV4 when watering the Tree of Life!")
//					BC("chat","servergroup",-1,"The hero ",#name," was lucky enough to receive a Diamond of Frigga LV4 when watering the Tree of Life!")
//				endif
//				//3???
//				if $n > 94
//					if $n < 100
//						AddPlayerInfo( -1, "item", 5963, 1 )
//						#name = GetPlayerInfo(-1 , "name")
//						BC("screen","servergroup",-1,"The hero ",#name," was lucky enough to receive a Diamond of Frigga LV3 when watering the Tree of Life!")
//						BC("chat","servergroup",-1,"The hero ",#name," was lucky enough to receive a Diamond of Frigga LV3 when watering the Tree of Life!")
//					endif
//				endif
//				//2???
//				if $n < 95
//					AddPlayerInfo( -1, "item", 5945, 1 )
//				endif			
//					AddPlayerInfo( -1, "exp", $exp )
//					AddFieldExp( -1, $fieldexp )
//					//????-START
//					$TJ_join_number = GetGlobalVar(882)
//					$TJ_join_number = $TJ_join_number + 1
//					SetGlobalVar(882 , $TJ_join_number)
//					SetPlayerActLog(-1,1,1)
//					//????-END
//					$guangai = $guangai + 1
//					SetServerVar( 297, $guangai )
//				return
//			endif
//		endif
//		
//	}
//	
//		function OnOption1(){
//		//????
//		$line = GetServerLineID()
//		if $line != 7
//			BC( "screen", "player", -1, "Only those in Realm 7 can do that!" )
//			return
//		endif		
//		//?????
//		$guangai = GetServerVar(297 )
//		BC( "dialogbox",  "player", -1, "# of times Tree of Life has been watered: ",$guangai,"times!")	
//		}
//		function OnOption2(){
//		//????
//		$line = GetServerLineID()
//		if $line != 7
//			BC( "screen", "player", -1, "Only those in Realm 7 can undergo blessing!" )
//			return
//		endif		
//		//????????
//		//??
//		$Now_Minute =  GetSystemTime( "minute")
//		//??
//		$Now_Hour =  GetSystemTime( "hour" )
//		//??
//		$Now_Mday =  GetSystemTime( "mday" )	
//		//??
//		$Now_Month =  GetSystemTime( "month" )
//		//???.2008????
//		$Now_Year =  GetSystemTime( "year" )
//		//???.0-6
//		$Now_Week =  GetSystemTime( "week" )
//		//??????.0-365
//		$Now_Yday =  GetSystemTime( "yday" )
//		//?????
//		$guangai = GetServerVar(297 )
//		//????????3343
//		$playernum = GetPlayerVar( -1, 3343 )
//		//?????????????,?????
////		BC( "screen",  "player", -1, "1")	
//		if $playernum > 30
//			BC( "screen", "player", -1, "You received a blessing from the Tree of Life!" )
//			return
//		endif
//		if $Now_Year == 2012
//			if $Now_Month == 9
//				if $Now_Mday >= 9
//						if $Now_Hour == 21
//							if $Now_Minute >= 20
//									$result = SetPlayerVar( -1, 3343, 50 )
//									if $result == 0
//										//???????
//										//????((level*4-76)*6*level*level/5+400*level*level)*5*guangai/20000
//										//????(level^2+0.6*level+1000)*1000*guangai/20000	
//										//?????
//										$level = GetPlayerInfo( -1, "level" )
//										$fieldlevel = GetFieldLevel(-1 )				
//										$exp = $level * 4
//										$exp = $exp - 76
//										$exp = $exp * 6
//										$exp = $exp * $level
//										$exp = $exp * $level
//										$exp = $exp / 5
//										$exp1 = $level * $level
//										$exp1 = 400 * $exp1
//										$exp = $exp + $exp1
//										$exp = $exp * 5
////										BC( "chat", "player", -1, "GUID:04790000021",$exp,"GUID:04790000022" )
//										$exp = $exp / 20000
//										$exp = $exp * $guangai
////										BC( "chat", "player", -1, "GUID:04790000023",$exp,"GUID:04790000024" )
////										BC( "chat", "player", -1, "GUID:04790000025",$guangai,"GUID:04790000026" )
////										
//
//										if $fieldlevel != 0
//											$fieldexp = $fieldlevel * $fieldlevel
//											$fieldexp1 = $fieldlevel * 10
//											$fieldexp1 = $fieldexp1 / 6
//											$fieldexp1 = $fieldexp1 + 1000
//											$fieldexp = $fieldexp1 + $fieldexp
//											$fieldexp = $fieldexp * 1000
//											$fieldexp = $fieldexp * $guangai
//											$fieldexp = $fieldexp / 20000
//										else
//											$fieldexp = 0
//										endif
//										AddPlayerInfo( -1, "exp", $exp )
//										AddFieldExp( -1, $fieldexp )									
//										return
//									endif
//								endif
//						endif	
//						if $Now_Hour > 21
//								$result = SetPlayerVar( -1, 3343, 50 )
//									if $result == 0
//										//???????
//										//????((level*4-76)*6*level*level/5+400*level*level)*5*guangai/20000
//										//????(level^2+0.6*level+1000)*1000*guangai/20000	
//										//?????
//										$level = GetPlayerInfo( -1, "level" )
//										$fieldlevel = GetFieldLevel(-1 )				
//										$exp = $level * 4
//										$exp = $exp - 76
//										$exp = $exp * 6
//										$exp = $exp * $level
//										$exp = $exp * $level
//										$exp = $exp / 5
//										$exp1 = $level * $level
//										$exp1 = 400 * $exp1
//										$exp = $exp + $exp1
//										$exp = $exp * 5
////										BC( "chat", "player", -1, "GUID:04790000027",$exp,"GUID:04790000028" )
//										$exp = $exp / 20000
//										$exp = $exp * $guangai
////										BC( "chat", "player", -1, "GUID:04790000029",$exp,"GUID:04790000030" )
////										BC( "chat", "player", -1, "GUID:04790000031",$guangai,"GUID:04790000032" )
////										
//
//										if $fieldlevel != 0
//											$fieldexp = $fieldlevel * $fieldlevel
//											$fieldexp1 = $fieldlevel * 10
//											$fieldexp1 = $fieldexp1 / 6
//											$fieldexp1 = $fieldexp1 + 1000
//											$fieldexp = $fieldexp1 + $fieldexp
//											$fieldexp = $fieldexp * 1000
//											$fieldexp = $fieldexp * $guangai
//											$fieldexp = $fieldexp / 20000
//										else
//											$fieldexp = 0
//										endif
//										AddPlayerInfo( -1, "exp", $exp )
//										AddFieldExp( -1, $fieldexp )
//										
//										return			
//								endif				
//						endif
//					endif
//			endif
//		endif		
//		BC( "screen", "player", -1, "You can only receive a blessing on September 16th, from 9:20-11:59PM!" )
//		}
		function OnOption0(){
		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		$playernum = GetPlayerVar( -1, 210 )
		if $playernum == 1
			BC( "screen", "player", -1, "You've already collected your make-up prize!" )
			return
		endif
		//?????????????,?????
//		BC( "screen",  "player", -1, "1")	
		$level = GetPlayerInfo( -1, "level" )
		$fieldlevel = GetFieldLevel(-1 )		
		//???
		//((level*4-76)*6*level*level/5+400*level*level)*2
		$exp = $level * 4
		$exp = $exp - 76
		$exp = $exp * 6
		$exp = $exp * $level
		$exp = $exp * $level
		$exp = $exp / 5
		$exp1 = $level * $level
		$exp1 = 400 * $exp1
		$exp = $exp + $exp1
		$exp = $exp * 2
		$exp = $exp * 2
		//???
		//(level^2+0.6*level+1000)*350
		if $fieldlevel != 0
			$fieldexp = $fieldlevel * $fieldlevel
			$fieldexp1 =  $fieldlevel * 10
			$fieldexp1 = $fieldexp1 / 6
			$fieldexp1 = $fieldexp1 + 1000
			$fieldexp = $fieldexp1 + $fieldexp
			$fieldexp = $fieldexp * 350			
			$fieldexp = $fieldexp * 2
		else
			$fieldexp = 0
		endif		
		AddPlayerInfo( -1, "exp", $exp )
		AddFieldExp( -1, $fieldexp )
		AddPlayerInfo( -1, "item", 59838, 1 )
		SetPlayerVar( -1, 210, 1)
		BC( "screen", "player", -1, "Successfully collected make-up prize!" )
		}