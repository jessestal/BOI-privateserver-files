    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/09
	//		Author:???
	//		TaskName:59978-Surprise-Normal.s
	//		TaskID:11?????
	//
	//****************************************



	function OnUseItem(){
	  //??????
	  $level = GetPlayerInfo( -1, "level" )
	//  if $level < 60
	//     BC( "screen", "player", -1, "GUID:04788000000" )
	//     return
	//  endif
	 
	  //???????
	  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	  if $bag_count < 1
	     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the chest!" )
	     return
	  endif
	
	  //?????????
	  $mat_count = GetPlayerInfo( -1, "nullitem", 1 )
	  if $mat_count < 1
	     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the chest!" )
	     return
	  endif
	
	  //????
	  $del_count = SubPlayerInfo( -1, "item", 59978, 1 )
	  //??????????
	  if $del_count != 0
			 BC("screen","player",-1,"Error occurred when using item. Please contact Customer Service.")
	     return
	  endif

	  //????,??????Buff
	  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
	  
	  //????
	  $Luck1 = RandomNumber(1,10000)
	  if $Luck1 <= 100
	  	AddPlayerInfo(-1, "item", 59975, 1 )
	  endif
	  
	  if $Luck1 >= 101
	  	if $Luck1 <= 150
	  		AddPlayerInfo(-1, "item", 59979, 1 )
	  	endif
	  endif
	  
	  if $Luck1 >= 151
	  	if $Luck1 <= 2600
	  		AddPlayerInfo(-1, "item", 59141, 3 )
	  	endif
	  endif	  
	  
	  if $Luck1 >= 2601
	  	if $Luck1 <= 5100
	  		AddPlayerInfo(-1, "item", 64402, 1 )
	  	endif
	  endif	  	
	  
	  if $Luck1 >= 5101
	  	if $Luck1 <= 5400
	  		AddPlayerInfo(-1, "item", 64507, 3 )
	  	endif
	  endif		 
	  
	  if $Luck1 >= 5401
	  	if $Luck1 <= 6400
	  		AddPlayerInfo(-1, "item", 64507, 1 )
	  	endif
	  endif	
	  
	  if $Luck1 >= 6401
	  	if $Luck1 <= 6700
	  		AddPlayerInfo(-1, "item", 59838, 2 )
	  	endif
	  endif	  

	  if $Luck1 >= 6701
	  	if $Luck1 <= 7700
	  		AddPlayerInfo(-1, "item", 59838, 1 )
	  	endif
	  endif	
	  
	  if $Luck1 >= 7701
	  	if $Luck1 <= 8700
	  		AddPlayerInfo(-1, "item", 9, 2 )
	  	endif
	  endif		
	  
	  if $Luck1 >= 8701
	  	if $Luck1 <= 10000
	  		AddPlayerInfo(-1, "item", 9, 1 )
	  	endif
	  endif		    	  	    
  	  
  
  
  
}