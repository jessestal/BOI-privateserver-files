	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/0714
	//		Author:??
	//		TaskName:Ectype-chejian-Atk.s
	//		TaskID:????-??
	//
	//****************************************


	function OnRequest(){
	$id = GetPlayerID()
	$zhenying = GetPlayerDomainWarSide($id , -1)
	
	if $zhenying == 1
		DisableNpcOption(0)
		DisableNpcOption(1)
	endif	
	
	
		 	
	}
	
	function OnOption0(){
	$id = GetPlayerID()	
	$drive = IsOnVehicle($id)
	$mapid = GetPlayerInfo( -1 , "mapid" )
	$atkvar = GetEctypeVar($mapid , 26)
	$vehicle = GetGuildDomainVehicleNum($mapid,-1)
	//?????????????????
	if $drive == 0
		BC( "chat" , "player" , -1 , "You are riding on a vessel. Cannot produce vessels now.")
		BC( "screen" , "player" , -1 , "You are riding on a vessel. Cannot produce vessels now.")
		return
	endif
						
	//????????,??????????
	
	if $vehicle >= 20 
		BC( "chat" , "player" , -1 , "Can only have up to 20 vessels in battle. Cannot use another vessel.")
		BC( "screen" , "player" , -1 , "Can only have up to 20 vessels in battle. Cannot use another vessel.")
		return
	endif	
	
	if $atkvar == 0
		BC( "chat" , "player" , -1 , "This workbench is supporting 5 vessels already. No energy for a new vessel")
		BC( "screen" , "player" , -1 , "This workbench is supporting 5 vessels already. No energy for a new vessel")
		return
	endif	
	
	
	AddGuildDomainVehicle(59256, $mapid, 197, 266 , 1 , $id , 1 , 1)
	
	$atkvar = $atkvar - 1
	SetEctypeVar($mapid , 26 , $atkvar)
	
	
	}	
	
	function OnOption1(){
	$id = GetPlayerID()	
	$drive = IsOnVehicle($id)
	$mapid = GetPlayerInfo( -1 , "mapid" )
	$atkvar = GetEctypeVar($mapid , 26)
	$vehicle = GetGuildDomainVehicleNum($mapid,-1)
	//?????????????????
	if $drive == 0
		BC( "chat" , "player" , -1 , "You are riding on a vessel. Cannot produce vessels now.")
		BC( "screen" , "player" , -1 , "You are riding on a vessel. Cannot produce vessels now.")
		return
	endif
						
	//????????,??????????
	
	if $vehicle >= 20 
		BC( "chat" , "player" , -1 , "Can only have up to 20 vessels in battle. Cannot use another vessel.")
		BC( "screen" , "player" , -1 , "Can only have up to 20 vessels in battle. Cannot use another vessel.")
		return
	endif	
	
	if $atkvar == 0
		BC( "chat" , "player" , -1 , "This workbench is supporting 5 vessels already. No energy for a new vessel")
		BC( "screen" , "player" , -1 , "This workbench is supporting 5 vessels already. No energy for a new vessel")
		return
	endif	
	
	
	AddGuildDomainVehicle(59258, $mapid, 197, 266 , 1 , $id , 1 , 1)
	
	$atkvar = $atkvar - 1
	SetEctypeVar($mapid , 26 , $atkvar)
	
	
	}
	
	
	function OnOption2(){
	$id = GetPlayerID()	
	$drive = IsOnVehicle($id)
	$mapid = GetPlayerInfo( -1 , "mapid" )
	$atkvar = GetEctypeVar($mapid , 26)
	$temp_atkvar = 5 - $atkvar
	
	if $atkvar == 0
		BC( "chat" , "player" , -1 , "This workbench is supporting 5 vessels already. No energy for a new vessel")
		BC( "screen" , "player" , -1 , "This workbench is supporting 5 vessels already. No energy for a new vessel")
	else
		BC( "chat" , "player" , -1 , "This workbench is supporting " , $temp_atkvar ," vessels. It can still produce ", $atkvar , " vessels.")
		BC( "screen" , "player" , -1 , "This workbench is supporting " , $temp_atkvar ," vessels. It can still produce ", $atkvar , " vessels.")
	endif
	
	}														