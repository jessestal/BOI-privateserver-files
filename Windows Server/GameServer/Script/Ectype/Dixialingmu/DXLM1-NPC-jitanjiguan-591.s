	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???478??NPC????591
	//		TaskID:DXLM-CSNPC-jitanjiguan-591.s
	//
	//****************************************

	function OnRequest(){

	}

	function OnOption0(){

	$ectype_id = GetEctypeID(-1, 478)

	//??????????,????,???????
	$headerID = GetTeamHeaderID( -1 )
	$playerid = GetPlayerID()
	if $playerid != $headerID
		BC( "dialogbox", "player", -1, "You are not the Captain. You cannot activate the trigger!" )
		return
	endif

	$size = GetTeamAreaSize(-1)
	if $size > 10
		BC( "dialogbox", "player", -1, "Your party members are too far away!" )
		return
	endif

	$count = GetEctypeVar(-1, 97)

	//?????25?51774,??????,???479
		if $count < 25
			$b = 25 - $count
			if $b != 0
				BC( "screen", "map", $ectype_id, "There are " , $b , " spiders left to kill before the seal is activated.")
				return
			endif
		else
//----------??-------------------------------
			$Mem1 = GetTeamMemberID( -1, 0 )
			$Mem2 = GetTeamMemberID( -1, 1 )
			$Mem3 = GetTeamMemberID( -1, 2 )
			$Mem4 = GetTeamMemberID( -1, 3 )
			$Mem5 = GetTeamMemberID( -1, 4 )
			$Mem6 = GetTeamMemberID( -1, 5 )
//-------??479----start----------------------------
			$succeed = FlyToEctype( $headerID , 479 , 75 , 73 )
			if $succeed > 0
				$ectype_idn = GetEctypeID( $headerID , 479 )
				$ectype_uid = GetEctypeUniqueID( $headerID , 479 )
				SetPlayerVar( $headerID , 3853 , $ectype_uid )
				BC( "screen" , "player" , $headerID , "You entered Pangaea's Catacomb (Ethereal)!" )
				SetEctypeVar( $ectype_idn , 111 , $Mem1 )
				SetEctypeVar( $ectype_idn , 112 , $Mem2 )
				SetEctypeVar( $ectype_idn , 113 , $Mem3 )
				SetEctypeVar( $ectype_idn , 114 , $Mem4 )
				SetEctypeVar( $ectype_idn , 115 , $Mem5 )
				SetEctypeVar( $ectype_idn , 116 , $Mem6 )
				SetEctypeVar( $ectype_idn , 0, 4)
				SetEctypeVar( $ectype_id , 0, 4)

				StartEctypeTimer( $headerID , 479 , 1 )
			else
				BC( "dialogbox", "player", -1, "Too many players in this instance now. Please try again later or change realms!" )
				return
			endif
			if $Mem1 != -1
				if $Mem1 != $headerID
					$succeed = FlyToEctype( $Mem1 , 479 , 75 , 73 )
					if $succeed > 0
						$ectype_uid = GetEctypeUniqueID( $Mem1 , 479 )
						SetPlayerVar( $Mem1 , 3853 , $ectype_uid )
						BC( "screen", "player", $Mem1 , "You entered Pangaea's Catacomb (Ethereal)!" )

					else
						BC( "dialogbox", "player", $Mem1 , "Unknown error. Error code:" , $succeed )
					endif
				endif
			endif
			if $Mem2 != -1
				if $Mem2 != $headerID
					$succeed = FlyToEctype( $Mem2 , 479 , 75 , 73 )
					if $succeed > 0
						$ectype_uid = GetEctypeUniqueID( $Mem2 , 479 )
						SetPlayerVar( $Mem2 , 3853 , $ectype_uid )
						BC( "screen", "player", $Mem2 , "You entered Pangaea's Catacomb (Ethereal)!" )

					else
						BC( "dialogbox", "player", $Mem2 , "Unknown error. Error code:" , $succeed )
					endif
				endif
			endif
			if $Mem3 != -1
				if $Mem3 != $headerID
					$succeed = FlyToEctype( $Mem3 , 479 , 75 , 73 )
					if $succeed > 0
						$ectype_uid = GetEctypeUniqueID( $Mem3 , 479 )
						SetPlayerVar( $Mem3 , 3853 , $ectype_uid )
						BC( "screen", "player", $Mem3 , "You entered Pangaea's Catacomb (Ethereal)!" )

					else
						BC( "dialogbox", "player", $Mem3 , "Unknown error. Error code:" , $succeed )
					endif
				endif
			endif
			if $Mem4 != -1
				if $Mem4 != $headerID
					$succeed = FlyToEctype( $Mem4 , 479 , 75 , 73 )
					if $succeed > 0
						$ectype_uid = GetEctypeUniqueID( $Mem4 , 479 )
						SetPlayerVar( $Mem4 , 3853 , $ectype_uid )
						BC( "screen", "player", $Mem4 , "You entered Pangaea's Catacomb (Ethereal)!" )

					else
						BC( "dialogbox", "player", $Mem4 , "Unknown error. Error code:" , $succeed )
					endif
				endif
			endif
			if $Mem5 != -1
				if $Mem5 != $headerID
					$succeed = FlyToEctype( $Mem5 , 479 , 75 , 73 )
					if $succeed > 0
						$ectype_uid = GetEctypeUniqueID( $Mem5 , 479 )
						SetPlayerVar( $Mem5 , 3853 , $ectype_uid )
						BC( "screen", "player", $Mem5 , "You entered Pangaea's Catacomb (Ethereal)!" )
			
					else
						BC( "dialogbox", "player", $Mem5 , "Unknown error. Error code:" , $succeed )
					endif
				endif
			endif
			if $Mem6 != -1
				if $Mem6 != $headerID
					$succeed = FlyToEctype( $Mem6 , 479 , 75 , 73 )
					if $succeed > 0
						$ectype_uid = GetEctypeUniqueID( $Mem6 , 479 )
						SetPlayerVar( $Mem6 , 3853 , $ectype_uid )
						BC( "screen", "player", $Mem6 , "You entered Pangaea's Catacomb (Ethereal)!" )
		
					else
						BC( "dialogbox", "player", $Mem6 , "Unknown error. Error code:" , $succeed )
					endif
				endif
			endif
//----------------------????------------------
			ReleaseEctype($headerID, 478 )
		endif


}