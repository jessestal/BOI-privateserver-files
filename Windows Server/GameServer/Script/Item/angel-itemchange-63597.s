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
//---??ID-----
			$use = 63597
//---??ID-----
			$get = 31097
			
		$item = GetPlayerInfo( -1, "item", $use )
		$null = GetPlayerInfo( -1, "nullitem", 0 )
		


		if $null < 1
			BC( "screen", "player", -1, "Your bag is full." )
			return
		endif
		
		$Sub = SubPlayerInfo( -1, "item", $use, 1 )
		
		if $Sub0 != 0
				return
		endif				
		
		$Add = AddPlayerInfo( -1, "item", $get, 1 )
				

		}