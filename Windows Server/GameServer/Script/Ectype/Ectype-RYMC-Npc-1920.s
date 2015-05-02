	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/25
	//		Author:??
	//		TaskName:Ectype-RYMC-Npc-1920.s
	//		TaskID:????????????
	//
	//****************************************
	//
	function OnRequest(){
	
		

	}
	
	//????
	function OnOption0(){
	
	
		$ectype_ID = GetEctypeID(-1 ,223)
		
		if $ectype_ID > 0
			
			$ectype_type = GetEctypeVar(-1 ,0)
			$agama_number = GetEctypeVar(-1 ,114)
			$agama_number = $agama_number + 1
			SetEctypeVar(-1 ,114 ,$agama_number )
			//??10???????
			if $agama_number < 5
				//3??????
				StartEctypeTimer(-1 , 223 ,1)
			endif
			
			#name = GetPlayerInfo(-1 , "name")
			if $ectype_type == 0
				AddMonster( 51155, 10,$ectype_ID, 80, 80, 15 )
				if $agama_number == 5
					AddMonster( 51161, 1,$ectype_ID, 80, 80, 0 )
					BC("screen", "map", $ectype_ID, "Trumpet of War breaks!")
					BC("screen", "map", $ectype_ID, "Egoniz: Who? Who disturbs my dream?")
				else
					BC("screen", "map", $ectype_ID, #name, " sounds the Trumpet of War. Inferno Firetroopers appear from the shadows!",$agama_number , " / 5")
				endif
			else
				if $ectype_type == 2
					AddMonster( 51465, 10,$ectype_ID, 80, 80, 15 )
					if $agama_number == 5
						AddMonster( 51471, 1,$ectype_ID, 80, 80, 0 )
						BC("screen", "map", $ectype_ID, "Trumpet of War breaks!")
						BC("screen", "map", $ectype_ID, "Egoniz: Who? Who disturbs my dream?")
					else
						BC("screen", "map", $ectype_ID, #name, " sounds the Trumpet of War. Inferno Firetroopers appear from the shadows!",$agama_number , " / 5"))
					endif
				else
					AddMonster( 51175, 10,$ectype_ID, 80, 80, 15 )
					if $agama_number == 5
						AddMonster( 51181, 1,$ectype_ID, 80, 80, 0 )
						BC("screen", "map", $ectype_ID, "Trumpet of War breaks!")
						BC("screen", "map", $ectype_ID, "Egoniz: Who? Who disturbs my dream?")
					else
						BC("screen", "map", $ectype_ID, #name, " sounds the Trumpet of War. Inferno Firetroopers appear from the shadows!",$agama_number , " / 5"))
					endif
				endif
			endif
			
			DeleteNPC(1920, $ectype_ID)

		endif
		
		

		
	}
	