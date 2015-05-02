	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/02/20
	//		Author：张文宇
	//		TaskName：Ectype-baicengta100-Init.s
	//		TaskID：
	//
	//****************************************
	
	// 记录层数的玩家变量：3327
	// 记录杀小怪数量的副本变量：1
	// 记录杀大怪数量的副本变量：2
	// 判断小怪是否全部死亡的变量：3(杀完为1，否则为0)
	// 判断大怪是否全部死亡的变量：4(杀完为1，否则为0)
	// 记录小怪数量的变量：5
	// 记录头领数量的变量：6
	
	function OnCreate(){
		
		
		
	}
	function InitTimer(){
		$ectype_ID = GetCurEctypeID()
		$result = SetEctypeTimer( 1 , 1 , "EctypeTime1" )
		StartEctypeTimer ($ectype_ID,1)
	}
			
	function EctypeTime1(){
		
		$ectype_ID = GetCurEctypeID()
		
		//召唤NPC
		AddNpcByPos( 2467, $ectype_ID, 249, 156, 180000, 0 )
		AddNpcByPos( 1636, $ectype_ID, 183, 156, 180000, 0 )
		
		//大圆
		AddMonsterByFloat( 55384, 1, $ectype_ID, 177, 149, 0, 0, 180 )
		AddMonsterByFloat( 55384, 1, $ectype_ID, 177, 156, 0, 0, 180 )
		AddMonsterByFloat( 55384, 1, $ectype_ID, 177, 163, 0, 0, 180 )
		                                                 
		AddMonsterByFloat( 55384, 1, $ectype_ID, 184, 142, 0, 0, 180 )
		AddMonsterByFloat( 55384, 1, $ectype_ID, 184, 149, 0, 0, 180 )
		AddMonsterByFloat( 55382, 1, $ectype_ID, 184, 156, 0, 0, 180 )
		AddMonsterByFloat( 55384, 1, $ectype_ID, 184, 163, 0, 0, 180 )
		AddMonsterByFloat( 55384, 1, $ectype_ID, 184, 169, 0, 0, 180 )
		                                                 
		AddMonsterByFloat( 55384, 1, $ectype_ID, 191, 142, 0, 0, 180 )
		AddMonsterByFloat( 55384, 1, $ectype_ID, 191, 149, 0, 0, 180 )
		AddMonsterByFloat( 55384, 1, $ectype_ID, 191, 163, 0, 0, 180 )
		AddMonsterByFloat( 55384, 1, $ectype_ID, 191, 170, 0, 0, 180 )
		                                                 
		AddMonsterByFloat( 55384, 1, $ectype_ID, 198, 142, 0, 0, 180 )
		AddMonsterByFloat( 55384, 1, $ectype_ID, 198, 149, 0, 0, 180 )
		AddMonsterByFloat( 55384, 1, $ectype_ID, 198, 156, 0, 0, 180 )
		AddMonsterByFloat( 55384, 1, $ectype_ID, 198, 163, 0, 0, 180 )
		AddMonsterByFloat( 55384, 1, $ectype_ID, 198, 169, 0, 0, 180 )
		                                                 
		AddMonsterByFloat( 55384, 1, $ectype_ID, 205, 149, 0, 0, 180 )
		AddMonsterByFloat( 55384, 1, $ectype_ID, 205, 156, 0, 0, 180 )
		AddMonsterByFloat( 55384, 1, $ectype_ID, 205, 163, 0, 0, 180 )
		
		//走廊
		AddMonsterByFloat( 55385, 1, $ectype_ID, 213, 156, 0, 0, 180 )
		AddMonsterByFloat( 55385, 1, $ectype_ID, 222, 156, 0, 0, 180 )
		AddMonsterByFloat( 55385, 1, $ectype_ID, 231, 156, 0, 0, 180 )
		AddMonsterByFloat( 55385, 1, $ectype_ID, 240, 156, 0, 0, 180 )
		AddMonsterByFloat( 55385, 1, $ectype_ID, 249, 156, 0, 0, 180 )
		AddMonsterByFloat( 55385, 1, $ectype_ID, 255, 155, 0, 0, 180 )
		
	}