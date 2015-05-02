	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/14
	//		Author:??
	//		TaskName:Item-40041.s
	//		TaskID:????
	//
	//****************************************
	function OnDead(){
			#name = GetPlayerInfo( -1, "name")
		    BC( "scrollbar", "server", -1, #name,"You've opened an Angel Chest and earned 300000 coins!" )				
			$result = DropMonsterItems(-1, 60601)
			
		}