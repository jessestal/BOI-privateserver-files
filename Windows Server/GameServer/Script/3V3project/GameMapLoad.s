	//****************************************
	//		Copyright��PERFECT WORLD
	//		Modified��2012-11
	//		Author��������
	//		TaskName��
	//		TaskID��
	//****************************************
	
	function OnCreate(){

	}
	
	function InitTimer(){
		
		$mapid = 567
		$ectype_id = GetEctypeID(-1,$mapid)
		$time = 1
		SetEctypeTimer(1,$time,"EctypeTimerNormal")
		StartEctypeTimer($ectype_id,1)
		
	}
	
	function EctypeTimerNormal(){
		$ectype_ID = GetCurEctypeID()

		OpenMask(1,$ectype_ID)
		
	}
