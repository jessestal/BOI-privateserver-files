	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/02/20
	//		Author：张文宇
	//		TaskName：Ectype-baicengta90-Init.s
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
		$result = SetEctypeTimer( 2 , 1 , "EctypeTime2" )
		$result = SetEctypeTimer( 3 , 90 , "EctypeTime3" )
		$result = SetEctypeTimer( 4 , 90 , "EctypeTime4" )
		$result = SetEctypeTimer( 5 , 90 , "EctypeTime5" )
		$result = SetEctypeTimer( 6 , 90 , "EctypeTime6" )
		StartEctypeTimer ($ectype_ID,1)
		StartEctypeTimer ($ectype_ID,2)
	}
			
	function EctypeTime1(){
		
		$ectype_ID = GetCurEctypeID()
		
		//召唤NPC
		AddNpcByPos( 2467, $ectype_ID, 254, 155, 180000, 0 )
		AddNpcByPos( 1635, $ectype_ID, 190, 156, 180000, 0 )
		
		//召唤四神兵
		AddMonsterByFloat( 55372, 1, $ectype_ID, 183, 149, 0, 0, 135 )
		AddMonsterByFloat( 55373, 1, $ectype_ID, 196, 147, 0, 0, 225 )
		AddMonsterByFloat( 55374, 1, $ectype_ID, 197, 163, 0, 0, 315 )
		AddMonsterByFloat( 55375, 1, $ectype_ID, 183, 162, 0, 0, 45 )
		
	}
			
	function EctypeTime2(){
		
		$ectype_ID = GetCurEctypeID()
		$kaishi = GetEctypeVar($ectype_ID,15)
		$wanquan = GetEctypeVar($ectype_ID,16)
		if $kaishi < 1
			DeleteNPC(1631 , $ectype_ID)
			DeleteNPC(1632 , $ectype_ID)
			DeleteNPC(1633 , $ectype_ID)
			DeleteNPC(1634 , $ectype_ID)
		endif
		if $kaishi == 1
			AddNpcByPos( 1631, $ectype_ID, 184, 150, 180000, 0 )
			AddNpcByPos( 1632, $ectype_ID, 195, 148, 180000, 0 )
			AddNpcByPos( 1633, $ectype_ID, 196, 162, 180000, 0 )
			AddNpcByPos( 1634, $ectype_ID, 184, 161, 180000, 0 )
			SetEctypeVar($ectype_ID,15,2)
		endif
		if $wanquan > 0
			DeleteNPC(1631 , $ectype_ID)
			DeleteNPC(1632 , $ectype_ID)
			DeleteNPC(1633 , $ectype_ID)
			DeleteNPC(1634 , $ectype_ID)
		endif
		
		StartEctypeTimer ($ectype_ID,2)
	}
			
	function EctypeTime3(){
		
		$ectype_ID = GetCurEctypeID()
		AddNpcByPos( 1631, $ectype_ID, 184, 150, 180000, 0 )
		
	}
			
	function EctypeTime4(){
		
		$ectype_ID = GetCurEctypeID()
		AddNpcByPos( 1632, $ectype_ID, 195, 148, 180000, 0 )
		
	}
			
	function EctypeTime5(){
		
		$ectype_ID = GetCurEctypeID()
		AddNpcByPos( 1633, $ectype_ID, 196, 162, 180000, 0 )
		
	}
			
	function EctypeTime6(){
		
		$ectype_ID = GetCurEctypeID()
		AddNpcByPos( 1634, $ectype_ID, 184, 161, 180000, 0 )
		
	}