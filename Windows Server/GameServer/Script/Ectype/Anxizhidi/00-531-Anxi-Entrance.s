		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-07
		//		Author:???
		//		TaskName:??????
		//		TaskID:
		//
		//****************************************

		function OnRequest(){

			$playerid = GetPlayerID()
			$player_uid = GetPlayerVar($playerid, 3856 )
			$ectype_id = GetEctypeID($playerid, 531 )
			if $ectype_id <= 0
				DisableNpcOption(1)
				DisableNpcOption(2)
			else
				DisableNpcOption(0)
			endif
//???285??,?????285????,??297?????
			$is285 = IsTaskAccept( $playerid, 285 )
			$is285d = IsTaskDone( $playerid, 285 )
			$is297d = IsTaskDone( $playerid, 297 )
			if $is285 == 1
				if $is285d == 1
					DisableNpcOption(0)
				endif
			endif			
			if $is297d == 0
				DisableNpcOption(4)
			endif
		}


		function OnOption0(){

			$team = IsPlayerInTeam(-1)
			if $team == 0
				BC( "dialogbox", "player", -1, "Please leave your Party." )
				return
			endif

			$playerid = GetPlayerID()
//?????285??NPC721?????:??????????,??????????531???161.311?
			$succeed = FlyToEctype( $playerid , 531 , 63 , 121 )
			if $succeed > 0
				$ectype_id = GetEctypeID( -1 , 531 )
				$ectype_uid = GetEctypeUniqueID( -1 , 531 )
				SetPlayerVar( -1 , 3856 , $ectype_uid )
				BC( "screen" , "player" , -1 , "You enter the Sepulcher." )
				SetEctypeVar( $ectype_id , 1 , 1 )
//				StartEctypeTimer( -1 , 531 , 1 )
			else
				BC( "dialogbox", "player", -1, "Failed to enter instance!" )
				return
			endif
//----------------------????------------------

		}

		function OnOption1(){
			//??
//			$ectype_uid = GetEctypeUniqueID( -1 , 478 )
//			$player_uid = GetPlayerVar( -1 , 3853 )
//			$ectype_id = GetEctypeID( -1 , 478 )
//			if $ectype_id <= 0
//				BC( "screen", "player", -1, "GUID:03777000003" )
//				return
//			endif
//			if $ectype_uid == $player_uid
//				$result = FlyToEctype(-1,478,89,41)
//				if $result > 0
//					BC("screen","player",-1,"GUID:03777000004")
//				else
//					BC("dialogbox","player",-1,"GUID:03777000005",$result)
//				endif
//			else
//				BC("dialogbox","player",-1,"GUID:03777000006")
//			endif
		}


		function OnOption2(){
			
			$result = ReleaseEctype (-1 , 531 )
			if $succeed == 0
				BC( "dialogbox", "player", -1, "Instance reset successfully." )
			else
				BC( "dialogbox", "player", -1, "Failed to reset Instance!" )
			endif
			
		}