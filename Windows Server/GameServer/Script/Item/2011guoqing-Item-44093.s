	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/9/20
	//		Author:??
	//		TaskName:Item-44093.s
	//		TaskID:???????
	//****************************************
	
	function OnUseItem(){
		
	$GetExp = GetExpAddonTime(-1 , 0)
	
	if $GetExp >= 81000
	  BC( "screen", "player", -1, "Double EXP duration capacity is full. Cannot buy any more." )
	  return
	endif

	$result = SubPlayerInfo(-1,"item",44093,1)
	  if $result == 0
        AddExpAddons(-1, 1800, 0)
        BC( "screen", "player", -1, "You have acquired 30 minutes of double EXP duration." )
      else
	    BC( "screen", "player", -1, "Failed to use. Unknown error." )
	    return
	  endif
		
	}


