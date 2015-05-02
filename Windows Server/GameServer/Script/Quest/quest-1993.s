	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/06/13
	//		Author:??
	//		TaskName:quest-1993.s
	//		TaskID:????????-???
	//
	//****************************************
	
	
	function OnTaskDone(){
  
   $n = GetPlayerVar( -1, 3871 ) 
   $n = $n + 550
   SetPlayerVar( -1, 3871, $n )
   BC( "chat", "player", -1, "You taught the Trial Adjucator a lesson, and Preece is very happy. He will accept your initiation from the Easter Egg of Luck. He has a reward for you of 550 Lucky Points." )
   BC( "messagebox", "player", -1, "You taught the Trial Adjucator a lesson, and Preece is very happy. He will accept your initiation from the Easter Egg of Luck. He has a reward for you of 550 Lucky Points." )
    
  }