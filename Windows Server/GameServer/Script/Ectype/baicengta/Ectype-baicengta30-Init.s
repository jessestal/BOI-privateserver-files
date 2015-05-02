	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/11/01
	//		Author：朱建臣
	//		TaskName：Ectype-baicengta30-Init.s
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
		AddNpcByPos( 2467, $ectype_ID, 152, 152, 180000, 0 )
		AddMonsterByFloat( 55516, 1, $ectype_ID, 153, 153, 0, 0, 180 )
		AddMonsterByFloat( 55314, 1, $ectype_ID, 168, 138, 0, 0, 180 )
		AddMonsterByFloat( 55315, 1, $ectype_ID, 165, 137, 0, 0, 180 )
		AddMonsterByFloat( 55316, 1, $ectype_ID, 168, 141, 0, 0, 180 )
		
	}