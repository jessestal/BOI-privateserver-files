	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/06/13
	//		Author:??
	//		TaskName:quest-1990.s
	//		TaskID:??????????-???
	//
	//****************************************
	
	
	function OnTaskDone(){

  //???????????????500????
  $n = GetPlayerVar( -1, 3871 )
  $n = $n + 500
  SetPlayerVar( -1, 3871, $n )
  
  //????????????????
  $day = GetSystemTime( "yday" )
  $last = GetPlayerVar( -1, 4045 )
  $n = GetPlayerVar( -1, 3871 )
  //????????????????,????????????,??NPC?dialogue?????
  if $last == $day
     $n = $n + 550
     SetPlayerVar( -1, 3871, $n )
     BC( "dialogbox", "player", -1, "You successfully gave the invitation from the Easter Egg of Luck to Preece and obtained 500 Lucky Points.\nYou taught the Monsters in the Cavern of Trails quite a lesson! The Easter Egg is quite impressed and has a reward for you: 550 Lucky Points."
     return
  else
     AcceptTask( -1, 1993 )
     BC( "dialogbox", "player", -1, "You successfully gave the invitation from the Easter Egg of Luck to Preece and obtained 500 Lucky Points.\nI can travel safely if you can take care of the monsters in the Cavern of Trials.\nYou have acquired the {#ffff002a=Trial Adjudicator#} quest from Oalid.")
  endif
  
  }