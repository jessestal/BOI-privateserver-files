	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/26
	//		Author:???(??,??,??)
	//		TaskName:????
	//		TaskID:59950_treasure_+8fazhan.s
	//
	//****************************************

	function OnUseItem(){
		
		
		$item = 59950
		$itemid = 2399
			
	  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	  if $bag_count < 1
	     BC( "screen", "player", -1, "Not enough space in your bag. Please clear some space to use the Magic Chest." )
	     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to use the Magic Chest." )
	     return
	  endif		

		$revaluet = SubPlayerInfo(-1, "item", $item, 1)
		if $revaluet != 0
			BC( "chat", "player", -1, "Error using item, please try again." )
			return
		else
			AddPlayerInfo(-1, "item", $itemid, 5)
			PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )
		endif


}