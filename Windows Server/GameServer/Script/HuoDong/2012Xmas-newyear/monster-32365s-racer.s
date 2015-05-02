 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName:  
 //****************************  
 
	function OnDead(){
		
		$isover = GetServerVar(299)
		if $isover > 1
			$lastrace = GetGlobalVar(299)
			$race_result_index = 291 + $lastrace
			SetGlobalVar($race_result_index,$isover)
			$lastrace += 1
			SetGlobalVar(299,$lastrace)
			SetServerVar(299,0)
			DeleteMonster(475,32373)
			AddNPC(2332)
			AddNPC(2333)
			AddNPC(2334)
			AddNPC(2335)
			if $isover == 3
				BC("screen", "servergroup", -1 , "Emerald Dragon has won first place of this round of the New Year's Race!")
				BC("chat", "servergroup", -1 , "Emerald Dragon has won first place of this round of the New Year's Race!")
			endif
			if $isover == 4
				BC("screen", "servergroup", -1 , "White Tiger has won first place of this round of the New Year's Race!")
				BC("chat", "servergroup", -1 , "White Tiger has won first place of this round of the New Year's Race!")
			endif
			if $isover == 5
				BC("screen", "servergroup", -1 , "Scarlet Phoenix has won first place of this round of the New Year's Race!")
				BC("chat", "servergroup", -1 , "Scarlet Phoenix has won first place of this round of the New Year's Race!")
			endif
			if $isover == 6
				BC("screen", "servergroup", -1 , "Dark Tortoise has won first place of this round of the New Year's Race!")
				BC("chat", "servergroup", -1 , "Dark Tortoise has won first place of this round of the New Year's Race!")
			endif
		endif
		
//		BC("chat","server",-1,"next success! lastrace = ",$lastrace)
		
	}
	