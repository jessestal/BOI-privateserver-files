	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/06
	//		Author:???
	//		TaskName:90?
	//		TaskID:.s
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	function OnOption0(){
		RemoveStatusByID(-1,6458)
		RemoveStatusByID(-1,6459)
		RemoveStatusByID(-1,6460)
		RemoveStatusByID(-1,6461)
		$ectype_ID = GetCurEctypeID()
		SetEctypeVar($ectype_ID,21,0)
		SetEctypeVar($ectype_ID,22,0)
		SetEctypeVar($ectype_ID,23,0)
		SetEctypeVar($ectype_ID,24,1)
		AddStatus( -1, 6461, 1 )
		$xiaochu = GetStatusLevel(-1,6451)
		if $xiaochu == 5
			RemoveStatusByID(-1,6451)
		endif
		BC( "chat", "player", -1, "Even the God of Thunder, can't escape death.")
		BC( "screen", "player", -1, "Even the God of Thunder, can't escape death.")
		DeleteNPC(1634 , $ectype_ID)
		StartEctypeTimer ($ectype_ID,6)
		return
	}