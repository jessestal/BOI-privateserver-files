	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/02
	//		Author:�
	//		TaskName:Ectype-RYMC-Npc-1922.s
	//		TaskID:���͵��м�ű�
	//
	//****************************************
	//
	function OnRequest(){
	
		

	}
	
	//��������
	function OnOption0(){
	
		$ectype_ID = GetEctypeID(-1 ,223)
		if $ectype_ID > 0
			FlyToMap(-1 ,$ectype_ID , 70 ,70 )
		endif
		
	}
	