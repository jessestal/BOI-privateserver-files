	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011-08-25
	//		Author��������
	//		TaskName��
	//		TaskID��
	//
	//****************************************
	
	function OnDead(){
		
		$ectype_id = GetPlayerInfo(-1,"mapid")
		$key = 82
		$count = GetEctypeVar($ectype_id,$key)
		$count = $count + 1
		SetEctypeVar($ectype_id,$key,$count)
//		BC( "screen", "player", -1, "82" )
		
	
	
	}