    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/05
	//		Author:???
	//		TaskName:44397-ShopofTX-gaoqiang.s
	//		TaskID:???????????
	//
	//****************************************


	function OnUseItem(){
			//???? ?????? 9

		  //??????
		  $level = GetPlayerInfo( -1, "level" )
		  if $level < 45
		     BC( "screen", "player", -1, "You need to be at least LV45 before you can use this item!" )
		     return
		  endif
		  
		  $prestige = GetPlayerInfo( -1, "prestige", 9 )
		  if $prestige < 8000
		  	BC( "chat", "player", -1, "You don't have enough Reputation to use this item!" )
		  	return
		  endif
		  
		  //???????
		  $bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		  if $bag_count < 1
		     BC( "chat", "player", -1, "You don't have enough space in your materials bag!" )
		     return
		  endif

			//??????1????
			$last_week = GetPlayerVar(-1,3425)
			$weeknow = GetNowWeek()
			if $last_week == $weeknow
				#name = GetPlayerInfo( $teamplayer_id , "name" )
				BC( "chat", "player", -1, #name ," You can only open one Major Fortify Crystal Pack a week." )
				BC( "screen", "player", -1,"You can only open one Major Fortify Crystal Pack a week." )
				return		
			endif		  
	
			//????
			$sub_pre = SubPlayerInfo(-1,"prestige", 9, 500)
			if $sub_pre != 0
				return
			endif
			
		  //???????
		  $del_count = SubPlayerInfo( -1, "item", 44397, 1 )
		  //??????????
		  if $del_count != 0
		     return
		  endif
		
		  //??????,??????
		  AddPlayerInfo(-1, "item", 9, 6 )
		  SetPlayerVar(-1,3425,$weeknow)
  

}