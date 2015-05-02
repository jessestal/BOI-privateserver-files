	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/0714
	//		Author:??
	//		TaskName:Ectype-murushuijing.s
	//		TaskID:??????
	//
	//****************************************


	function OnRequest(){
	$id = GetPlayerID()	
	$zhenying = GetPlayerDomainWarSide($id , $id)
	$mapid = GetPlayerInfo( -1 , "mapid")
	$var = GetEctypeVar($mapid , 0)
	//???????????,???????
	if $zhenying == 1
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
	$mapid = GetPlayerInfo( $id , "mapid" )
	//?????????????????
	if $drive == 0
		FlyVehicleToPos($id , 64 , 85)
	//????????????????????	
	else
		FlyToMap( $id , $mapid , 64 , 85)
	endif
						
	}
	//??
	function OnOption1(){
	$id = GetPlayerID()	
	$drive = IsOnVehicle($id)
	$mapid = GetPlayerInfo( $id , "mapid" )
	//?????????????????
	if $drive == 0
		FlyVehicleToPos($id , 37 , 100)
	//????????????????????	
	else
		FlyToMap( $id , $mapid , 37 , 100)
	endif
						
	}
	//??
	function OnOption2(){
	$id = GetPlayerID()	
	$drive = IsOnVehicle($id)
	$mapid = GetPlayerInfo( $id , "mapid" )
	//?????????????????
	if $drive == 0
		FlyVehicleToPos($id , 90 , 100)
	//????????????????????	
	else
		FlyToMap( $id , $mapid , 90 , 100)
	endif
						
	}	
	
	function OnOption3(){
	$id = GetPlayerID()	
	$drive = IsOnVehicle($id)
	if $drive == 0
		BC( "chat" , "player" , $id , "You are driving a vehicle. Cannot return to City Hall.")
		BC( "screen" , "player" , $id , "You are driving a vehicle. Cannot return to City Hall.")
		return
	endif
	
	FlyToMap( $id , 173 , 63 , 63)
	
	}														