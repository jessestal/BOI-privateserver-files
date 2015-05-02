	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/01
	//		Author:???|???
	//		TaskName:Ectype-baicengta-npc.s
	//		TaskID:?????Boss
	//
	//****************************************
	
	//	3327 ????
	function OnRequest(){
		
		$now = GetPlayerVar(-1,3327)
		$newnow = $now + 1000
		$nowectype_ID = GetEctypeID(-1,$newnow)
		if $now == 10
			BC( "screen" , "map" , $nowectype_ID , "The Fallen Demigod Pann is not difficult to deal with. Watch our for his stun skills and try to take him down before he recovers his health." )
		endif
		
		if $now == 20
			BC( "screen" , "map" , $nowectype_ID , "The Demonlord Halk is continually enraged. Destroy the Totem of Curse to quell his rage and to avoid the curse. Kill Halk's Avatar to prevent damage reflection." )
		endif
		
		if $now == 30
			BC( "screen" , "map" , $nowectype_ID , "The Angels of Harmony are all brothers who can resurrect each other. Careful timing is required to defeat them." )
		endif
		
		if $now == 40
			BC( "screen" , "map" , $nowectype_ID , "Best's Ghost must kill to ensure his survival. Watch out for the flames and make sure to kill his slave to get through his invincibility." )
		endif
		
		if $now == 50
			BC( "screen" , "map" , $nowectype_ID , "The Dimensional Traveler will drain your HP to heal itself if you have too much. You'll need to keep your HP low to stop his healing, but not too low if you want to survive..." )
		endif
		
		if $now == 60
			BC( "screen" , "map" , $nowectype_ID , "The Iceflame Hierach specializes in long-range magic attacks. Avoid her attacks, and strike when her shield goes down." )
		endif
		
		if $now == 70
			BC( "screen" , "map" , $nowectype_ID , "Vulcanus has control over lightning. Eliminate his servants first to keep them from cooperating." )
		endif
		
		if $now == 80
			BC( "screen" , "map" , $nowectype_ID , "Heimdallr commands the Angel Army, which in turn provide boosts to his power. Destroy the Heavenly Circles to slow the summoning of angels." )
		endif
		
		if $now == 90
			BC( "screen" , "map" , $nowectype_ID , "Although Baal is a demon, and a powerful one at that, you just need to focus on the relationships of the 4 godly attributes. The same attributes block each other, and opposing attributes will have an added damage effect." )
		endif
		
		if $now == 100
			BC( "screen" , "map" , $nowectype_ID , "Tonatiuh's wrath seems to burn with the heat of a thousand suns. The best way to deal with him is swiftly and decisively." )
		endif
		
		$ectype_ID = GetPlayerInfo(-1,"mapid")
		$nowceng = $ectype_ID - 15001
		$nowceng = $nowceng / 100
		$grandteamtip1 = $nowceng % 10
		if $grandteamtip1 != 0
			$grandteamtip2 = $nowceng % 2
			if $grandteamtip2 == 0
				$grandteamtip3 = 0
				if $nowceng >= 1
					if $nowceng < 21
						$grandteamtip3 = RandomNumber( 11, 20 )
					endif
				endif
				if $nowceng >= 21
					if $nowceng < 31
						$grandteamtip3 = RandomNumber( 10, 28 )
					endif
				endif
				if $nowceng >= 31
					if $nowceng < 41
						$grandteamtip3 = RandomNumber( 10, 29 )
					endif
				endif
				if $nowceng >= 41
					if $nowceng < 51
						$grandteamtip3 = RandomNumber( 10, 30 )
					endif
				endif
				if $nowceng >= 51
					if $nowceng < 101
						$grandteamtip3 = RandomNumber( 10, 31 )
					endif
				endif
				if $grandteamtip3 == 10
					BC( "screen" , "map" , $ectype_ID , "Scout: Able to open portals, and summon an unending stream of troops." )
				endif
				if $grandteamtip3 == 11
					BC( "screen" , "map" , $ectype_ID , "Invincible Bastion: Enters a completely defensive state, in which it will not attack players, nor can it be attacked." )
				endif
				if $grandteamtip3 == 12
					BC( "screen" , "map" , $ectype_ID , "Web Shroud: Will spawn webs to slow players." )
				endif
				if $grandteamtip3 == 13
					BC( "screen" , "map" , $ectype_ID , "Incarceration: Player is unable to move." )
				endif
				if $grandteamtip3 == 14
					BC( "screen" , "map" , $ectype_ID , "Arcane Missile: Ranged attack with a chance to silence the player." )
				endif
				if $grandteamtip3 == 15
					BC( "screen" , "map" , $ectype_ID , "War Stomp: An extra melee attack with a chance to stun the player." )
				endif
				if $grandteamtip3 == 16
					BC( "screen" , "map" , $ectype_ID , "Spell Curse: Reduces Attack and Defense." )
				endif
				if $grandteamtip3 == 17
					BC( "screen" , "map" , $ectype_ID , "Kiss of Dracula: Absorbs player's HP to supply himself." )
				endif
				if $grandteamtip3 == 18
					BC( "screen" , "map" , $ectype_ID , "Haste: Grants speed." )
				endif
				if $grandteamtip3 == 19
					BC( "screen" , "map" , $ectype_ID , "Revenge of Heaven: Has a chance to cast thunder to the players when being attacked." )
				endif
				if $grandteamtip3 == 20
					BC( "screen" , "map" , $ectype_ID , "Legion: Has an extra Elite Troop to assist." )
				endif
				if $grandteamtip3 == 21
					BC( "screen" , "map" , $ectype_ID , "Fire Dragon's Breath: Will continuously spit Flame Pillar." )
				endif
				if $grandteamtip3 == 22
					BC( "screen" , "map" , $ectype_ID , "Ghost Area: Will cast continuous ranged Magic Attack." )
				endif
				if $grandteamtip3 == 23
					BC( "screen" , "map" , $ectype_ID , "Black Death: Continuously reduces player's HP." )
				endif
				if $grandteamtip3 == 24
					BC( "screen" , "map" , $ectype_ID , "Sorcerer: Will summon a large number of magical artifacts." )
				endif
				if $grandteamtip3 == 25
					BC( "screen" , "map" , $ectype_ID , "Sacrifice: Will self-explode after death, which will deal a great damage." )
				endif
				if $grandteamtip3 == 26
					BC( "screen" , "map" , $ectype_ID , "Counterattack: Will enter Crazy Status upon death." )
				endif
				if $grandteamtip3 == 27
					BC( "screen" , "map" , $ectype_ID , "Survivor: When a member of the Elite Troop dies, the rest will become stronger." )
				endif
				if $grandteamtip3 == 28
					BC( "screen" , "map" , $ectype_ID , "Titan: Has high HP and Defense." )
				endif
				if $grandteamtip3 == 29
					BC( "screen" , "map" , $ectype_ID , "Magic and Martial Arts: Will switch between Physical Attack and Defense Attack." )
				endif
				if $grandteamtip3 == 30
					BC( "screen" , "map" , $ectype_ID , "Vital Strike: All members of the Elite Troops share the damage taken." )
				endif
				if $grandteamtip3 == 31
					BC( "screen" , "map" , $ectype_ID , "Gaia's Protection: Only one member in the Elite Troop will not be invincible." )
				endif
			endif
		endif
		
		if $now < 11
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
			DisableNpcOption(8)
			DisableNpcOption(9)
			DisableNpcOption(10)
			DisableNpcOption(11)
		endif
		
		if $now > 10
			if $now < 21
				DisableNpcOption(2)
				DisableNpcOption(4)
				DisableNpcOption(5)
				DisableNpcOption(6)
				DisableNpcOption(7)
				DisableNpcOption(8)
				DisableNpcOption(9)
				DisableNpcOption(10)
				DisableNpcOption(11)
			endif
		endif
		
		if $now > 20
			if $now < 31
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(5)
				DisableNpcOption(6)
				DisableNpcOption(7)
				DisableNpcOption(8)
				DisableNpcOption(9)
				DisableNpcOption(10)
				DisableNpcOption(11)
			endif
		endif
		
		if $now > 30
			if $now < 41
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(6)
				DisableNpcOption(7)
				DisableNpcOption(8)
				DisableNpcOption(9)
				DisableNpcOption(10)
				DisableNpcOption(11)
			endif
		endif
		
		if $now > 40
			if $now < 51
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(5)
				DisableNpcOption(7)
				DisableNpcOption(8)
				DisableNpcOption(9)
				DisableNpcOption(10)
				DisableNpcOption(11)
			endif
		endif
		
		if $now > 50
			if $now < 61
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(5)
				DisableNpcOption(6)
				DisableNpcOption(8)
				DisableNpcOption(9)
				DisableNpcOption(10)
				DisableNpcOption(11)
			endif
		endif
		
		if $now > 60
			if $now < 71
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(5)
				DisableNpcOption(6)
				DisableNpcOption(7)
				DisableNpcOption(9)
				DisableNpcOption(10)
				DisableNpcOption(11)
			endif
		endif
		
		if $now > 70
			if $now < 81
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(5)
				DisableNpcOption(6)
				DisableNpcOption(7)
				DisableNpcOption(8)
				DisableNpcOption(10)
				DisableNpcOption(11)
			endif
		endif
		
		if $now > 80
			if $now < 91
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(5)
				DisableNpcOption(6)
				DisableNpcOption(7)
				DisableNpcOption(8)
				DisableNpcOption(9)
				DisableNpcOption(11)
			endif
		endif
		
		if $now > 90
			if $now < 101
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(5)
				DisableNpcOption(6)
				DisableNpcOption(7)
				DisableNpcOption(8)
				DisableNpcOption(9)
				DisableNpcOption(10)
			endif
		endif
		
		if $now > 101
			if $now < 100000
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(5)
				DisableNpcOption(6)
				DisableNpcOption(7)
				DisableNpcOption(8)
				DisableNpcOption(9)
				DisableNpcOption(10)
				DisableNpcOption(11)
			endif
		endif
		
		$bossrush = GetPlayerVar(-1,188)
		if $bossrush == 0
			DisableNpcOption(1)
		endif
		if $bossrush == 1
			DisableNpcOption(0)
		endif
		
	}
	
	function OnOption0(){
		
  	$id = GetPlayerID()
		$bossrush = GetPlayerVar(-1,188)
		if $bossrush == 1
			return
		endif
		
		//????????
		$a = GetEctypeVar( -1, 3 )
		//????????
		$b = GetEctypeVar( -1, 4 )		
		//??????
		$c = GetPlayerVar( -1, 3327 )
		$d = $c + 1000
		$ectype_ID = GetCurEctypeID()
		$zu = IsPlayerInTeam(-1)
		$exp1 = $c - 1
		$exp2 = $exp1 * 900
		$lastexp = $exp2 + 230000
		$fly = 0
		//??????????
		if $zu != 0
			if $a == 1	
				if $b == 1	
					if $c < 11								
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
					
					if $c > 10
						if $c < 21
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
					endif
					
					if $c > 20
						if $c < 31
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
					endif
					
					if $c > 30
						if $c < 41
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
					endif
					
					if $c > 40
						if $c < 51
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
					endif
					
					if $c > 50
						if $c < 60
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
					endif
					
					if $c == 60
						$fly = FlyToEctype(-1 ,$d , 60 ,70 )
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
					
					if $c > 60
						if $c < 81
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
					endif
					
					if $c > 80
						if $c < 101
							$fly = FlyToEctype(-1 ,$d , 98 ,59 )
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
					endif
					
					if $c > 100
						BC( "screen" , "map" , $ectype_ID , "Higher levels of the Endless Stairs are coming soon!" )
					endif
				
				else
					BC( "screen" , "map" , $ectype_ID , "Not all monsters have been defeated." )
				endif
			else
				BC( "screen" , "map" , $ectype_ID , "Not all monsters have been defeated." )
			endif	
		else
			BC( "screen" , "map" , $ectype_ID , "The party cannot be teleported." )		
		endif
		//???????
		if $fly > 0
			RemoveStatusByID(-1,21625)
			RemoveStatusByID(-1,21626)
			$class = GetPlayerInfo( -1, "profession")
			if $class == 1
				AddStatus( -1, 21627, 1 )
				AddStatus( -1, 21625, 2 )
				AddStatus( -1, 21626, 2 )
			endif
			if $class == 2
				AddStatus( -1, 21627, 1 )
				if $c < 61
					AddStatus( -1, 21625, 1 )
					AddStatus( -1, 21626, 1 )
				endif
			endif
			if $class == 3
				AddStatus( -1, 21627, 1 )
			endif
			if $class == 4
				AddStatus( -1, 21627, 1 )
				AddStatus( -1, 21625, 1 )
				AddStatus( -1, 21626, 1 )
			endif
			if $class == 5
				AddStatus( -1, 21627, 1 )
				AddStatus( -1, 21625, 3 )
				AddStatus( -1, 21626, 3 )
			endif
			if $class == 6
				AddStatus( -1, 21627, 1 )
				AddStatus( -1, 21625, 1 )
				AddStatus( -1, 21626, 1 )
			endif
		endif
	}	
	
	function OnOption1(){
		
  	$id = GetPlayerID()
		$bossrush = GetPlayerVar(-1,188)
		if $bossrush == 0
			return
		endif
		
		//????????
		$a = GetEctypeVar( -1, 3 )
		//????????
		$b = GetEctypeVar( -1, 4 )		
		//??????
		$c = GetPlayerVar( -1, 3327 )
		$d = $c + 1000
		$top = GetPlayerVar( -1, 4012 )
		$ectype_ID = GetCurEctypeID()
		$zu = IsPlayerInTeam(-1)
		$exp1 = $c - 1
		$exp2 = $exp1 * 900
		$lastexp = $exp2 + 230000
		$fly = 0
		//??????????
		if $zu != 0
			if $a == 1
				if $b == 1
				 if $c <= $top
				
						if $c == 20						
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
						
						if $c == 30
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
						
						if $c == 40
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
						
						if $c == 50
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
						
						if $c == 60
							$fly = FlyToEctype(-1 ,$d , 60 ,70 )
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
						
						if $c == 70
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
						
						if $c == 80
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
						
						if $c == 90
							$fly = FlyToEctype(-1 ,$d , 98 ,59 )
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
						
						if $c == 100
							$fly = FlyToEctype(-1 ,$d ,  98 ,59 )
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
						
						if $c > 100
							BC( "screen" , "map" , $ectype_ID , "Higher levels of the Endless Stairs are coming soon!" )
						endif
					
					else
						BC( "screen" , "map" , $ectype_ID , "You haven't challenged the Boss of a higher level in the Common Mode yet." )
					endif
				else
					BC( "screen" , "map" , $ectype_ID , "Not all monsters have been defeated." )
				endif
			else
				BC( "screen" , "map" , $ectype_ID , "Not all monsters have been defeated." )
			endif	
		else
			BC( "screen" , "map" , $ectype_ID , "The party cannot be teleported." )		
		endif
		//???????
		if $fly > 0
			RemoveStatusByID(-1,21625)
			RemoveStatusByID(-1,21626)
			$class = GetPlayerInfo( -1, "profession")
			if $class == 1
				AddStatus( -1, 21627, 1 )
				AddStatus( -1, 21625, 2 )
				AddStatus( -1, 21626, 2 )
			endif
			if $class == 2
				AddStatus( -1, 21627, 1 )
				if $c < 61
					AddStatus( -1, 21625, 1 )
					AddStatus( -1, 21626, 1 )
				endif
			endif
			if $class == 3
				AddStatus( -1, 21627, 1 )
			endif
			if $class == 4
				AddStatus( -1, 21627, 1 )
				AddStatus( -1, 21625, 1 )
				AddStatus( -1, 21626, 1 )
			endif
			if $class == 5
				AddStatus( -1, 21627, 1 )
				AddStatus( -1, 21625, 3 )
				AddStatus( -1, 21626, 3 )
			endif
			if $class == 6
				AddStatus( -1, 21627, 1 )
				AddStatus( -1, 21625, 1 )
				AddStatus( -1, 21626, 1 )
			endif
		endif
	}					
					
	
  function OnOption2(){
		$max_hp = GetPlayerInfo( -1, "maxhp")
		$max_mp = GetPlayerInfo( -1, "maxmp")
		$hp = GetPlayerInfo( -1, "hp")
		$mp = GetPlayerInfo( -1, "mp")
		$add_hp = $max_hp - $hp
		$add_mp = $max_mp - $mp
		$guai1 = GetEctypeVar(-1,3)
		$guai2 = GetEctypeVar(-1,4)
		$ectype_ID = GetCurEctypeID()
		$money = GetPlayerInfo(-1,"money")
		if $money >= 10000
			if $guai1 == 1
				if $guai2 == 1
					$result = SubPlayerInfo( -1, "money",10000 )
					if $result == 0
				 		AddPlayerInfo( -1, "hp", $add_hp)
						AddPlayerInfo( -1, "mp", $add_mp)
						HealAllPet(-1)   	
						PlayEffect(-1,"skill\Priest\shengminghuifu\hit\tx_priest_shengminghuifu_hit.ini")
					endif
				else
					BC( "screen" , "map" , $ectype_ID , "You can only heal after you defeat all monsters." )
				endif
			else
				BC( "screen" , "map" , $ectype_ID , "You can only heal after you defeat all monsters." )
			endif
		else
			BC( "screen" , "map" , $ectype_ID , "You do not have enough Coins to heal." )
		endif
  }
