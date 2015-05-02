		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-08-25
		//		Author:???
		//		TaskName:??????
		//		TaskID:????478*
		//
		//****************************************

	function OnRequest(){

		$ectype_id = GetPlayerInfo(-1,"mapid")
		$key = 85
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 1
			DisableNpcOption(0)
		else
//			DisableNpcOption(1)
		endif
		
	}


	function OnOption0(){
		//???-???-???

		$ectype_id = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()

		$succeed = FlyToEctype($playerid,479,7,74)
		if $succeed > 0
			$ectype_idn = GetEctypeID($playerid,479)
			$ectype_uid = GetEctypeUniqueID($playerid,479)
			SetPlayerVar($playerid,3853,$ectype_uid)
			SetPlayerVar($playerid,3414,3)
			BC("screen","player",$playerid,"You entered Pangaea Catacomb - Ghostdom")
//--------------????-????????CD-?FB????
			SetEctypeVar($ectype_idn,85,1)
			SetEctypeVar($ectype_idn,99,1)
			SetEctypeVar($ectype_id,84,1)
			SetEctypeVar($ectype_id,83,$ectype_idn)
			SetEctypeVar($ectype_id,60,1)
			SetEctypeVar($ectype_id,77,1)
			StartEctypeTimer($playerid,478,8)
			StartEctypeTimer($playerid,479,8)
			StartEctypeTimer($playerid,479,9)
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
		//(????)
		$ectype_id = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		BC("dialogbox","player",-1,"Not determined to do it.")
		//????
		
		
		
		
		

	}





