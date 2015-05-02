	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/14
	//		Author:??
	//		TaskName:Item-40041.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){

			
		$item = GetPlayerInfo( -1, "item", 63663 )
		#name = GetPlayerInfo( -1, "name")
		
		if $item < 1
			BC( "screen", "player", -1, "Sorry! You don't have the required item." )
			return
		endif

		
		$Sub = SubPlayerInfo( -1, "item", 63663, 1 )
		
		if $Sub0 != 0
				return
		endif		
				
		BC( "scrollbar", "server", -1, #name,"Use Gift of Angel to get 300,000 coin." )	
		BC( "chat", "server", -1, #name,"Use Gift of Angel to get 300,000 coin." )	
		$Add = AddPlayerInfo( -1, "money", 300000 )
				
		}