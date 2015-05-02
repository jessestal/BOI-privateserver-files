	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/21
	//		Author:???
	//		TaskName:MRstart.s
	//		TaskID:??????????????
	//
	//****************************************
	

	function OnRequest(){
		
		//???????ID,??????ID?-1
		$id1 = GetPlayerID()
		$id2 = GetTeamHeaderID( -1 )
		//????????
		if $id1 == $id2
			$pid1 = GetTeamMemberID( -1 , 0 )
			$pid2 = GetTeamMemberID( -1 , 1 )
			$pid3 = GetTeamMemberID( -1 , 2 )
			$pid4 = GetTeamMemberID( -1 , 3 )
			$pid5 = GetTeamMemberID( -1 , 4 )
			$pid6 = GetTeamMemberID( -1 , 5 )
			//???ID,???????ID
			if $pid1 > 0
				if $pid1 != $id1
					$id1 = $pid1
				endif
			endif
			
			if $id1 == $id2
				if $pid2 > 0
					if $pid2 != $id1
						$id1 = $pid2
					endif
				endif
			endif
			
			if $id1 == $id2
				if $pid3 > 0
					if $pid3 != $id1
						$id1 = $pid3
					endif
				endif
			endif
				
			if $id1 == $id2
				if $pid4 > 0
					if $pid4 != $id1
						$id1 = $pid4
					endif
				endif
			endif	
			
			if $id1 == $id2
				if $pid5 > 0
					if $pid5 != $id1
						$id1 = $pid5
					endif
				endif
			endif
			
			if $id1 == $id2
				if $pid6 > 0
					if $pid6 != $id1
						$id1 = $pid6
					endif
				endif
			endif
		endif
		
		
		PlayEffect( -1 , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_03.ini" )
		
		PlayEffect( $id1 , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_08.ini" )
		PlayEffect( $id2 , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_08.ini" )
		
		#name1 = GetPlayerInfo( $id1 , "name" )
		#name2 = GetPlayerInfo( $id2 , "name" )
		
			
		$marrycount = GetServerVar( 114 )
		//$marrycount = $marrycount + 1
		//SetServerVar ( 114 , $marrycount )
		//?????????????,3725
		//SetPlayerVar( $id1 , 3725 , $marrycount)
		//SetPlayerVar( $id2 , 3725 , $marrycount)
		
		//???????????
		$line = GetServerLineID() 
		//SetPlayerVar( $id1 , 3727 , $line )
		//SetPlayerVar( $id2 , 3727 , $line )

		BC( "screen", "player", $id1 , "Marriage SN:" , $marrycount , "Congratulations!" )
		BC( "screen", "player", $id2 , "Marriage SN:" , $marrycount , "Congratulations!" )
		
		//??????????
		//AddMonster( 52031, 60 , 2 , 58 , 74 , 16 )
		
	}