//	
	function OnOption3(){
		$max_hp = GetPlayerInfo( -1, "maxhp")
		$max_mp = GetPlayerInfo( -1, "maxmp")
		$hp = GetPlayerInfo( -1, "hp")
		$mp = GetPlayerInfo( -1, "mp")
		$add_hp = $max_hp - $hp
		$add_mp = $max_mp - $mp
		$guai1 = GetEctypeVar(-1,3)
		$guai2 = GetEctypeVar(-1,4)
		$ectype_ID = GetCurEctypeID()
		$money = GetPlayerInfo(-1,"money")
		if $money >= 20000
			if $guai1 == 1
				if $guai2 == 1
					$result = SubPlayerInfo( -1, "money",20000 )
					if $result == 0
				 		AddPlayerInfo( -1, "hp", $add_hp)
						AddPlayerInfo( -1, "mp", $add_mp)
						HealAllPet(-1)   	
						PlayEffect(-1,"skill\Priest\shengminghuifu\hit\tx_priest_shengminghuifu_hit.ini")
					endif
				else
					BC( "screen" , "map" , $ectype_ID , "You can only heal after you defeat all monsters." )
				endif
			else
				BC( "screen" , "map" , $ectype_ID , "You can only heal after you defeat all monsters." )
			endif
		else
			BC( "screen" , "map" , $ectype_ID , "You do not have enough Coins to heal." )
		endif
	}	
