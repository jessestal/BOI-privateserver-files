	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/01
	//		Author:???|???
	//		TaskName:Ectype-baicengta-npc767.s
	//		TaskID:???5?????NPC
	//
	//****************************************
	
	//	3327 ????
	function OnRequest(){
		
		//????????
		$a = GetEctypeVar( -1, 3 )
		//????????
		$b = GetEctypeVar( -1, 4 )	
		$c = GetPlayerVar(-1,3327)
		$nextceng = $c + 1
		$top = GetPlayerVar(-1,4012)
		$pid = GetPlayerID()
		if $a == 1
			if $b == 1
				if $c == 5
					SetPlayerVar( -1 , 127 , 1)
					SetLadderSucess($pid,$c)
					SetPlayerVar(-1,3327,$nextceng)
						if $nextceng > $top
							SetPlayerVar(-1,4012,$nextceng)
						endif
				endif
				if $c == 15
					SetPlayerVar( -1 , 127 , 1)
					SetLadderSucess($pid,$c)
					SetPlayerVar(-1,3327,$nextceng)
						if $nextceng > $top
							SetPlayerVar(-1,4012,$nextceng)
						endif
				endif
				if $c == 25
					SetPlayerVar( -1 , 127 , 1)
					SetLadderSucess($pid,$c)
					SetPlayerVar(-1,3327,$nextceng)
						if $nextceng > $top
							SetPlayerVar(-1,4012,$nextceng)
						endif
				endif
				if $c == 35
					SetPlayerVar( -1 , 127 , 1)
					SetLadderSucess($pid,$c)
					SetPlayerVar(-1,3327,$nextceng)
						if $nextceng > $top
							SetPlayerVar(-1,4012,$nextceng)
						endif
				endif
				if $c == 45
					SetPlayerVar( -1 , 127 , 1)
					SetLadderSucess($pid,$c)
					SetPlayerVar(-1,3327,$nextceng)
						if $nextceng > $top
							SetPlayerVar(-1,4012,$nextceng)
						endif
				endif
				if $c == 55
					SetPlayerVar( -1 , 127 , 1)
					SetLadderSucess($pid,$c)
					SetPlayerVar(-1,3327,$nextceng)
						if $nextceng > $top
							SetPlayerVar(-1,4012,$nextceng)
						endif
				endif
				if $c == 65
					SetPlayerVar( -1 , 127 , 1)
					SetLadderSucess($pid,$c)
					SetPlayerVar(-1,3327,$nextceng)
						if $nextceng > $top
							SetPlayerVar(-1,4012,$nextceng)
						endif
				endif
				if $c == 75
					SetPlayerVar( -1 , 127 , 1)
					SetLadderSucess($pid,$c)
					SetPlayerVar(-1,3327,$nextceng)
						if $nextceng > $top
							SetPlayerVar(-1,4012,$nextceng)
						endif
				endif
			endif
		endif
		
  }
  
  function OnOption0(){
  	$id = GetPlayerID()
		$drive = IsOnVehicle($id)
		$ectype_ID = GetCurEctypeID()
		if $drive == 0
			BC( "screen" , "map" , $ectype_ID , "Please leave Odin's Armor and proceed to the next level." ) 
			DisableNpcOption(0)
			DisableNpcOption(1)
			return
		endif
  	
		//??????
		$c = GetPlayerVar( -1, 3327 )
		$d = $c + 1000
		$zu = IsPlayerInTeam(-1)
		$exp1 = $c
		$exp2 = $exp1 * 900
		$lastexp = $exp2 + 230000
		if $zu != 0
			if $c == 6
				//?????
				$fly = FlyToEctype(-1 ,$d , 28 ,28 )
				if $fly > 0
					//????	
					$jiangli = GetPlayerVar( -1, 127 )
					if $jiangli == 1
						AddPlayerInfo( -1, "exp", $lastexp )
						SetPlayerVar( -1 , 127 , 0)
					endif
				else
					BC( "screen" , "map" , $ectype_ID , "The instance is currently full. Please try again later!" )	
				endif
			endif
			if $c == 16
				//?????
				$fly = FlyToEctype(-1 ,$d , 59 ,75 )
				if $fly > 0
					//????	
					$jiangli = GetPlayerVar( -1, 127 )
					if $jiangli == 1
						AddPlayerInfo( -1, "exp", $lastexp )
						SetPlayerVar( -1 , 127 , 0)
					endif
				else
					BC( "screen" , "map" , $ectype_ID , "The instance is currently full. Please try again later!" )	
				endif
			endif
			if $c == 26
				//?????
				$fly = FlyToEctype(-1 ,$d , 60 ,60 )
				if $fly > 0
					//????	
					$jiangli = GetPlayerVar( -1, 127 )
					if $jiangli == 1
						AddPlayerInfo( -1, "exp", $lastexp )
						SetPlayerVar( -1 , 127 , 0)
					endif
				else
					BC( "screen" , "map" , $ectype_ID , "The instance is currently full. Please try again later!" )	
				endif
			endif
			if $c == 36
				//?????
				$fly = FlyToEctype(-1 ,$d , 28 ,28 )
				if $fly > 0
					//????	
					$jiangli = GetPlayerVar( -1, 127 )
					if $jiangli == 1
						AddPlayerInfo( -1, "exp", $lastexp )
						SetPlayerVar( -1 , 127 , 0)
					endif
				else
					BC( "screen" , "map" , $ectype_ID , "The instance is currently full. Please try again later!" )	
				endif
			endif
			if $c == 46
				//?????
				$fly = FlyToEctype(-1 ,$d , 60 ,59 )
				if $fly > 0
					//????	
					$jiangli = GetPlayerVar( -1, 127 )
					if $jiangli == 1
						AddPlayerInfo( -1, "exp", $lastexp )
						SetPlayerVar( -1 , 127 , 0)
					endif
				else
					BC( "screen" , "map" , $ectype_ID , "The instance is currently full. Please try again later!" )	
				endif
			endif
			if $c == 56
				//?????
				$fly = FlyToEctype(-1 ,$d , 60 ,61 )
				if $fly > 0
					//????	
					$jiangli = GetPlayerVar( -1, 127 )
					if $jiangli == 1
						AddPlayerInfo( -1, "exp", $lastexp )
						SetPlayerVar( -1 , 127 , 0)
					endif
				else
					BC( "screen" , "map" , $ectype_ID , "The instance is currently full. Please try again later!" )	
				endif
			endif
			
			$exp3 = $c - 60
			$exp4 = $exp3 * 15
			$tianyuexp = $exp4 + 100
			
			if $c == 66
				//?????
				$fly = FlyToEctype(-1 ,$d , 57 ,53 )
				if $fly > 0
					//????	
					$jiangli = GetPlayerVar( -1, 127 )
					if $jiangli == 1
						AddPlayerInfo( -1, "exp", $lastexp )
						SetPlayerVar( -1 , 127 , 0)
						$tianyulv = GetFieldLevel($id)
						if $tianyulv > 0
							AddFieldExp( $id ,$tianyuexp)
						endif
					endif
				else
					BC( "screen" , "map" , $ectype_ID , "The instance is currently full. Please try again later!" )	
				endif
			endif
			if $c == 76
				//?????
				$fly = FlyToEctype(-1 ,$d , 57 ,53 )
				if $fly > 0
					//????	
					$jiangli = GetPlayerVar( -1, 127 )
					if $jiangli == 1
						AddPlayerInfo( -1, "exp", $lastexp )
						SetPlayerVar( -1 , 127 , 0)
						$tianyulv = GetFieldLevel($id)
						if $tianyulv > 0
							AddFieldExp( $id ,$tianyuexp)
						endif
					endif
				else
					BC( "screen" , "map" , $ectype_ID , "The instance is currently full. Please try again later!" )	
				endif
			endif
		else
			BC( "screen" , "map" , $ectype_ID , "The party cannot be teleported." )		
		endif
	}
	
	function OnOption1(){
		FlyToMap( -1, 475, 77, 34, 0 )
	}