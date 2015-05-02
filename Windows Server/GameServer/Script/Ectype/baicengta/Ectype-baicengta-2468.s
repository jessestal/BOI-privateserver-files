	//****************************************
	// 
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/01
	//		Author:???|???
	//		TaskName:Ectype-baicengta-2468.s
	//		TaskID:???????
	//
	//****************************************
	
	//	3327 ????
	//	4011 ????
	//  3328 ??????????
	//  4012 ????????????
	
	function OnRequest(){
	
  }
  
  function OnOption0(){
  	$now = GetPlayerVar(-1,3327)
  	$bao = GetPlayerInfo(-1,"nullitem",0)
  	
  	 if $now == 11
  	 	if $bao > 1 	 
  	 		$result1 = AddPlayerInfo( -1, "item", 20864, 1 )
  	 		$result2 = AddPlayerInfo( -1, "item", 59940, 10 )
  	 		$result3 = $result1 + $result2
  	 		if $result3 == 0
  	 			DeleteNPC(2468,-1)
  	 		endif
  	 	else
  	 		BC( "screen" , "player" , -1, "Insufficient bag slots!" )
  	  endif
  	 endif
  	 
  	 if $now == 21
  	 	if $bao > 1
  	 		$result1 = AddPlayerInfo( -1, "item", 20865, 1 )
  	 		$result2 = AddPlayerInfo( -1, "item", 59940, 20 )
  	 		$result3 = $result1 + $result2
  	 		if $result3 == 0
  	 			DeleteNPC(2468,-1)
  	 		endif
  	 	else
  	 		BC( "screen" , "player" , -1, "Insufficient bag slots!" )
  	 	endif
  	 endif
  	 
  	 if $now == 31
  	 	if $bao > 1 
  	 		$result1 = AddPlayerInfo( -1, "item", 20866, 1 )
  	 		$result2 = AddPlayerInfo( -1, "item", 59940, 30 )
  	 		$result3 = $result1 + $result2
  	 		if $result3 == 0
  	 			DeleteNPC(2468,-1)
  	 		endif
  	 	else
  	 		BC( "screen" , "player" , -1, "Insufficient bag slots!" )
  	 	endif
  	 endif
  	 
  	 if $now == 41
  	 	if $bao > 1
  	 		$result1 = AddPlayerInfo( -1, "item", 20867, 1 )
  	 		$result2 = AddPlayerInfo( -1, "item", 59940, 36 )
  	 		$result3 = $result1 + $result2
  	 		if $result3 == 0
  	 			DeleteNPC(2468,-1)
  	 		endif
  	 	else
  	 		BC( "screen" , "player" , -1, "Insufficient bag slots!" )
  	 	endif
  	 endif
  	 
  	 if $now == 51
  	 	if $bao > 1
  	 		$result1 = AddPlayerInfo( -1, "item", 20868, 1 )
  	 		$result2 = AddPlayerInfo( -1, "item", 59940, 46 )
  	 		$result3 = $result1 + $result2
  	 		if $result3 == 0
  	 			DeleteNPC(2468,-1)
  	 		endif
  	 	else
  	 		BC( "screen" , "player" , -1, "Insufficient bag slots!" )
  	 	endif
  	 endif
  	 
  	 if $now == 61
  	 	if $bao > 1
  	 		$result1 = AddPlayerInfo( -1, "item", 20869, 1 )
  	 		$result2 = AddPlayerInfo( -1, "item", 59940, 54 )
  	 		$result3 = $result1 + $result2
  	 		if $result3 == 0
  	 			DeleteNPC(2468,-1)
  	 		endif
  	 	else
  	 		BC( "screen" , "player" , -1, "Insufficient bag slots!" )
  	 	endif
  	 endif
  	 
  	 if $now == 71
  	 	if $bao > 1
  	 		$result1 = AddPlayerInfo( -1, "item", 20870, 1 )
  	 		$result2 = AddPlayerInfo( -1, "item", 59940, 60 )
  	 		$result3 = $result1 + $result2
  	 		if $result3 == 0
  	 			DeleteNPC(2468,-1)
  	 		endif
  	 	else
  	 		BC( "screen" , "player" , -1, "Insufficient bag slots!" )
  	 	endif
  	 endif
  	 
  	 if $now == 81
  	 	if $bao > 1
  	 		$result1 = AddPlayerInfo( -1, "item", 20871, 1 )
  	 		$result2 = AddPlayerInfo( -1, "item", 59940, 64 )
  	 		$result3 = $result1 + $result2
  	 		if $result3 == 0
  	 			DeleteNPC(2468,-1)
  	 		endif
  	 	else
  	 		BC( "screen" , "player" , -1, "Insufficient bag slots!" )
  	 	endif
  	 endif
  	
  	 if $now == 91
  	 	if $bao > 1
  	 		$result1 = AddPlayerInfo( -1, "item", 20872, 1 )
  	 		$result2 = AddPlayerInfo( -1, "item", 59940, 70 )
  	 		$result3 = $result1 + $result2
  	 		if $result3 == 0
  	 			DeleteNPC(2468,-1)
  	 		endif
  	 	else
  	 		BC( "screen" , "player" , -1, "Insufficient bag slots!" )
  	 	endif
  	 endif
  	
  	 if $now == 101
  	 	if $bao > 1
  	 		$result1 = AddPlayerInfo( -1, "item", 20873, 1 )
  	 		$result2 = AddPlayerInfo( -1, "item", 59940, 80 )
  	 		$result3 = $result1 + $result2
  	 		if $result3 == 0
  	 			DeleteNPC(2468,-1)
  	 		endif
  	 	else
  	 		BC( "screen" , "player" , -1, "Insufficient bag slots!" )
  	 	endif
  	 endif
  	
  	 if $now == 20
  	 	if $bao > 1 	 
  	 		$result1 = AddPlayerInfo( -1, "item", 20864, 1 )
  	 		$result2 = AddPlayerInfo( -1, "item", 59940, 10 )
  	 		$result3 = $result1 + $result2
  	 		if $result3 == 0
  	 			DeleteNPC(2468,-1)
  	 		endif
  	 	else
  	 		BC( "screen" , "player" , -1, "Insufficient bag slots!" )
  	  endif
  	 endif
  	 
  	 if $now == 30
  	 	if $bao > 1
  	 		$result1 = AddPlayerInfo( -1, "item", 20865, 1 )
  	 		$result2 = AddPlayerInfo( -1, "item", 59940, 20 )
  	 		$result3 = $result1 + $result2
  	 		if $result3 == 0
  	 			DeleteNPC(2468,-1)
  	 		endif
  	 	else
  	 		BC( "screen" , "player" , -1, "Insufficient bag slots!" )
  	 	endif
  	 endif
  	 
  	 if $now == 40
  	 	if $bao > 1 
  	 		$result1 = AddPlayerInfo( -1, "item", 20866, 1 )
  	 		$result2 = AddPlayerInfo( -1, "item", 59940, 30 )
  	 		$result3 = $result1 + $result2
  	 		if $result3 == 0
  	 			DeleteNPC(2468,-1)
  	 		endif
  	 	else
  	 		BC( "screen" , "player" , -1, "Insufficient bag slots!" )
  	 	endif
  	 endif
  	 
  	 if $now == 50
  	 	if $bao > 1
  	 		$result1 = AddPlayerInfo( -1, "item", 20867, 1 )
  	 		$result2 = AddPlayerInfo( -1, "item", 59940, 36 )
  	 		$result3 = $result1 + $result2
  	 		if $result3 == 0
  	 			DeleteNPC(2468,-1)
  	 		endif
  	 	else
  	 		BC( "screen" , "player" , -1, "Insufficient bag slots!" )
  	 	endif
  	 endif
  	 
  	 if $now == 60
  	 	if $bao > 1
  	 		$result1 = AddPlayerInfo( -1, "item", 20868, 1 )
  	 		$result2 = AddPlayerInfo( -1, "item", 59940, 46 )
  	 		$result3 = $result1 + $result2
  	 		if $result3 == 0
  	 			DeleteNPC(2468,-1)
  	 		endif
  	 	else
  	 		BC( "screen" , "player" , -1, "Insufficient bag slots!" )
  	 	endif
  	 endif
  	 
  	 if $now == 70
  	 	if $bao > 1
  	 		$result1 = AddPlayerInfo( -1, "item", 20869, 1 )
  	 		$result2 = AddPlayerInfo( -1, "item", 59940, 55 )
  	 		$result3 = $result1 + $result2
  	 		if $result3 == 0
  	 			DeleteNPC(2468,-1)
  	 		endif
  	 	else
  	 		BC( "screen" , "player" , -1, "Insufficient bag slots!" )
  	 	endif
  	 endif
  	 
  	 if $now == 80
  	 	if $bao > 1
  	 		$result1 = AddPlayerInfo( -1, "item", 20870, 1 )
  	 		$result2 = AddPlayerInfo( -1, "item", 59940, 64 )
  	 		$result3 = $result1 + $result2
  	 		if $result3 == 0
  	 			DeleteNPC(2468,-1)
  	 		endif
  	 	else
  	 		BC( "screen" , "player" , -1, "Insufficient bag slots!" )
  	 	endif
  	 endif
  	 
  	 if $now == 90
  	 	if $bao > 1
  	 		$result1 = AddPlayerInfo( -1, "item", 20871, 1 )
  	 		$result2 = AddPlayerInfo( -1, "item", 59940, 120 )
  	 		$result3 = $result1 + $result2
  	 		if $result3 == 0
  	 			DeleteNPC(2468,-1)
  	 		endif
  	 	else
  	 		BC( "screen" , "player" , -1, "Insufficient bag slots!" )
  	 	endif
  	 endif
  	 
  	 if $now == 100
  	 	if $bao > 1
  	 		$result1 = AddPlayerInfo( -1, "item", 20872, 1 )
  	 		$result2 = AddPlayerInfo( -1, "item", 59940, 125 )
  	 		$result3 = $result1 + $result2
  	 		if $result3 == 0
  	 			DeleteNPC(2468,-1)
  	 		endif
  	 	else
  	 		BC( "screen" , "player" , -1, "Insufficient bag slots!" )
  	 	endif
  	 endif
  	 
  	 if $now == 110
  	 	if $bao > 1
  	 		$result1 = AddPlayerInfo( -1, "item", 20873, 1 )
  	 		$result2 = AddPlayerInfo( -1, "item", 59940, 125 )
  	 		$result3 = $result1 + $result2
  	 		if $result3 == 0
  	 			DeleteNPC(2468,-1)
  	 		endif
  	 	else
  	 		BC( "screen" , "player" , -1, "Insufficient bag slots!" )
  	 	endif
  	 endif
  	 
  	 
  	 
  	 
  	 
  	 
  }