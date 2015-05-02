	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/05
	//		Author:???
	//		TaskName:Ectype-Frozen-enter.s
	//		TaskID:????????
	//
	//****************************************

	function OnCreate(){
		
	}
	
	function InitTimer(){
		$ectype_id = GetEctypeID( -1 , 25 )
		SetEctypeTimer( 1 , 60 , "EctypeTime0" )
		
	}

	function EctypeTime0(){
		
		$ectype_id = GetEctypeID( -1 , 25 )
		StartEctypeTimer( $ectype_id , 1 )
		$a = GetEctypeVar( $ectype_id , 110 )
		$a = $a + 1
		$b = GetEctypeVar( $ectype_id , 111 )
		SetEctypeVar( $ectype_id , 110 , $a )
		$time = 480 - $a
		if $a == 5
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes. The guild has accomplished [Behemoth Soul Container] quest for",$b," times.")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes. The guild has accomplished [Behemoth Soul Container] quest for",$b," times.")
			else
				BC( "screen" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes later, it will be closed.")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes later, it will be closed.")
			endif
		endif
		if $a == 10
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes. The guild has accomplished [Behemoth Soul Container] quest for",$b," times.")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes. The guild has accomplished [Behemoth Soul Container] quest for",$b," times.")
			else
				BC( "screen" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes later, it will be closed.")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes later, it will be closed.")
			endif
		endif
		if $a == 15
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes. The guild has accomplished [Behemoth Soul Container] quest for",$b," times.")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes. The guild has accomplished [Behemoth Soul Container] quest for",$b," times.")
			else
				BC( "screen" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes later, it will be closed.")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes later, it will be closed.")
			endif
		endif
		if $a == 20
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes. The guild has accomplished [Behemoth Soul Container] quest for",$b," times.")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes. The guild has accomplished [Behemoth Soul Container] quest for",$b," times.")
			else
				BC( "screen" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes later, it will be closed.")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes later, it will be closed.")
			endif
		endif
		if $a == 30
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes. The guild has accomplished [Behemoth Soul Container] quest for",$b," times.")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes. The guild has accomplished [Behemoth Soul Container] quest for",$b," times.")
			else
				BC( "screen" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes later, it will be closed.")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes later, it will be closed.")
			endif
		endif
		if $a == 40
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes. The guild has accomplished [Behemoth Soul Container] quest for",$b," times.")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes. The guild has accomplished [Behemoth Soul Container] quest for",$b," times.")
			else
				BC( "screen" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes later, it will be closed.")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes later, it will be closed.")
			endif
		endif
		if $a == 50
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes. The guild has accomplished [Behemoth Soul Container] quest for",$b," times.")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes. The guild has accomplished [Behemoth Soul Container] quest for",$b," times.")
			else
				BC( "screen" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes later, it will be closed.")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier lasts ",$a," minutes. It will be closed in",$time," minutes later, it will be closed.")
			endif
		endif
		if $a == 60
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
			endif
		endif
		if $a == 80
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
			endif
		endif
		if $a == 100
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
			endif
		endif
		if $a == 120
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
			endif
		endif
		if $a == 160
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
			endif
		endif
		if $a == 200
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
			endif
		endif
		if $a == 240
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
			endif
		endif
		if $a == 280
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
			endif
		endif
		if $a == 320
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
			endif
		endif
		if $a == 360
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
			endif
		endif
		if $a == 420
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
			endif
		endif
		if $a == 460
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
			endif
		endif
		if $a == 470
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
			endif
		endif
		if $a == 477
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
			endif
		endif
		if $a == 478
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
			endif
		endif
		if $a == 479
			if $b <= 20
				BC( "screen" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
				BC( "chat" , "map" , $ectype_id , "Fort Glacier",$time," minutes later, it will be closed!")
			endif
		endif
		
	}
