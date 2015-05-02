		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-12
		//		Author:???
		//		TaskName:????
		//		TaskID:
		//
		//****************************************

		function OnRequest(){

			$playerid = GetPlayerID()
			$ectype_id = GetEctypeID($playerid, 531 )
			$t295done = IsTaskDone(-1,295)
			if $t295done == 0
				DisableNpcOption(0)
			endif

		}


		function OnOption0(){
			
			$playerid = GetPlayerID()
			$ectype_id = GetEctypeID($playerid, 531 )
			$statusID = 0
			$result = AddStatus(-1,6238,1)
			if $result == 0
				BC("screen","player",-1,"You got the Force of Nature.")
			endif

		}
