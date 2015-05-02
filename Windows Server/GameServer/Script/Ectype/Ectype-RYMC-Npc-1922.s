	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/02
	//		Author:祁晶
	//		TaskName:Ectype-RYMC-Npc-1922.s
	//		TaskID:传送到中间脚本
	//
	//****************************************
	//
	function OnRequest(){
	
		

	}
	
	//传到对面
	function OnOption0(){
	
		$ectype_ID = GetEctypeID(-1 ,223)
		if $ectype_ID > 0
			FlyToMap(-1 ,$ectype_ID , 70 ,70 )
		endif
		
	}
	