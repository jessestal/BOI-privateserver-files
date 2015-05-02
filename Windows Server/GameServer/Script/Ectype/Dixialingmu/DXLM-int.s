	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011-07
	//		Author:???
	//		TaskName:??-?? ???
	//		TaskID:mapid = 478
	//
	//****************************************

	function OnCreate(){



	}

	function InitTimer(){

		$ectype_id = GetEctypeID( -1 , 478 )
		$result = SetEctypeTimer( 1 , 1 , "EctypeTime1" )
		SetEctypeTimer( 2 , 5 , "EctypeTime2" )
		SetEctypeTimer( 3 , 6 , "EctypeTime3" )
		SetEctypeTimer( 4 , 3 , "EctypeTime4" )

		SetEctypeTimer( 7 , 1 , "EctypeTime7" )
		SetEctypeTimer( 8 , 10 , "EctypeTime8" )
		SetEctypeTimer( 9 , 1 , "EctypeTime9" )

	}

	function EctypeTime1(){

	//??? 41027  ????? 51851 ??? 51855
		$ectype_id = GetEctypeID( -1 , 478 )
//		BC( "screen" , "map" , $ectype_id , "GUID:03964000000" , $ectype_id )

		AddMonsterByFloat( 51807 , 1, $ectype_id, 63, 145, 1 ,0 ,0 )
		AddMonsterByFloat( 51807 , 1, $ectype_id, 63, 146, 1 ,0 ,0 )
		AddMonsterByFloat( 51807 , 1, $ectype_id, 63, 147, 1 ,0 ,0 )
		AddMonsterByFloat( 51807 , 1, $ectype_id, 63, 148, 1 ,0 ,0 )
		AddMonsterByFloat( 51807 , 1, $ectype_id, 63, 149, 1 ,0 ,0 )

		AddMonsterByFloat( 51808 , 1, $ectype_id, 63, 108, 1 ,0 ,0 )
		AddMonsterByFloat( 51808 , 1, $ectype_id, 63, 109, 1 ,0 ,0 )
		AddMonsterByFloat( 51808 , 1, $ectype_id, 63, 105, 1 ,0 ,0 )
		AddMonsterByFloat( 51808 , 1, $ectype_id, 63, 106, 1 ,0 ,0 )
		AddMonsterByFloat( 51808 , 1, $ectype_id, 63, 107, 1 ,0 ,0 )
		
		AddMonsterByFloat( 41027 , 1, $ectype_id, 90, 220, 0 ,0 ,0 )
		AddMonsterByFloat( 41027 , 1, $ectype_id, 83, 186, 1 ,0 ,0 )
		AddMonsterByFloat( 41027 , 1, $ectype_id, 59, 195, 1 ,0 ,0 )
		AddMonsterByFloat( 41027 , 1, $ectype_id, 34, 166, 1 ,0 ,0 )
		AddMonsterByFloat( 41027 , 1, $ectype_id, 81, 163, 1 ,0 ,0 )
		AddMonsterByFloat( 41027 , 1, $ectype_id, 80, 156, 1 ,0 ,0 )
		AddMonsterByFloat( 41027 , 1, $ectype_id, 149, 181, 1 ,0 ,0 )
		AddMonsterByFloat( 41027 , 1, $ectype_id, 308, 149, 1 ,0 ,0 )
		AddMonsterByFloat( 41027 , 1, $ectype_id, 249, 160, 1 ,0 ,0 )
		AddMonsterByFloat( 41027 , 1, $ectype_id, 249, 173, 1 ,0 ,0 )
		AddMonsterByFloat( 41027 , 1, $ectype_id, 256, 194, 1 ,0 ,0 )
		AddMonsterByFloat( 41027 , 1, $ectype_id, 231, 232, 1 ,0 ,0 )
		AddMonsterByFloat( 41027 , 1, $ectype_id, 209, 206, 1 ,0 ,0 )
		AddMonsterByFloat( 41027 , 1, $ectype_id, 176, 200, 1 ,0 ,0 )
		AddMonsterByFloat( 41027 , 1, $ectype_id, 204, 154, 1 ,0 ,0 )
//		AddMonsterByFloat( 41027 , 1, $ectype_id, 63, 107, 1 ,0 ,0 )
//		AddMonsterByFloat( 41027 , 1, $ectype_id, 63, 107, 1 ,0 ,0 )
//		AddMonsterByFloat( 41027 , 1, $ectype_id, 63, 107, 1 ,0 ,0 )
//		AddMonsterByFloat( 41027 , 1, $ectype_id, 63, 107, 1 ,0 ,0 )
//		AddMonsterByFloat( 41027 , 1, $ectype_id, 63, 107, 1 ,0 ,0 )
//		AddMonsterByFloat( 41027 , 1, $ectype_id, 63, 107, 1 ,0 ,0 )
//		AddMonsterByFloat( 41027 , 1, $ectype_id, 63, 107, 1 ,0 ,0 )
//		AddMonsterByFloat( 41027 , 1, $ectype_id, 63, 107, 1 ,0 ,0 )
//		AddMonsterByFloat( 41027 , 1, $ectype_id, 63, 107, 1 ,0 ,0 )
		
//		AddMonsterByFloat( 51851 , 1, $ectype_id, 89, 222, 1 ,0 ,0 )
		AddMonsterByFloat( 51851 , 1, $ectype_id, 43, 168, 1 ,0 ,0 )
		AddMonsterByFloat( 51851 , 1, $ectype_id, 299, 165, 1 ,0 ,0 )
		AddMonsterByFloat( 51851 , 1, $ectype_id, 194, 199, 1 ,0 ,0 )	

		AddMonsterByFloat( 51855 , 1, $ectype_id, 83, 202, 1 ,0 ,0 )
		AddMonsterByFloat( 51855 , 1, $ectype_id, 96, 156, 1 ,0 ,0 )			
		AddMonsterByFloat( 51855 , 1, $ectype_id, 294, 159, 1 ,0 ,0 )
		AddMonsterByFloat( 51855 , 1, $ectype_id, 208, 193, 1 ,0 ,0 )

		DeleteNPC(591, -1)

		//????npc
		DeleteNPC(583, -1)
		DeleteNPC(647, -1)
		DeleteNPC(630, -1)
		DeleteNPC(641, -1)
		DeleteNPC(685, -1)
		DeleteNPC(697, -1)
		DeleteNPC(698, -1)
		DeleteNPC(699, -1)
		DeleteNPC(700, -1)
		DeleteNPC(701, -1)
		DeleteNPC(702, -1)
		DeleteNPC(703, -1)
		DeleteNPC(704, -1)
		DeleteNPC(705, -1)
		DeleteNPC(706, -1)
		DeleteNPC(707, -1)
		DeleteNPC(708, -1)
		DeleteNPC(709, -1)
		DeleteNPC(710, -1)
		DeleteNPC(711, -1)


		DeleteNPC(581, -1)
		DeleteNPC(586, -1)
		DeleteNPC(583, -1)
		DeleteNPC(681, -1)
		DeleteNPC(685, -1)
		
		//????
		DeleteNPC(648, -1)
		DeleteNPC(650, -1)
		DeleteNPC(652, -1)
		DeleteNPC(654, -1)
		DeleteNPC(656, -1)
		DeleteNPC(658, -1)
		DeleteNPC(666, -1)
		DeleteNPC(667, -1)
		DeleteNPC(668, -1)
		DeleteNPC(669, -1)
		DeleteNPC(671, -1)



	}

	function EctypeTime2(){
		//???? ??id 478 ?????? 51773 ???? 89

		$ectype_id = GetEctypeID( -1 , 478 )
		$wave_3 = GetEctypeVar(-1 , 89 )
		if $wave_3 == 0
			BC( "screen" , "map" , $ectype_id , "Brock woke the nearby monsters when he triggered the gate mechanism! A wave of Dark Ants is swarming in. Kill them and clear the way!" )
		endif

		if $wave_3 < 3
			AddMonsterByFloat( 51773, 1, $ectype_id, 55, 158, 1)
			AddMonsterByFloat( 51773, 1, $ectype_id, 56, 158, 1)
			AddMonsterByFloat( 51773, 1, $ectype_id, 57, 158, 1)
			AddMonsterByFloat( 51773, 1, $ectype_id, 58, 158, 1)
			AddMonsterByFloat( 51773, 1, $ectype_id, 59, 158, 1)
			AddMonsterByFloat( 51773, 1, $ectype_id, 60, 158, 1)
			AddMonsterByFloat( 51773, 1, $ectype_id, 61, 158, 1)
			AddMonsterByFloat( 51773, 1, $ectype_id, 62, 158, 1)
			AddMonsterByFloat( 51773, 1, $ectype_id, 63, 158, 1)
			AddMonsterByFloat( 51773, 1, $ectype_id, 64, 158, 1)
			if $wave_3 == 1
				BC( "screen" , "map" , $ectype_id , "Another wave of Dark Ants are coming." )
			endif
			if $wave3 == 2
				BC( "screen" , "map" , $ectype_id , "The last wave of Dark Ants are coming." )
			endif				

			$wave_3 = $wave_3 + 1
			SetEctypeVar(-1, 89 ,$wave_3)
			StartEctypeTimer($ectype_id , 2 )
		endif

	}

	function EctypeTime3(){

		//???? ??id 478 ?????? 51815 ??
		$ectype_id = GetEctypeID(-1, 478)
		$trap_1 = 51815

		AddMonsterByFloat($trap_1, 1, $ectype_id, 81, 195, 0)		
		AddMonsterByFloat($trap_1, 1, $ectype_id, 81, 199, 0)
		AddMonsterByFloat($trap_1, 1, $ectype_id, 81, 207, 0)
		AddMonsterByFloat($trap_1, 1, $ectype_id, 81, 214, 0)
		AddMonsterByFloat($trap_1, 1, $ectype_id, 81, 228, 0)
		AddMonsterByFloat($trap_1, 1, $ectype_id, 83, 195, 0)
		AddMonsterByFloat($trap_1, 1, $ectype_id, 83, 199, 0)
		AddMonsterByFloat($trap_1, 1, $ectype_id, 83, 214, 0)
		AddMonsterByFloat($trap_1, 1, $ectype_id, 84, 222, 0)
		AddMonsterByFloat($trap_1, 1, $ectype_id, 83, 227, 0)

		AddMonsterByFloat($trap_1, 1, $ectype_id, 76, 190, 0)
		AddMonsterByFloat($trap_1, 1, $ectype_id, 76, 188, 0)
		AddMonsterByFloat($trap_1, 1, $ectype_id, 73, 190, 0)
		AddMonsterByFloat($trap_1, 1, $ectype_id, 73, 188, 0)
		AddMonsterByFloat($trap_1, 1, $ectype_id, 70, 190, 0)
		AddMonsterByFloat($trap_1, 1, $ectype_id, 70, 188, 0)
		
		AddMonsterByFloat($trap_1, 1, $ectype_id, 88, 157, 0)
		AddMonsterByFloat($trap_1, 1, $ectype_id, 88, 160, 0)
		AddMonsterByFloat($trap_1, 1, $ectype_id, 100, 158, 0)
		AddMonsterByFloat($trap_1, 1, $ectype_id, 100, 160, 0)
		AddMonsterByFloat($trap_1, 1, $ectype_id, 115, 157, 0)
		AddMonsterByFloat($trap_1, 1, $ectype_id, 115, 160, 0)

		StartEctypeTimer($ectype_id, 3)
		StartEctypeTimer($ectype_id, 4)

}

	function EctypeTime4(){
		//???? ??id 478 ?????? 51815 ??
		$ectype_id = GetEctypeID(-1, 478)
		$trap_1 = 51815

		DeleteMonster($ectype_id, $trap_1)

}


	function EctypeTime9(){

		$ectype_id = GetEctypeID( -1 , 478 )
//		BC( "screen" , "map" , $ectype_id , "GUID:03964000004" , $ectype_id  )

		DeleteNPC(579,-1)
		DeleteNPC(580,-1)
		DeleteNPC(581,-1)
		DeleteNPC(582,-1)
		DeleteNPC(583,-1)
		DeleteNPC(586,-1)
		DeleteNPC(591,-1)
		DeleteNPC(592,-1)
		DeleteNPC(593,-1)
		DeleteNPC(594,-1)
		DeleteNPC(595,-1)
		DeleteNPC(638,-1)
		DeleteNPC(680,-1)
		DeleteNPC(681,-1)
		DeleteNPC(682,-1)
		DeleteNPC(685,-1)

		OpenMask(9,$ectype_id)
		OpenMask(6,$ectype_id)
		OpenMask(18,$ectype_id)
		OpenMask(19,$ectype_id)
		
		$key = 61
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 0
			SetEctypeVar($ectype_id,$key,1)
			$monsterA = 51751
			$monsterB = 51752
			$monsterC = 51753
			$monsterD = 51804
			AddMonsterByFloat($monsterA, 1, $ectype_id, 78, 46, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 79, 52, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 81, 49, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 99, 49, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 103, 44, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 107, 52, 0)
			AddMonsterByFloat($monsterB, 1, $ectype_id, 104, 48, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 113, 44, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 113, 53, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 117, 48, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 124, 45, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 130, 53, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 135, 44, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 142, 49, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 112, 75, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 108, 83, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 108, 83, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 108, 97, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 110, 104, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 119, 111, 0)
			AddMonsterByFloat($monsterB, 1, $ectype_id, 108, 128, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 119, 118, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 112, 104, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 113, 101, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 107, 88, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 112, 83, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 108, 71, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 110, 71, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 99, 43, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 142, 43, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 107, 98, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 110, 136, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 134, 91, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 63, 74, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 63, 98, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 71, 87, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 87, 87, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 56, 85, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 24, 91, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 39, 124, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 17, 168, 0)		
			AddMonsterByFloat($monsterD, 1, $ectype_id, 51, 171, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 61, 190, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 102, 157, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 276, 147, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 276, 59, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 234, 57, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 227, 94, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 254, 114, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 254, 94, 0)
			AddMonsterByFloat($monsterD, 1, $ectype_id, 227, 114, 0)
		endif

		$key = 62
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 1
			OpenMask(8,$ectype_id)
			DeleteNPC(650,-1)
		endif
		
		$key = 65
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar > 0
			OpenMask(7,$ectype_id)
			DeleteNPC(656,-1)
		endif
		
		$key = 66
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 11
			OpenMask(5,$ectype_id)
		endif
		if $getvar < 11
			SetEctypeVar($ectype_id,$key,0)
		endif
		
		$key = 68
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 0
			DeleteNPC(666,-1)
		endif
		if $getvar == 2
			DeleteNPC(666,-1)
			OpenMask(17,$ectype_id)
		endif
		
		$key = 69
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 1
			$mst = 51770
			AddMonsterByFloat($mst, 1, $ectype_id, 273, 51, 0)
			AddMonsterByFloat($mst, 1, $ectype_id, 273, 56, 0)
			AddMonsterByFloat($mst, 1, $ectype_id, 273, 61, 0)
			AddMonsterByFloat($mst, 1, $ectype_id, 271, 64, 0)
			AddMonsterByFloat($mst, 1, $ectype_id, 266, 67, 0)
			AddMonsterByFloat($mst, 1, $ectype_id, 261, 70, 0)
			AddMonsterByFloat($mst, 1, $ectype_id, 255, 75, 0)
			AddMonsterByFloat($mst, 1, $ectype_id, 253, 80, 0)
		endif
		
		$key = 70
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 0
			DeleteNPC(671,-1)
		endif
		if $getvar == 1
			DeleteNPC(671,-1)
			AddMonsterByFloat(51760, 1, $ectype_id, 240, 104, 0)
		endif
		
		$key = 74
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 1
			DeleteNPC(652,-1)
		endif
		
		$key = 75
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 1
			DeleteNPC(654,-1)
		endif
////----------------
		$key = 78
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 1
			SetEctypeVar($ectype_id,$key,2)
			//???---------------------------------------------------------
			$mst_she = 51753
			$mst_ci = 51815
			$mst_yi = 51751
			$mst_chong = 51752
			$monsterA = 51751
			$monsterB = 51752
			$monsterC = 51753
			//???  5? ?
			AddMonsterByFloat($mst_she, 1, $ectype_id, 250, 163, 0)
			AddMonsterByFloat($mst_she, 1, $ectype_id, 247, 172, 0)
			AddMonsterByFloat($mst_she, 1, $ectype_id, 274, 154, 0)
			AddMonsterByFloat($mst_she, 1, $ectype_id, 270, 145, 0)
			AddMonsterByFloat($mst_she, 1, $ectype_id, 270, 135, 0)

			AddMonsterByFloat($monsterA, 1, $ectype_id, 288, 117, 0)
			AddMonsterByFloat($monsterB, 1, $ectype_id, 288, 118, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 288, 119, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 288, 120, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 288, 121, 0)	
			AddMonsterByFloat($monsterB, 1, $ectype_id, 288, 122, 0)
			AddMonsterByFloat($monsterB, 1, $ectype_id, 289, 122, 0)

			AddMonsterByFloat($monsterA, 1, $ectype_id, 236, 60, 0)
			AddMonsterByFloat($monsterB, 1, $ectype_id, 236, 61, 0)
			AddMonsterByFloat($monsterB, 1, $ectype_id, 236, 62, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 236, 63, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 236, 64, 0)	
			AddMonsterByFloat($monsterB, 1, $ectype_id, 236, 65, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 236, 66, 0)	

			//????? 5? ?
			AddMonsterByFloat($mst_she, 1, $ectype_id, 257, 65, 0)
			AddMonsterByFloat($mst_she, 1, $ectype_id, 255, 74, 0)
			AddMonsterByFloat($mst_she, 1, $ectype_id, 272, 73, 0)
			AddMonsterByFloat($mst_she, 1, $ectype_id, 273, 60, 0)
			AddMonsterByFloat($mst_she, 1, $ectype_id, 265, 72, 0)
		endif
		//??AI
		AddMonsterByFloat(51769,1,$ectype_id,195,271,0)
	}


	function EctypeTime8(){

		$getvar = GetEctypeVar(-1,84)
		$playerid = GetEctypeVar(-1,111)
		if $getvar == 1
			//????
			ReleaseEctype($playerid,478)
		else
			//CD??
			SetEctypeVar(-1,85,0)
			BC("screen","player",$playerid,"The Ward of Inversion can be used again.")
		endif
		
	}	
	function EctypeTime7(){

		$getvar = GetEctypeVar(-1,84)
		$playerid = GetEctypeVar(-1,111)
		DeleteNPC(579,-1)
		
		
	}