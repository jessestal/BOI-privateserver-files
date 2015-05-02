	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/0714
	//		Author:??
	//		TaskName:Ectype-chejian-Def.s
	//		TaskID:????-??
	//
	//****************************************


	function OnRequest(){
	$id = GetPlayerID()	
	$zhenying = GetPlayerDomainWarSide($id , -1)
	
	if $zhenying == 0
		DisableNpcOption(0)
		DisableNpcOption(1)
	endif	
	
	
		 	
	}
	
	function OnOption0(){
	$id = GetPlayerID()	
	$drive = IsOnVehicle($id)
	$mapid = GetPlayerInfo( -1 , "mapid" )
	$defvar = GetEctypeVar($mapid , 27)
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
	
	if $defvar == 0
		BC( "chat" , "player" , -1 , "This workbench is supporting 5 vessels already. No energy for a new vessel")
		BC( "screen" , "player" , -1 , "This workbench is supporting 5 vessels already. No energy for a new vessel")
		return
	endif	
	
	
	AddGuildDomainVehicle(59257, $mapid, 125, 64 , 1 , $id , 1 , 2)
	
	$defvar = $defvar - 1
	SetEctypeVar($mapid , 27 , $defvar)
	
	
	}	
	
	function OnOption1(){
	$id = GetPlayerID()	
	$drive = IsOnVehicle($id)
	$mapid = GetPlayerInfo( -1 , "mapid" )
	$defvar = GetEctypeVar($mapid , 27)
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
	
	if $defvar == 0
		BC( "chat" , "player" , -1 , "This workbench is supporting 5 vessels already. No energy for a new vessel")
		BC( "screen" , "player" , -1 , "This workbench is supporting 5 vessels already. No energy for a new vessel")
		return
	endif	
	
	
	AddGuildDomainVehicle(59259, $mapid, 125, 64 , 1 , $id , 1 , 2)
	
	$defvar = $defvar - 1
	SetEctypeVar($mapid , 27 , $defvar)
	
	
	}
	
	
	function OnOption2(){
	$id = GetPlayerID()	
	$drive = IsOnVehicle($id)
	$mapid = GetPlayerInfo( -1 , "mapid" )
	$defvar = GetEctypeVar($mapid , 27)
	$temp_defvar = 5 - $defvar
	
	if $defvar == 0
		BC( "chat" , "player" , -1 , "This workbench is supporting 5 vessels already. No energy for a new vessel")
		BC( "screen" , "player" , -1 , "This workbench is supporting 5 vessels already. No energy for a new vessel")
	else
		BC( "chat" , "player" , -1 , "This workbench is supporting " , $temp_defvar ," vessels. It can still produce ", $defvar , " vessels.")
		BC( "screen" , "player" , -1 , "This workbench is supporting " , $temp_defvar ," vessels. It can still produce ", $defvar , " vessels.")
	endif
	
	}														