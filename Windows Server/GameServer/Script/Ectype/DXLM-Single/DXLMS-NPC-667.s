		//****************************************
		//
		//		Copyright：PERFECT WORLD
		//		Modified：2011-08-25
		//		Author：胡斌涛
		//		TaskName：单人陵墓系列
		//		TaskID：地洞478

		//
		//****************************************

	function OnRequest(){


	}


	function OnOption0(){
		//往前一步

		$ectype_id = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		
		FlyToMap($playerid,$ectype_id,110,19)
		
		
		
		

	}





