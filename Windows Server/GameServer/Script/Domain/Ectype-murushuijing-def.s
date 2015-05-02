	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/0714
	//		Author:??
	//		TaskName:Ectype-murushuijing-def.s
	//		TaskID:??????
	//
	//****************************************


	function OnRequest(){
	$id = GetPlayerID()	
	$zhenying = GetPlayerDomainWarSide($id , -1)
	$mapid = GetPlayerInfo( -1 , "mapid")
	$var = GetEctypeVar($mapid , 0)
	
	//???????????,???????
	if $zhenying == 0
		DisableNpcOption(0)
		DisableNpcOption(1)
		DisableNpcOption(2)
		DisableNpcOption(3)
	endif
	
	if $var == 2
		DisableNpcOption(0)
		DisableNpcOption(1)
		DisableNpcOption(2)
	endif		 	
	}
	
	//??
	function OnOption0(){
	$id = GetPlayerID()	
	$drive = IsOnVehicle($id)
	$mapid = GetPlayerInfo( -1 , "mapid" )
	//?????????????????
	if $drive == 0
		FlyVehicleToPos(-1 , 64 , 39)
	//????????????????????	
	else
		FlyToMap( -1 , $mapid , 64 , 39)
	endif
						
	}
	//??
	function OnOption1(){
	$id = GetPlayerID()	
	$drive = IsOnVehicle($id)
	$mapid = GetPlayerInfo( -1 , "mapid" )
	//?????????????????
	if $drive == 0
		FlyVehicleToPos(-1 , 37 , 25)
	//????????????????????	
	else
		FlyToMap( -1 , $mapid , 37 , 25)
	endif
						
	}
	//??
	function OnOption2(){
	$id = GetPlayerID()	
	$drive = IsOnVehicle($id)
	$mapid = GetPlayerInfo( -1 , "mapid" )
	//?????????????????
	if $drive == 0
		FlyVehicleToPos(-1 , 90 , 25)
	//????????????????????	
	else
		FlyToMap( -1 , $mapid , 90 , 25)
	endif
						
	}
	
	function OnOption3(){
	$id = GetPlayerID()	
	$drive = IsOnVehicle($id)
	if $drive == 0
		BC( "chat" , "player" , -1 , "You are driving a vehicle. Cannot return to City Hall.")
		BC( "screen" , "player" , -1 , "You are driving a vehicle. Cannot return to City Hall.")
		return
	endif
	
	FlyToMap( -1 , 173 , 63 , 63)
	
	}
													