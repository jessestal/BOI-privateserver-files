		//****************************************
		//
		//		Copyright��PERFECT WORLD
		//		Modified��2012-7
		//		Author��������
		//		TaskName��ħ������ - The Throne of Magic Crystal
		//		TaskID��
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