//	
	function OnOption4(){
		$max_hp = GetPlayerInfo( -1, "maxhp")
		$max_mp = GetPlayerInfo( -1, "maxmp")
		$hp = GetPlayerInfo( -1, "hp")
		$mp = GetPlayerInfo( -1, "mp")
		$add_hp = $max_hp - $hp
		$add_mp = $max_mp - $mp
		$guai1 = GetEctypeVar(-1,3)
		$guai2 = GetEctypeVar(-1,4)
		$ectype_ID = GetCurEctypeID()
		$money = GetPlayerInfo(-1,"money")
		if $money >= 30000
			if $guai1 == 1
				if $guai2 == 1
					$result = SubPlayerInfo( -1, "money",30000 )
					if $result == 0
				 		AddPlayerInfo( -1, "hp", $add_hp)
						AddPlayerInfo( -1, "mp", $add_mp)
						HealAllPet(-1)   	
						PlayEffect(-1,"skill\Priest\shengminghuifu\hit\tx_priest_shengminghuifu_hit.ini")
					endif
				else
					BC( "screen" , "map" , $ectype_ID , "You can only heal after you defeat all monsters." )
				endif
			else
				BC( "screen" , "map" , $ectype_ID , "You can only heal after you defeat all monsters." )
			endif
		else
			BC( "screen" , "map" , $ectype_ID , "You do not have enough Coins to heal." )
		endif

	}	
