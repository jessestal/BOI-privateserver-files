	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/25
	//		Author:??
	//		TaskName:Ectype-RYMC-Init.s
	//		TaskID:?????????
	//
	//****************************************
	
	function OnCreate(){
		
	
		//????????NPC
		DeleteNPC(1921, -1)
		DeleteNPC(1922, -1)
		DeleteNPC(1923, -1)
		DeleteNPC(1924, -1)
		DeleteNPC(1925, -1)

	}
	
	
	function InitTimer(){
	
	    //??????????
	    SetEctypeTimer(0, 2, "EctypeTime1")
	    
	    //?????,?????????CD
	    SetEctypeTimer(1, 3, "EctypeTime2")
	    
	    //????????,???????5?????,?1??????????
	    SetEctypeTimer(2, 60, "EctypeTime3")
	   
	    //????????,???????5?????,?10?????????
	    SetEctypeTimer(3, 10, "EctypeTime4")
	    
	    //????????,???????5?????,5??????????(???????????????)
	    SetEctypeTimer(4, 300, "EctypeTime5")
	    
	    //???BOSS???,3????????BOSS?????
	    SetEctypeTimer(5, 3, "EctypeTime6")
  
	}
	
	//????????
	function EctypeTime1(){
		//??????
		$ectype_type = GetEctypeVar(-1 ,0)
		//??????ID
		$ectype_ID = GetEctypeID(-1 ,223)
		
		if $ectype_type != 1
		//????
		//??????????????
		
			if $ectype_type == 2
			//????
				DeleteNPC(1932, -1)
				AddMonster( 51465, 10, $ectype_ID, 80, 80 , 15 )
				BC("screen", "map", $ectype_ID, "Razill: The ritual to summon Efreet will be finished soon. I'm going to dominate the world!")
			else
			//????
				DeleteNPC(1932, -1)
				AddMonster( 51155, 10, $ectype_ID, 80, 80 , 15 )
				BC("screen", "map", $ectype_ID, "Razill: The ritual to summon Efreet will be finished soon. I'm going to dominate the world!")
			endif
			
		else
		//????
			AddMonster( 51175, 10, $ectype_ID, 80, 80 , 15 )
			BC("screen", "map", $ectype_ID, "Razill: The ritual to summon Efreet will be finished soon. I'm going to dominate the world!")
		endif
		
	}
	
	//??CD
	function EctypeTime2(){

		AddNPC(1920, -1)
	}
	
	//??????,??
	function EctypeTime3(){
		//
		$white_magic = GetEctypeVar(-1 ,1)
		$black_magic = GetEctypeVar(-1 ,2)
		$esc_minute = GetEctypeVar(-1 ,110)
		$ectype_ID = GetEctypeID(-1 ,223)
		
		if $white_magic == 1
			//?????,??????
			if $black_magic == 0
				if $esc_minute > 1
					BC("screen", "map", $ectype_ID, "Iceoper will escape with the treasure in ",$esc_minute," min.")
					BC("chat", "map", $ectype_ID, "Iceoper will escape with the treasure in ",$esc_minute," min.")
				endif
			endif
		else
			//??????,?????
			if $black_magic == 1
				if $esc_minute > 1
					BC("screen", "map", $ectype_ID, "White Robe Oroine will escape with the treasure in ",$esc_minute," min.")
					BC("chat", "map", $ectype_ID, "White Robe Oroine will escape with the treasure in ",$esc_minute," min.")
				endif
			endif
		endif
		if $esc_minute > 0
			//???????,????????
			$esc_minute = $esc_minute - 1
			SetEctypeVar(-1 ,110 ,$esc_minute )
			StartEctypeTimer(-1 ,2)
		endif
		
	
	}
	//??????,1????10???
	function EctypeTime4(){
		
		$white_magic = GetEctypeVar(-1 ,1)
		$black_magic = GetEctypeVar(-1 ,2)
		$esc_minute = GetEctypeVar(-1 ,110)
		$esc_sec = GetEctypeVar(-1 ,111)
		$ectype_ID = GetEctypeID(-1 ,223)
		if $esc_minute == 0
			if $white_magic == 1
				//?????,??????
				if $black_magic == 0
					if $esc_sec > 0
						BC("screen", "map", $ectype_ID, "Iceoper will escape with the treasure in ",$esc_sec,"0 sec.")
						BC("chat", "map", $ectype_ID, "Iceoper will escape with the treasure in ",$esc_sec,"0 sec.")
					endif
				endif
			else
				//??????,?????
				if $black_magic == 1
					if $esc_minute > 0
						BC("screen", "map", $ectype_ID, "White Robe Oroine will escape with the treasure in ",$esc_sec,"0 sec.")
						BC("chat", "map", $ectype_ID, "White Robe Oroine will escape with the treasure in ",$esc_sec,"0 sec.")
					endif
				endif
			endif
			
		endif
		if $esc_sec > 0
			//???????,????????
			$esc_sec = $esc_sec - 1
			SetEctypeVar(-1 ,111 ,$esc_sec )
			StartEctypeTimer(-1 ,3)
		endif
	}
	
	function EctypeTime5(){
		
		$white_magic = GetEctypeVar(-1 ,1)
		$black_magic = GetEctypeVar(-1 ,2)
		
		$ectype_ID = GetEctypeID(-1 ,223)
	
		if $white_magic == 1
			//?????,??????
			if $black_magic == 0
				$black_magic_ID = GetEctypeVar(-1 ,113)
				RemoveMonster($black_magic_ID)
				BC("screen", "map", $ectype_ID, "Iceoper has escaped Lava Heights with Razill's Treasure Chest. The portal to the King's Throne has appeared.")
				BC("chat", "map", $ectype_ID, "Iceoper has escaped Lava Heights with Razill's Treasure Chest. The portal to the King's Throne has appeared.")
				AddNPC(1923, -1)
				AddNPC(1924, -1)
				//-------------
					//?????,????
				BC("screen", "map", $ectype_ID, "Razill: You think you can prevent me from reviving Efreet?! I'd like to see you try!")
				$ectype_type = GetEctypeVar(-1 ,0)
				if $ectype_type == 0
					AddMonster( 51153, 30,$ectype_ID, 50, 52, 20 )
					AddMonster( 51154, 10,$ectype_ID, 39, 37, 15 )
					AddMonster( 51162, 1,$ectype_ID, 34, 35, 0 )
				
				else
					if $ectype_type == 2
						AddMonster( 51463, 30,$ectype_ID, 50, 52, 20 )
						AddMonster( 51464, 10,$ectype_ID, 39, 37, 15 )
						AddMonster( 51472, 1,$ectype_ID, 34, 35, 0 )
					else
						AddMonster( 51173, 30,$ectype_ID, 50, 52, 20 )
						AddMonster( 51174, 10,$ectype_ID, 39, 37, 15 )
						AddMonster( 51182, 1,$ectype_ID, 34, 35, 0 )
					endif
				endif
			endif
		else
			//??????,?????
			if $black_magic == 1
				$white_magic_ID = GetEctypeVar(-1 ,112)
				RemoveMonster($white_magic_ID)
				BC("screen", "map", $ectype_ID, "White Robe Oroine has escaped Lava Heights with Razill's Treasure Chest. The portal to the King's Throne has appeared.")
				BC("chat", "map", $ectype_ID, "White Robe Oroine has escaped Lava Heights with Razill's Treasure Chest. The portal to the King's Throne has appeared.")
				AddNPC(1923, -1)
				AddNPC(1924, -1)
				
				//?????,????
			
				BC("screen", "map", $ectype_ID, "Razill: You think you can prevent me from reviving Efreet?! I'd like to see you try!")
				$ectype_type = GetEctypeVar(-1 ,0)
				if $ectype_type == 0
					AddMonster( 51153, 30,$ectype_ID, 50, 52, 20 )
					AddMonster( 51154, 10,$ectype_ID, 39, 37, 15 )
					AddMonster( 51162, 1,$ectype_ID, 34, 35, 0 )
				
				else
					if $ectype_type == 2
						AddMonster( 51463, 30,$ectype_ID, 50, 52, 20 )
						AddMonster( 51464, 10,$ectype_ID, 39, 37, 15 )
						AddMonster( 51472, 1,$ectype_ID, 34, 35, 0 )
					else
						AddMonster( 51173, 30,$ectype_ID, 50, 52, 20 )
						AddMonster( 51174, 10,$ectype_ID, 39, 37, 15 )
						AddMonster( 51182, 1,$ectype_ID, 34, 35, 0 )
					endif
					
				endif
			endif
		endif
	
	}
	
	function EctypeTime6(){
		
		$ectype_ID = GetEctypeID(-1 ,223)
		//????
		SetEctypeVar(-1 ,110,4)
		SetEctypeVar(-1 ,111,29)
		
		$white_magic = GetEctypeVar(-1 ,1)
		$black_magic = GetEctypeVar(-1 ,2)
		
		if $white_magic == 1
			//?????,??????
			if $black_magic == 0
				StartEctypeTimer(-1 ,2)
				StartEctypeTimer(-1 ,3)
				StartEctypeTimer(-1 ,4)
				BC("screen", "map", $ectype_ID, "Iceoper will escape with Razill's Treasure in 5 minutes!")
				BC("chat", "map", $ectype_ID, "Iceoper will escape with Razill's Treasure in 5 minutes!")
			endif
		else
			//??????,?????
			if $black_magic == 1
				StartEctypeTimer(-1 ,2)
				StartEctypeTimer(-1 ,3)
				StartEctypeTimer(-1 ,4)
				BC("screen", "map", $ectype_ID, "White Robe Oroine will escape with Razill's Treasure in 5 minutes!")
				BC("chat", "map", $ectype_ID, "White Robe Oroine will escape with Razill's Treasure in 5 minutes!")
			endif
		endif

	}
