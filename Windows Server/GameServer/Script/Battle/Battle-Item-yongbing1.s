 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/6/23
	//		Author:??
	//		TaskName:Battle-Item-yongbing1.s
	//		TaskID:????1
	//****************************************
	
	function OnUseItem(){
	
		$mapid = GetPlayerInfo( -1 , "mapid" )
		$posx = GetPlayerInfo( -1 , "mapposx" )
		$posy = GetPlayerInfo( -1 , "mapposy" )
		$id = GetPlayerID()
		$ectype_id1 = GetEctypeID( $id , 259 )
		$ectype_id2 = GetEctypeID( $id , 266 )
		$camp1 = GetBattleCamp( $ectype_id1 , $id ) 
		$camp2 = GetBattleCamp( $ectype_id2 , $id ) 
		
		if $mapid == $ectype_id1
			$result = SubPlayerInfo( -1 , "item" , 59307 , 1 )
				if $result == 0
					if $camp1 == 1
						AddMonsterByFloat( 59218 , 1 , $ectype_id1 , $posx , $posy , 0 )						
					endif
	
					if $camp1 == 2				
						AddMonsterByFloat( 59219 , 1 , $ectype_id1 , $posx , $posy , 0 )							
					endif
				endif
		endif				
					
		if $mapid == $ectype_id2
			$result = SubPlayerInfo( -1 , "item" , 59307 , 1 )
				if $result == 0
					if $camp2 == 1									
						AddMonsterByFloat( 59218 , 1 , $ectype_id2 , $posx , $posy , 0 )						
					endif
					
					if $camp2 == 2					
						AddMonsterByFloat( 59219 , 1 , $ectype_id2 , $posx , $posy , 0 )
					endif
				endif
		endif	
			
		if $mapid != $ectype_id1
			if $mapid != $ectype_id2
				BC( "screen" , "player" , -1 , "Only available in the Champion's Arena!" )
				return
			endif
		endif		
		
	
	
	}