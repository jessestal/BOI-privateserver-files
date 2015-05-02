	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/06/13
	//		Author:??
	//		TaskName:quest-1991.s
	//		TaskID:????????-???
	//
	//****************************************
	
	
	function OnTaskDone(){
         
   $n = GetPlayerVar( -1, 3871 ) 
   $n = $n + 550
   SetPlayerVar( -1, 3871, $n )
   BC( "chat", "player", -1, "You completed the Magic Academy quest. Garcia is satisfied with your progress and will accept your initiation from the Easter Egg of Luck. He has a reward for you of 500 Lucky Points." )
   BC( "messagebox", "player", -1, "You completed the Magic Academy quest. Garcia is satisfied with your progress and will accept your initiation from the Easter Egg of Luck. He has a reward for you of 500 Lucky Points." )
   
  }