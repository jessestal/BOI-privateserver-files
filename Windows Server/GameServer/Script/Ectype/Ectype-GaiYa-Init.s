	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/02
	//		Author:???
	//		TaskName:Ectype-GaiYa-Init.s
	//		TaskID:3.70??
	//
	//****************************************
	
	
	function OnCreate(){
		
	}
	
	function InitTimer(){
		
		$ectype_ID = GetCurEctypeID()
		$result = SetEctypeTimer( 1 , 1 , "EctypeTime1" )
		StartEctypeTimer ($ectype_ID,1)
		
	}
	
	function EctypeTime1(){
		
		$playid = GetEctypeVar(-1,110)
		$ectype_ID = GetEctypeID($playid,544)
//		AddNpcByPos(884,$ectype_ID,224,170,180000,0)
//		AddNpcByPos(885,$ectype_ID,176,113,180000,0)
//		AddNpcByPos(886,$ectype_ID,112,96,180000,0)
		AddMonsterByFloat(53121,1,$ectype_ID,200,280,0)
		AddMonsterByFloat(53117,2,$ectype_ID,194,256,2)
		AddMonsterByFloat(53117,3,$ectype_ID,194,268,2)
		AddMonsterByFloat(53117,2,$ectype_ID,201,257,2)
		AddMonsterByFloat(53117,2,$ectype_ID,208,266,2)
		AddMonsterByFloat(53117,2,$ectype_ID,199,272,2)
		AddMonsterByFloat(53117,2,$ectype_ID,210,267,2)
		AddMonsterByFloat(53117,1,$ectype_ID,209,247,0)
		AddMonsterByFloat(53118,1,$ectype_ID,211,236,0)
		AddMonsterByFloat(53118,1,$ectype_ID,214,223,0)
		AddMonsterByFloat(53118,1,$ectype_ID,220,223,0)
		AddMonsterByFloat(53118,1,$ectype_ID,217,208,0)
		AddMonsterByFloat(53117,2,$ectype_ID,213,192,2)
		AddMonsterByFloat(53117,3,$ectype_ID,203,188,2)
		AddMonsterByFloat(53117,2,$ectype_ID,224,183,2)
		
		DeleteNPC(887,-1)
		
		
		$taskdone = IsTaskDone($playid,366)
		if $taskdone == 0
			OpenMask(1,$ectype_ID)
		endif
		
		$task370 = IsTaskDone($playid,370)
		if $task370 == 0
			OpenMask(2,$ectype_ID)
		endif
		
		$task366 = IsTaskAccept($playid,366)
		if $task366 == 0
			AddMonsterByFloat( 53119, 1, $ectype_ID, 214, 174, 1 )
		endif
		
		$task369 =	IsTaskAccept($playid,369)
		if $task369 == 0
			BC("messagebox","player",-1,"The chessboard has been reset, please abandon and re-accept this quest!")
		endif
		
		$task368 = IsTaskAccept($playid,368)
		if $task368 == 0
			AddMonsterByFloat( 53128, 1, $ectype_ID, 183, 112, 1 )
			AddMonsterByFloat( 53123, 1, $ectype_ID, 197, 107, 1 )
		endif
		
		$task371 = IsTaskAccept($playid,371)
		if $task371 == 0
			DeleteMonster($ectype_ID,53131)
		
			AddMonsterByFloat( 53134, 1, $ectype_ID, 110, 99, 1 )
			AddMonsterByFloat( 53131, 1, $ectype_ID, 106, 108, 1 )
		endif
		
			
			
	}