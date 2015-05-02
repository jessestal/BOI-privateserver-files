//	//****************************************
//	//
//	//		Copyright:PERFECT WORLD
//	//		Modified:2010/06/25
//	//		Author:??
//	//		TaskName:Item-xinnianlibao-59611.s
//	//		TaskID:???????
//	//
//	//****************************************
//	
//	function OnUseItem(){
//		
//		$Now_Yday = GetSystemTime( "yday" )
//		$day = GetPlayerVar( -1, 4079 )
//		$cishu = GetPlayerVar( -1, 3287 )
//		
//		//??????
//		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
//		if $nullitem < 1
//			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot.")
//			return
//		endif
//		
//		
//		//??????,?????8?,???
//		if $day == $Now_Yday
//			if $cishu >= 8
//				BC( "screen", "player", -1, "Summer Treat Packs can only be used 8 times a day. " )
//				return
//			else
//				
//				$result = SubPlayerInfo( -1, "item", 59611, 1 )
//				if $result != 0
//					return
//				endif
//				
//				$cishu = $cishu + 1
//				SetPlayerVar(-1, 3287 ,$cishu )
//				$Rad = RandomNumber( 1, 10000 )
//				//2??????
//				if $Rad > 0
//					if $Rad <= 50
//						AddPlayerInfo( -1, "item", 2121, 1 )
//					endif
//				endif
//				
//				//??
//				if $Rad > 50
//					if $Rad <= 550
//						AddPlayerInfo( -1, "item", 9, 1 )
//					endif
//				endif
//				
//				//888????
//				if $Rad > 550
//					if $Rad <= 800
//						AddPlayerInfo( -1, "item", 59557, 1 )
//					endif
//				endif
//				
//				//??
//				if $Rad > 800
//					if $Rad <= 1050
//						AddPlayerInfo( -1, "item", 64402, 1 )
//					endif
//				endif
//				
//				//???
//				if $Rad > 1050
//					if $Rad <= 1550
//						AddPlayerInfo( -1, "item", 36520, 1 )
//					endif
//				endif
//				
//				//???
//				if $Rad > 1550
//					if $Rad <= 2050
//						AddPlayerInfo( -1, "item", 36519, 1 )
//					endif
//				endif
//				
//				//???
//				if $Rad > 2050
//					if $Rad <= 6250
//						AddPlayerInfo( -1, "item", 59615, 1 )
//					endif
//				endif
//				
//				
//				//?????
//				if $Rad > 6250
//					if $Rad <= 7250
//						AddPlayerInfo( -1, "item", 59141, 1 )
//					endif
//				endif
//				
//				//????
//				if $Rad > 7250
//					if $Rad <= 9200
//						AddPlayerInfo( -1, "item", 64413, 1 )
//					endif
//				endif
//				
//				//???
//				if $Rad > 9200
//					if $Rad <= 10000
//						AddPlayerInfo( -1, "item", 59614, 1 )
//					endif
//				endif
//			endif
//		else
//			SetPlayerVar(-1, 3287 ,1 )
//			SetPlayerVar(-1, 4079 ,$Now_Yday )
//			
//			
//			$result = SubPlayerInfo( -1, "item", 59611, 1 )
//			if $result != 0
//				return
//			endif
//			
//			$Rad = RandomNumber( 1, 10000 )
//				//2??????
//			if $Rad > 0
//				if $Rad <= 50
//					AddPlayerInfo( -1, "item", 2121, 1 )
//				endif
//			endif
//			
//			//??
//			if $Rad > 50
//				if $Rad <= 550
//					AddPlayerInfo( -1, "item", 9, 1 )
//				endif
//			endif
//			
//			//888????
//			if $Rad > 550
//				if $Rad <= 800
//					AddPlayerInfo( -1, "item", 59557, 1 )
//				endif
//			endif
//			
//			//??
//			if $Rad > 800
//				if $Rad <= 1050
//					AddPlayerInfo( -1, "item", 64402, 1 )
//				endif
//			endif
//			
//			//???
//			if $Rad > 1050
//				if $Rad <= 1550
//					AddPlayerInfo( -1, "item", 36520, 1 )
//				endif
//			endif
//			
//			//???
//			if $Rad > 1550
//				if $Rad <= 2050
//					AddPlayerInfo( -1, "item", 36519, 1 )
//				endif
//			endif
//			
//			//???
//			if $Rad > 2050
//				if $Rad <= 6250
//					AddPlayerInfo( -1, "item", 59615, 1 )
//				endif
//			endif
//			
//			
//			//?????
//			if $Rad > 6250
//				if $Rad <= 7250
//					AddPlayerInfo( -1, "item", 59141, 1 )
//				endif
//			endif
//			
//			//????
//			if $Rad > 7250
//				if $Rad <= 9200
//					AddPlayerInfo( -1, "item", 64413, 1 )
//				endif
//			endif
//			
//			//???
//			if $Rad > 9200
//				if $Rad <= 10000
//					AddPlayerInfo( -1, "item", 59614, 1 )
//				endif
//			endif
//		endif
//		
//		
//}