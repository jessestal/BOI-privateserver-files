		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-08-25
		//		Author:???
		//		TaskName:??????
		//		TaskID:???479*

		//
		//****************************************

	function OnRequest(){
		
		$ectype_id = GetPlayerInfo(-1,"mapid")
		$key = 85
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 1
			DisableNpcOption(0)
		else
			DisableNpcOption(1)
		endif
		
	}


	function OnOption0(){

		$ectype_id = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		$key = 85
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 1
			BC( "dialogbox", "player", -1, "!" )
			return
		endif
		$succeed = FlyToEctype( $playerid , 478 , 48 , 19 )
		if $succeed > 0
			$ectype_idn = GetEctypeID( $playerid , 478 )
			$ectype_uid = GetEctypeUniqueID( $playerid , 478 )
			SetPlayerVar( $playerid , 3853 , $ectype_uid )
			BC( "screen" , "player" , $playerid , "You have entered Pangaea Catacomb (Reality)" )
//--------------????-????????CD-?FB????
			SetEctypeVar($ectype_idn,85,1)
			SetEctypeVar($ectype_idn,99,1)
			SetEctypeVar($ectype_id,84,1)
			SetEctypeVar($ectype_id,83,$ectype_idn)
			StartEctypeTimer($playerid,479,8)
			StartEctypeTimer($playerid,478,8)
			StartEctypeTimer($playerid,478,9)
//--------------?????????start
			SetEctypeVar($ectype_idn,111,$playerid)
			$key = 60
			while $key <= 82
				$getvar = GetEctypeVar($ectype_id,$key)
				SetEctypeVar($ectype_idn,$key,$getvar)
				$key = $key + 1
			endwhile
//--------------????end
		else 
			BC( "dialogbox", "player", -1, "Failed to enter." )
			return
		endif



	}

	function OnOption1(){

		$ectype_id = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		$key = 85
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 1
			BC( "screen", "player", -1, "Can not be used now." )
			return
		endif

	}