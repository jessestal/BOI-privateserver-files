	//****************************************
////?????
	//****************************************
	
	function OnUseItem(){
		

		
		
		$level = GetPlayerInfo(-1,"level")
		if $level < 120
			$level += 5
			$exp = $level
			$exp *= $level
			$exp *= $level
			$exp *= $level
			$exp *= 2
			BC("chat","player",-1,"exp=",$exp)
			AddPlayerInfo(-1,"exp",$exp)
			SubPlayerInfo(-1,"item",44438,1)
		else
			$flevel = GetFieldLevel(-1)
			if $flevel > 0
				if $flevel < 40
					$flevel += 10
					$fexp = $flevel
					$fexp *= $flevel
					$fexp *= $flevel
					$fexp *= 2000
					AddFieldExp(-1,$fexp)
					SubPlayerInfo(-1,"item",44438,1)
				else
					BC("screen","player",-1,"You can't level up any higher!")
					SubPlayerInfo(-1,"item",44438,-1)
				endif
			else
				$result = ActivateFieldLevel(-1)	
				BC("screen","player",-1,"Leveled up to LV120, unlocked Exalted ")
				SubPlayerInfo(-1,"item",44438,1)
			endif
		endif
		

		
		
		
	}


