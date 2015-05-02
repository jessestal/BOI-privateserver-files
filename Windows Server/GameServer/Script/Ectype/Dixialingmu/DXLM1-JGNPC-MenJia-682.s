	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???478-1?NPC????(?)683
	//		TaskID:DXLM1-JGNPC-MenJia-682.s
	//
	//****************************************
	
	function OnRequest(){


}

	function OnOption0(){
		
		BC("chat", "player", -1, "Those who have not attained sufficient understanding cannot open the gate!")
		BC("screen", "player", -1, "You cannot open Nirvana's Gateway without Nirvana's Mirror.")
		
	
	}