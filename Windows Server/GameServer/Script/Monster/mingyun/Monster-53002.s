	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/7/25
	//		Author:???
	//		TaskName:Monster-53002.s
	//		TaskID: ?????
	//
	//****************************************
	
	function OnDead(){
	
		$ectype_ID = GetEctypeID(-1,559)
		$a = GetEctypeVar($ectype_ID,7)
		$b = GetEctypeVar($ectype_ID,8)
		$c = GetEctypeVar($ectype_ID,9)
		
		$a = $a - 1
		SetEctypeVar($ectype_ID,7,$a)
		StartEctypeTimer($ectype_ID,4)
		
//		if $a == 0
//			if $b == 0
//				SetEctypeVar($ectype_ID,10,1)
//				BC("screen","player",-1,"GUID:07927000000")
//			endif
//		endif
//		
//		if $a == 0
//			if $c == 0
//				SetEctypeVar($ectype_ID,10,1)
//				BC("screen","player",-1,"GUID:07927000001")
//			endif
//		endif
//		
//		if $b == 0
//			if $c == 0
//				SetEctypeVar($ectype_ID,10,1)
//				BC("screen","player",-1,"GUID:07927000002")
//			endif
//		endif
		
	}