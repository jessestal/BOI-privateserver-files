	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/08/09
	//		Author:??
	//		TaskName:Ectype-door-59270.s
	//		TaskID: 2?????
	//
	//****************************************

	
	function OnDead(){
		//????CharID
		$charID = GetMonsterCharID()
		// ??Char?????MapID
		$mapID = GetMonsterMapID($charID)
		//??????????
		OpenMask( 2 , $mapID )
		#name = GetPlayerInfo( -1 , "name") 
		AddGuildDomainPlayerExp($mapID,2,1000000)									
		BC( "screen" , "map" , $mapID , "The North Gate has been destroyed by " , #name , ". Defenders will get 1,000,000 EXP." )					
		
		//??????,?????2??????
		
		PlayEffect( -1 , "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" , 2 )
		
		PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		
	}
	