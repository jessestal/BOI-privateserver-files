		//****************************************
		//
		//		Copyright£ºPERFECT WORLD
		//		Modified£º2012-7
		//		Author£ººú±óÌÎ
		//		TaskName£ºÄ§¾§Íõ×ù - The Throne of Magic Crystal
		//		TaskID£º
		//
		//****************************************

		function OnRequest(){
			
		$playerid = GetPlayerID()
		$guildid = GetPlayerInfo($playerid,"guildid")
		if $guildid == 0
			FlyToMap($playerid,173,55,66,0)
			return
		endif
		
		}


		function OnOption0(){

			$playerid = GetPlayerID()
			$ectype_id = GetEctypeID(-1, 561)
			
			FlyToEctype($playerid,561,77,45)
			

		}

