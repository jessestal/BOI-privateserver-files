    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/09/18
	//		Author:???
	//		TaskName:44475-MidAutumn.s
	//		TaskID:???????
	//
	//****************************************


function OnUseItem(){
	//??????
	$TaskVar = GetPlayerVar( -1, 3350 )
	if $TaskVar >= 3
				BC( "screen", "player", -1, "You've already used the Mid-Autumn Festival Gift Box three times." )
				return
			endif

  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  $bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
  if $bag_count < 2
     BC( "chat", "player", -1, "You need at least 2 empty slots in your bag before you can use that!" )
     return
  endif
  if $bag_count1 < 1
     BC( "chat", "player", -1, "You don't have enough space in your materials bag!" )
     return
  endif
  

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44475, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //??????
	AddPlayerInfo( -1, "item", 9, 2 )	
  AddPlayerInfo(-1, "item", 4942, 5 )
  AddPlayerInfo(-1, "item", 4950, 1 )
 
  $TaskVar = GetPlayerVar( -1, 3350 )
		$TaskVar = $TaskVar + 1
		SetPlayerVar( -1, 3350, $TaskVar )
		$TaskVar = GetPlayerVar( -1, 3350 )
		$TaskVar = 3 - $TaskVar
		BC( "screen", "player", -1, "Congratulations! You have opened a Mid-Autumn Festival Gift Box! You can still open the Mid-Autumn Festival Gift Box",$TaskVar," times!" )

  
}
