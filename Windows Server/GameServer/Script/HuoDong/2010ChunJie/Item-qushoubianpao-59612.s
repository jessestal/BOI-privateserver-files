	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/01
	//		Author:??
	//		TaskName:Item-qushoubianpao-59612.s
	//		TaskID:2010??????-????????????
	//****************************************
	
	function OnUseItem(){
	
		//??????id,????233?????
		$map =  GetPlayerInfo( -1, "mapid")
		if $map < 10501
			BC( "screen", "player", -1, "Beast Firecracker can only be used in the Cavern of Trials. " )
			return
		endif
		
		if $map > 10600
			BC( "screen", "player", -1, "Beast Firecracker can only be used in the Cavern of Trials. " )
			return
		endif
		
		//??????,????
		SubPlayerInfo( -1, "item", 59612,1)
		UseSkill( -1 , 2080 , 1)
		PlayEffect( -1 , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_05.ini" , 1 )
		
	}
			