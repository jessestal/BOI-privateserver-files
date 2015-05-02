	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/06/13
	//		Author:??
	//		TaskName:quest-1988.s
	//		TaskID:??????????-???
	//
	//****************************************
	
	
	function OnTaskDone(){

  //???????????????500????
  $n = GetPlayerVar( -1, 3871 )
  $n = $n + 500
  SetPlayerVar( -1, 3871, $n )
  
  //???????????????,???5??????
  $day = GetSystemTime( "yday" )
  $last = GetPlayerVar( -1, 4045 )
  $n = GetPlayerVar( -1, 3871 )
  //????????????????,????????????,??NPC?dialogue?????
  if $last == $day
     $n = $n + 550
     SetPlayerVar( -1, 3871, $n )
     BC( "dialogbox", "player", -1, "You successfully gave the invitation from the Easter Egg of Luck to Garcia and obtained 500 Lucky Points.\nYou are working so hard to finishing all the quests, so I can finally travel to the Caribbean Sea with Smelly Egg. Here's your reward: 550 Lucky Points."
     return
  else
     AcceptTask( -1, 1991 )
     BC( "dialogbox", "player", -1, "You successfully gave the invitation from the Easter Egg of Luck to Garcia and obtained 500 Lucky Points.\nThere are still a lot of Magic Academy quests for you to do. If you can help me finish them 5 times, I can go out traveling.\nYou have complete the Magic Academy quest 5 times."
  endif
  
  }