//	
	function OnOption5(){
		$max_hp = GetPlayerInfo( -1, "maxhp")
		$max_mp = GetPlayerInfo( -1, "maxmp")
		$hp = GetPlayerInfo( -1, "hp")
		$mp = GetPlayerInfo( -1, "mp")
		$add_hp = $max_hp - $hp
		$add_mp = $max_mp - $mp
		$guai1 = GetEctypeVar(-1,3)
		$guai2 = GetEctypeVar(-1,4)
		$ectype_ID = GetCurEctypeID()
		$money = GetPlayerInfo(-1,"money")
		if $money >= 40000
			if $guai1 == 1
				if $guai2 == 1
					$result = SubPlayerInfo( -1, "money",40000 )
					if $result == 0
				 		AddPlayerInfo( -1, "hp", $add_hp)
						AddPlayerInfo( -1, "mp", $add_mp)
						HealAllPet(-1)   	
						PlayEffect(-1,"skill\Priest\shengminghuifu\hit\tx_priest_shengminghuifu_hit.ini")
					endif
				else
					BC( "screen" , "map" , $ectype_ID , "You can only heal after you defeat all monsters." )
				endif
			else
				BC( "screen" , "map" , $ectype_ID , "You can only heal after you defeat all monsters." )
			endif
		else
			BC( "screen" , "map" , $ectype_ID , "You do not have enough Coins to heal." )
		endif
	}	
