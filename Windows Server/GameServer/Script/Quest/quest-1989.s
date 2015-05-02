	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/06/13
	//		Author:??
	//		TaskName:quest-1989.s
	//		TaskID:??????????-????
	//
	//****************************************
	
	
	function OnTaskDone(){

  //???????????????500????
  $n = GetPlayerVar( -1, 3871 )
  $n = $n + 500
  SetPlayerVar( -1, 3871, $n )

  
  //???????????????,???10??????
  $day = GetSystemTime( "yday" )
  $last = GetPlayerVar( -1, 4045 )
  $n = GetPlayerVar( -1, 3871 )
  //????????????????,????????????,??NPC?dialogue?????
  if $last == $day
     $n = $n + 550
     SetPlayerVar( -1, 3871, $n )
     BC( "dialogbox", "player", -1, "You successfully gave the invitation from the Easter Egg of Luck to Oalid and obtained 500 Lucky Points.\nThe Easter Egg is smarter than I thought. You will find a Mermaid in the Caribbean Sea. Here's your reward: 550 Lucky Points. Don't spend them all in one place!"
     return
  else
     AcceptTask( -1, 1992 )
     BC( "dialogbox", "player", -1, "You successfully gave the invitation from the Easter Egg of Luck to Oalid and obtained 500 Lucky Points.\nIt's a great plan to travel to the Caribbean Sea, but I'm not sure the Easter Egg will find a Mermaid.\nYou have acquired the {#ffff002a=Warning of Wisdom#} quest from Oalid."
  endif
  
  }