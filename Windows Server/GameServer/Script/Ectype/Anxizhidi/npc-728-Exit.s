		//****************************************
		//
		//		Copyright：PERFECT WORLD
		//		Modified：2011-12
		//		Author：胡斌涛
		//		TaskName：安息之地
		//		TaskID：
		//
		//****************************************

		function OnRequest(){

			$playerid = GetPlayerID()
			$ectype_id = GetEctypeID($playerid, 531 )

		}


		function OnOption0(){
			
			FlyToMap(-1,280,32,27)

		}