//	
	function OnOption6(){
		$max_hp = GetPlayerInfo( -1, "maxhp")
		$max_mp = GetPlayerInfo( -1, "maxmp")
		$hp = GetPlayerInfo( -1, "hp")
		$mp = GetPlayerInfo( -1, "mp")
		$add_hp = $max_hp - $hp
		$add_mp = $max_mp - $mp
		$guai1 = GetEctypeVar(-1,3)
		$guai2 = GetEctypeVar(-1,4)
		$ectype_ID = GetCurEctypeID()
		$money = GetPlayerInfo(-1,"money")
		if $money >= 50000
			if $guai1 == 1
				if $guai2 == 1
					$result = SubPlayerInfo( -1, "money",50000 )
					if $result == 0
				 		AddPlayerInfo( -1, "hp", $add_hp)
						AddPlayerInfo( -1, "mp", $add_mp)
						HealAllPet(-1)   	
						PlayEffect(-1,"skill\Priest\shengminghuifu\hit\tx_priest_shengminghuifu_hit.ini")
					endif
				else
					BC( "screen" , "map" , $ectype_ID , "You can only heal after you defeat all monsters." )
				endif
			else
				BC( "screen" , "map" , $ectype_ID , "You can only heal after you defeat all monsters." )
			endif
		else
			BC( "screen" , "map" , $ectype_ID , "You do not have enough Coins to heal." )
		endif
	}	
	
	function OnOption7(){
		$max_hp = GetPlayerInfo( -1, "maxhp")
		$max_mp = GetPlayerInfo( -1, "maxmp")
		$hp = GetPlayerInfo( -1, "hp")
		$mp = GetPlayerInfo( -1, "mp")
		$add_hp = $max_hp - $hp
		$add_mp = $max_mp - $mp
		$guai1 = GetEctypeVar(-1,3)
		$guai2 = GetEctypeVar(-1,4)
		$ectype_ID = GetCurEctypeID()
		$money = GetPlayerInfo(-1,"money")
		if $money >= 60000
			if $guai1 == 1
				if $guai2 == 1
					$result = SubPlayerInfo( -1, "money",60000 )
					if $result == 0
				 		AddPlayerInfo( -1, "hp", $add_hp)
						AddPlayerInfo( -1, "mp", $add_mp)
						HealAllPet(-1)   	
						PlayEffect(-1,"skill\Priest\shengminghuifu\hit\tx_priest_shengminghuifu_hit.ini")
					endif
				else
					BC( "screen" , "map" , $ectype_ID , "You can only heal after you defeat all monsters." )
				endif
			else
				BC( "screen" , "map" , $ectype_ID , "You can only heal after you defeat all monsters." )
			endif
		else
			BC( "screen" , "map" , $ectype_ID , "You do not have enough Coins to heal." )
		endif

	}	
	
	function OnOption8(){
		$max_hp = GetPlayerInfo( -1, "maxhp")
		$max_mp = GetPlayerInfo( -1, "maxmp")
		$hp = GetPlayerInfo( -1, "hp")
		$mp = GetPlayerInfo( -1, "mp")
		$add_hp = $max_hp - $hp
		$add_mp = $max_mp - $mp
		$guai1 = GetEctypeVar(-1,3)
		$guai2 = GetEctypeVar(-1,4)
		$ectype_ID = GetCurEctypeID()
		$money = GetPlayerInfo(-1,"money")
		if $money >= 70000
			if $guai1 == 1
				if $guai2 == 1
					$result = SubPlayerInfo( -1, "money",70000 )
					if $result == 0
				 		AddPlayerInfo( -1, "hp", $add_hp)
						AddPlayerInfo( -1, "mp", $add_mp)
						HealAllPet(-1)   	
						PlayEffect(-1,"skill\Priest\shengminghuifu\hit\tx_priest_shengminghuifu_hit.ini")
					endif
				else
					BC( "screen" , "map" , $ectype_ID , "You can only heal after you defeat all monsters." )
				endif
			else
				BC( "screen" , "map" , $ectype_ID , "You can only heal after you defeat all monsters." )
			endif
		else
			BC( "screen" , "map" , $ectype_ID , "You do not have enough Coins to heal." )
		endif

	}	
	
	function OnOption9(){
		$max_hp = GetPlayerInfo( -1, "maxhp")
		$max_mp = GetPlayerInfo( -1, "maxmp")
		$hp = GetPlayerInfo( -1, "hp")
		$mp = GetPlayerInfo( -1, "mp")
		$add_hp = $max_hp - $hp
		$add_mp = $max_mp - $mp
		$guai1 = GetEctypeVar(-1,3)
		$guai2 = GetEctypeVar(-1,4)
		$ectype_ID = GetCurEctypeID()
		$money = GetPlayerInfo(-1,"money")
		if $money >= 80000
			if $guai1 == 1
				if $guai2 == 1
					$result = SubPlayerInfo( -1, "money",80000 )
					if $result == 0
				 		AddPlayerInfo( -1, "hp", $add_hp)
						AddPlayerInfo( -1, "mp", $add_mp)
						HealAllPet(-1)   	
						PlayEffect(-1,"skill\Priest\shengminghuifu\hit\tx_priest_shengminghuifu_hit.ini")
					endif
				else
					BC( "screen" , "map" , $ectype_ID , "You can only heal after you defeat all monsters." )
				endif
			else
				BC( "screen" , "map" , $ectype_ID , "You can only heal after you defeat all monsters." )
			endif
		else
			BC( "screen" , "map" , $ectype_ID , "You do not have enough Coins to heal." )
		endif

	}		
	
	function OnOption10(){
		$max_hp = GetPlayerInfo( -1, "maxhp")
		$max_mp = GetPlayerInfo( -1, "maxmp")
		$hp = GetPlayerInfo( -1, "hp")
		$mp = GetPlayerInfo( -1, "mp")
		$add_hp = $max_hp - $hp
		$add_mp = $max_mp - $mp
		$guai1 = GetEctypeVar(-1,3)
		$guai2 = GetEctypeVar(-1,4)
		$ectype_ID = GetCurEctypeID()
		$money = GetPlayerInfo(-1,"money")
		if $money >= 90000
			if $guai1 == 1
				if $guai2 == 1
					$result = SubPlayerInfo( -1, "money",90000 )
					if $result == 0
				 		AddPlayerInfo( -1, "hp", $add_hp)
						AddPlayerInfo( -1, "mp", $add_mp)
						HealAllPet(-1)   	
						PlayEffect(-1,"skill\Priest\shengminghuifu\hit\tx_priest_shengminghuifu_hit.ini")
					endif
				else
					BC( "screen" , "map" , $ectype_ID , "You can only heal after you defeat all monsters." )
				endif
			else
				BC( "screen" , "map" , $ectype_ID , "You can only heal after you defeat all monsters." )
			endif
		else
			BC( "screen" , "map" , $ectype_ID , "You do not have enough Coins to heal." )
		endif

	}		
	
	function OnOption11(){
		$max_hp = GetPlayerInfo( -1, "maxhp")
		$max_mp = GetPlayerInfo( -1, "maxmp")
		$hp = GetPlayerInfo( -1, "hp")
		$mp = GetPlayerInfo( -1, "mp")
		$add_hp = $max_hp - $hp
		$add_mp = $max_mp - $mp
		$guai1 = GetEctypeVar(-1,3)
		$guai2 = GetEctypeVar(-1,4)
		$ectype_ID = GetCurEctypeID()
		$money = GetPlayerInfo(-1,"money")
		if $money >= 100000
			if $guai1 == 1
				if $guai2 == 1
					$result = SubPlayerInfo( -1, "money",100000 )
					if $result == 0
				 		AddPlayerInfo( -1, "hp", $add_hp)
						AddPlayerInfo( -1, "mp", $add_mp)
						HealAllPet(-1)   	
						PlayEffect(-1,"skill\Priest\shengminghuifu\hit\tx_priest_shengminghuifu_hit.ini")
					endif
				else
					BC( "screen" , "map" , $ectype_ID , "You can only heal after you defeat all monsters." )
				endif
			else
				BC( "screen" , "map" , $ectype_ID , "You can only heal after you defeat all monsters." )
			endif
		else
			BC( "screen" , "map" , $ectype_ID , "You do not have enough Coins to heal." )
		endif

	}	
	
	function OnOption12(){
		FlyToMap( -1, 475, 77, 34, 0 )
	}