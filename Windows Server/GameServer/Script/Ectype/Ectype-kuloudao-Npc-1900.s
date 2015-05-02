	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/07/02
	//		Author：祁晶
	//		TaskName：Ectype-Npc-kuloudao1900.s
	//		TaskID：马塞尔NPC脚本
	//
	//****************************************
	//
	function OnRequest(){
		

	}
	
	//传送到对面去
	function OnOption0(){
		
		$ectype_ID = GetEctypeID(-1 ,222)
		FlyToMap( -1, $ectype_ID, 64, 86 )

	}
	
	
