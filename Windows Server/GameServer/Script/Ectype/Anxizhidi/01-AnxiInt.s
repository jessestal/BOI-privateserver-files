	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011-12
	//		Author:???
	//		TaskName:???????
	//		TaskID:mapid = 531
	//
	//****************************************

	function OnCreate(){



	}

	function InitTimer(){

		$ectype_id = GetEctypeID( -1 , 531 )
		SetEctypeTimer( 1 , 1 , "EctypeTimer1" )
		SetEctypeTimer( 2 , 10 , "EctypeTimer2" )
		SetEctypeTimer( 3 , 4 , "EctypeTimer3" )
		
	}

	function EctypeTimer1(){
//???
		$playerid = GetEctypeVar(-1,110)
		$ectype_id = GetEctypeID($playerid,531)
		
		$is287d = IsTaskDone($playerid,287)
		$is296d = IsTaskDone($playerid,296)
		$key = 10
		$mode = GetEctypeVar($ectype_id,$key)
		CloseMask(1,$ectype_id)
		CloseMask(2,$ectype_id)
		
		if $mode == 0
			if $is287d == 0
				OpenMask(1,$ectype_id)
			endif
			if $is296d == 0
				OpenMask(2,$ectype_id)
			endif
		endif
		
		if $mode == 1
			AddMonsterByFloat(30307,1,$ectype_id,116,282,1)
			AddMonsterByFloat(30309,1,$ectype_id,116,289,1)
			AddMonsterByFloat(30311,1,$ectype_id,209,282,1)
			AddMonsterByFloat(30310,1,$ectype_id,209,274,1)
			AddMonsterByFloat(30300,1,$ectype_id,116,282,1)
			AddMonsterByFloat(30300,1,$ectype_id,209,282,1)
			$count = 2
			$key = 2
			SetEctypeVar($ectype_id,$key,$count)
			StartEctypeTimer($ectype_id,2)
		endif
		
		AddMonsterByFloat(30277,1,$ectype_id,135,291,1)
		AddMonsterByFloat(30277,1,$ectype_id,140,291,1)
		AddMonsterByFloat(30277,1,$ectype_id,145,291,1)
		AddMonsterByFloat(30277,1,$ectype_id,150,291,1)
		AddMonsterByFloat(30278,1,$ectype_id,135,300,1)
		AddMonsterByFloat(30278,1,$ectype_id,137,300,1)
		AddMonsterByFloat(30278,1,$ectype_id,139,300,1)
		AddMonsterByFloat(30278,1,$ectype_id,141,300,1)
		AddMonsterByFloat(30278,1,$ectype_id,143,300,1)
		AddMonsterByFloat(30278,1,$ectype_id,145,300,1)
		AddMonsterByFloat(30278,1,$ectype_id,147,300,1)
		AddMonsterByFloat(30278,1,$ectype_id,149,300,1)
		AddMonsterByFloat(30278,1,$ectype_id,151,300,1)
		AddMonsterByFloat(30278,1,$ectype_id,153,300,1)
		AddMonsterByFloat(30277,1,$ectype_id,175,291,1)
		AddMonsterByFloat(30277,1,$ectype_id,180,291,1)
		AddMonsterByFloat(30277,1,$ectype_id,185,291,1)
		AddMonsterByFloat(30277,1,$ectype_id,190,291,1)
		AddMonsterByFloat(30278,1,$ectype_id,175,300,1)
		AddMonsterByFloat(30278,1,$ectype_id,177,300,1)
		AddMonsterByFloat(30278,1,$ectype_id,179,300,1)
		AddMonsterByFloat(30278,1,$ectype_id,181,300,1)
		AddMonsterByFloat(30278,1,$ectype_id,183,300,1)
		AddMonsterByFloat(30278,1,$ectype_id,185,300,1)
		AddMonsterByFloat(30278,1,$ectype_id,187,300,1)
		AddMonsterByFloat(30278,1,$ectype_id,189,300,1)
		AddMonsterByFloat(30278,1,$ectype_id,191,300,1)
		AddMonsterByFloat(30278,1,$ectype_id,193,300,1)
		
		AddMonsterByFloat(30314,1,$ectype_id,57,31,1)
		
		DeleteNPC(728,-1)
		

		
//		BC( "screen" , "map" , $ectype_id , "GUID:03778000000" , $ectype_id )
	}

	function EctypeTimer2(){
//??????
		$playerid = GetEctypeVar(-1,110)
		$ectype_id = GetEctypeID($playerid,531)
		$key = 0
		$door1 = GetEctypeVar($ectype_id,$key)
		$key = 1
		$door2 = GetEctypeVar($ectype_id,$key)
		$key = 2
		$count = GetEctypeVar($ectype_id,$key)
		
		$cmax = 2 - $door1
		$cmax = $cmax - $door2
		$cmax = $cmax * 5
		if $cmax == 0
BC("screen","map",$ectype_id,"The monsters have stopped appearing.")
			return
		endif
		if $count < $cmax		
			if $door1 == 0
				AddMonsterByFloat(30300,1,$ectype_id,116,282,1)
				$count = $count + 1
				$key = 2
				SetEctypeVar($ectype_id,$key,$count)
//BC("screen","map",$ectype_id,"GUID:03778000002")
			endif
		endif
		if $count < $cmax		
			if $door2 == 0
				AddMonsterByFloat(30300,1,$ectype_id,209,282,1)
				$count = $count + 1
				$key = 2
				SetEctypeVar($ectype_id,$key,$count)
//BC("screen","map",$ectype_id,"GUID:03778000003")
			endif
		endif
		
//BC("screen","map",$ectype_id,"GUID:03778000004",$count," | ",$cmax," | ",$door1," | ",$door2)
		StartEctypeTimer($ectype_id,2)
		
	}

	function EctypeTimer3(){
//????
		$playerid = GetEctypeVar(-1,110)
		$ectype_id = GetEctypeID($playerid,531)
		
		$key = 3
		$count = GetEctypeVar($ectype_id,$key)
		if $count == 4
			BC("screen","player",$playerid,"Slow effect has vanished.")
			return
		endif
		$is289d = IsTaskDone($playerid,289)
		if $is289d == 0
			return
			BC("screen","player",$playerid,"Slow effect has vanished.")
		endif
		
		$mposx = GetPlayerInfo($playerid,"mapposx")
		$mposy = GetPlayerInfo($playerid,"mapposy")
		if $mposx > 199
			if $mposx < 232
				if $mposy > 204
					if $mposy < 237
						$key = 3
						$count = GetEctypeVar($ectype_id,$key)
						$count = $count + 1
						$statusID = 0
						$result = AddStatus($playerid,6237,$count)
//						BC("screen","player",$playerid,"lv=",$count)
					endif
				endif
			endif
		endif
		
		StartEctypeTimer($ectype_id,3)

	}