//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/20
	//		Author:??
	//		TaskName:Monster-dahongbianpao-32246.s
	//		TaskID: ?????????
	//
	//****************************************
	
	function OnDead(){
	
	//?????????????? ?????1??????,????????1
		$ectype_id = GetEctypeID( -1 , 233 )
		$bianpao = GetEctypeVar( -1 , 20 )
		if $bianpao == 1
			//15????????
			StartEctypeTimer( $ectype_id , 5 )
			//????20?1
			SetEctypeVar( $ectype_id , 20 , 0 ) 
			//BC( "screen" , "map" , $ectype_id , "GUID:04748000000" )
		else
			SetEctypeVar( $ectype_id , 20 , 1 )
			//BC( "screen" , "map" , $ectype_id , "GUID:04748000001" )
		endif 
		
		
		
		UseSkill( -1 , 2079 , 2)
		//????
		PlayEffect( -1 , "common\huodong\xinnianlipao\tx_xinnianlipao1.ini" , 1 )
		PlayEffect( -1 , "common\Yanhua\tx_bianpao\tx_yanhua_bianpao.ini" , 1 )
		
		//??????????????
		
		//???????????id
		$map =  GetPlayerInfo( -1, "mapid" )
		$teamID1 = GetTeamMemberID( -1, 0 )
		$teamID2 = GetTeamMemberID( -1, 1 )
		$teamID3 = GetTeamMemberID( -1, 2 )
		$teamID4 = GetTeamMemberID( -1, 3 )
		$teamID5 = GetTeamMemberID( -1, 4 )
		$teamID6 = GetTeamMemberID( -1, 5 )
		
	if $teamID1 != -1	
		$teammap1 = GetPlayerInfo( $teamID1, "mapid" )
		if $teammap1 == $map
			 AddPlayerInfo( $teamID1, "item", 59612,10)
		endif
	endif
		
	if $teamID2 != -1		
		$teammap2 = GetPlayerInfo( $teamID2, "mapid" )
		if $teammap2 == $map
			 AddPlayerInfo( $teamID2, "item", 59612,10)
		endif
	endif
		
	if $teamID3 != -1	
		$teammap3 = GetPlayerInfo( $teamID3, "mapid" )
		if $teammap3 == $map
			 AddPlayerInfo( $teamID3, "item", 59612,10)
		endif
	endif
		
	if $teamID4 != -1	
		$teammap4 = GetPlayerInfo( $teamID4, "mapid" )
		if $teammap4 == $map
			 AddPlayerInfo( $teamID4, "item", 59612,10)
		endif
	endif
		
		
	if $teamID5 != -1
		$teammap5 = GetPlayerInfo( $teamID5, "mapid" )
		if $teammap5 == $map
			 AddPlayerInfo( $teamID5, "item", 59612,10)
		endif
	endif
	
	if $teamID6 != -1	
		$teammap6 = GetPlayerInfo( $teamID6, "mapid" )
		if $teammap6 == $map
			 AddPlayerInfo( $teamID6, "item", 59612,10)
		endif
	endif
		
		
		
		
		
	}