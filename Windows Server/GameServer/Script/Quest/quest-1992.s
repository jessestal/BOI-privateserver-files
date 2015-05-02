	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/06/13
	//		Author:??
	//		TaskName:quest-1992.s
	//		TaskID:????????-????
	//
	//****************************************
	
	
	function OnTaskDone(){
      
   $n = GetPlayerVar( -1, 3871 ) 
   $n = $n + 550
   SetPlayerVar( -1, 3871, $n )
   BC( "chat", "player", -1, "You have completed the Warning of Wisdom 10 times. Oalid is satisfied with your progress and will accept your initiation from the Easter Egg of Luck. She has a reward for you of 550 Lucky Points." )
   BC( "messagebox", "player", -1, "You have completed the Warning of Wisdom 10 times. Oalid is satisfied with your progress and will accept your initiation from the Easter Egg of Luck. She has a reward for you of 550 Lucky Points." )
   
  }