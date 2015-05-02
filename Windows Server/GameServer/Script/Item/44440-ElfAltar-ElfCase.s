	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-8-22
	//		Author:???
	//		TaskName:44440-ElfAltar-ElfCase.s
	//		TaskID:????????
	//
	//****************************************
	
function OnUseItem(){

		//???? ????? 4681 6
		$level = GetFieldLevel(-1)
		if $level < 25
	     BC( "chat", "player", -1, "Your level is not high enough!" )
	     return
	  endif			
		
	  //???????
	  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	  if $bag_count < 2
	     BC( "chat", "player", -1, "You don't have enough space in your bag!" )
	     return
	  endif		
		
	  //???????
	  $del_count = SubPlayerInfo( -1, "item", 44440, 1 )
	  //??????????,????????
	  if $del_count != 0
	     return
	  endif

  	//----------?????????-----------
  	//??????? 4681 6 
  	//?? 44441
		
		AddPlayerInfo(-1,"item",4681,6)

}