	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/18
	//		Author:???
	//		TaskName:AV-NPC-1858-deliver.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	
	function OnOption0(){
	
			$Item = GetPlayerInfo( -1, "item", 12481 )
			if $Item < 5
				BC( "screen", "player", -1, "It costs you 5 Energy Stones each time you use the teleport device." )
				return
			endif
		
			$SubItem = SubPlayerInfo( -1, "item", 12481, 5 )
			if $SubItem != 0
				return
			endif
		
			$Random = RandomNumber( 1, 50 )
			if $Random <= 5
				FlyToMap( -1, 160, 86, 32 )
				SetPlayerVar( -1, 3789, 0 )
				BC( "dialogbox", "player", -1, "Welcome to the fabulous cabin of chests. It's treasure raiding time!\n\nRules:\n1.Open as many chests as you can. The more chests you open, the more EXP reward you will receive.\n2.Each time you open a chest, you'll have a chance to be teleported out. Try to be lucky.\n3.If you keep it up and open 15 chests, you will receive a spectacular unknown reward.\n\nGood luck." )
			endif
			if $Random > 5
				if $Random <= 6
					FlyToMap( -1, 160, 68, 32 )
				endif	
			endif
			if $Random > 6
				if $Random <= 23
					FlyToMap( -1, 160, 68, 51 )
				endif	
			endif
			if $Random > 23
				if $Random <= 40
					FlyToMap( -1, 160, 68, 68 )
				endif	
			endif
			if $Random > 40
				if $Random <= 50
					FlyToMap( -1, 160, 86, 68 )
				endif	
			endif
			
	}
	
	function OnOption1(){
	
			$Item = GetPlayerInfo( -1, "item", 12481 )
			if $Item < 25
				BC( "screen", "player", -1, "To go to Room "XII", you'll need 25 Energy Stones." )
				return
			endif
		
			$SubItem = SubPlayerInfo( -1, "item", 12481, 25 )
			if $SubItem != 0
				return
			endif
		
			FlyToMap( -1, 160, 86, 64 )
			
	}