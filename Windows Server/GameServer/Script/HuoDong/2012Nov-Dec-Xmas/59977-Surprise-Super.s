    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/09
	//		Author:???
	//		TaskName:59977-Surprise-Super.s
	//		TaskID:11?????
	//
	//****************************************



	function OnUseItem(){
	  //??????
	  $level = GetPlayerInfo( -1, "level" )
	//  if $level < 60
	//     BC( "screen", "player", -1, "GUID:04787000000" )
	//     return
	//  endif
	
		$item1 = GetPlayerInfo(-1,"item",59976)
		$item2 = GetPlayerInfo(-1,"item",59979)
		$sum = $item1 + $item2
		if $sum < 1
			BC("screen","player",-1,"N/A??????????????????,??????")
			return
		endif
	 
	  //???????
	  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	  if $bag_count < 5
	     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the chest!" )
	     return
	  endif
	
	  //?????????
	  $mat_count = GetPlayerInfo( -1, "nullitem", 1 )
	  if $mat_count < 1
	     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the chest!" )
	     return
	  endif
		
		$del_count = SubPlayerInfo( -1, "item", 59977, 1 )
	  if $del_count != 0
			 BC("screen","player",-1,"Error occurred when using item. Please contact Customer Service.")
	     return
	  endif		
		
		if $item2 >= 1
		  //????
		  $del_count = SubPlayerInfo( -1, "item", 59979, 1 )
		  //??????????
		  if $del_count != 0
				 BC("screen","player",-1,"Error occurred when using item. Please contact Customer Service.")
		     return
		  endif
		else
		  $del_count = SubPlayerInfo( -1, "item", 59976, 1 )
		  //??????????
		  if $del_count != 0
				 BC("screen","player",-1,"Error occurred when using item. Please contact Customer Service.")
		     return
		  endif
		 endif				 

	  //????,??????Buff
	  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
	
	  //??????
	  AddPlayerInfo(-1, "item", 5, 6 )
	  AddPlayerInfo(-1, "item", 2222, 2 )
	  AddPlayerInfo(-1, "item", 59980, 2 )
	  
	  //????
	  $Luck1 = RandomNumber(1,10000)
	  if $Luck1 <= 2
	  	#name = GetPlayerInfo(-1,"name")
	  	$kind = RandomNumber(1,6)
	  	if $kind == 1
	  		AddPlayerInfo(-1, "item", 62573, 1 )
	  		BC("screen","server",-1,"Celestial Blessing",#name,"Open a Welcoming Chest and receive a Violet Flame Tiger Egg.")
	  	endif
	   	if $kind == 2
	  		AddPlayerInfo(-1, "item", 62579, 1 )
	  		BC("screen","server",-1,"Celestial Blessing",#name,"Open a Welcoming Chest and receive an Ocean Kirin Egg.")
	  	endif
	  	if $kind == 3
	  		AddPlayerInfo(-1, "item", 62585, 1 )
	  		BC("screen","server",-1,"Celestial Blessing",#name,"Open a Welcoming Chest and receive a Flame Shura Egg.")
	  	endif
	  	if $kind == 4
	  		AddPlayerInfo(-1, "item", 62577, 1 )
	  		BC("screen","server",-1,"Celestial Blessing",#name,"Open a Welcoming Chest and receive a Ninetail Fox Egg.")
	  	endif  	 	
	  	if $kind == 5
	  		AddPlayerInfo(-1, "item", 62603, 1 )
	  		BC("screen","server",-1,"Celestial Blessing",#name,"Open a Welcoming Chest and receive a Tidal Spirit Egg.")
	  	endif
	   	if $kind == 6
	  		AddPlayerInfo(-1, "item", 62596, 1 )
	  		BC("screen","server",-1,"Celestial Blessing",#name,"Open a Welcoming Chest and receive a Golden Giant Egg.")
	  	endif
	  endif 
	  
	  $Luck2 = RandomNumber(1,10000)
	  if $Luck2 == 1
	  	#name = GetPlayerInfo(-1,"name")
	  	$kind1 = RandomNumber(1,2)
	  	if $kind1 == 1
	  		AddPlayerInfo(-1, "item", 62069, 1 )
	  		BC("screen","server",-1,"Celestial Blessing",#name,"Open a Welcoming Chest and received a Dragonhawk.")
	  	endif
	   	if $kind1 == 2
	  		AddPlayerInfo(-1, "item", 62070, 1 )
	  		BC("screen","server",-1,"Celestial Blessing",#name,"Open a Welcoming Chest and received a Double Mount Man of Iron.")
	  	endif
	  endif 	  	  
  
  
  
}