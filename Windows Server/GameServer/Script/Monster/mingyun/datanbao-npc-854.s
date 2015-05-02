	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/24
	//		Author:???
	//		TaskName:datanbao-npc-854.s
	//		TaskID:
	//
	//****************************************
	
	//????3419 ?????????????
	//????3420 ????
	//????3862 ????UID
	
	function OnRequest(){
		
		$ectype_ID = GetEctypeID(-1,559)
		$aa = GetEctypeVar($ectype_ID,5)
		$bb = GetEctypeVar($ectype_ID,10)
		$ceng = GetPlayerVar(-1,3419)
		$playid = GetPlayerID()
		SetEctypeVar($ectype_ID,110,$playid)
		
		if $ceng == 1
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
		endif
		
		if $ceng == 13
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
		endif
		
		if $aa == 1
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
		endif
		
		if $bb == 0
			DisableNpcOption(6)
		endif
	}
	
	function OnOption0(){
		
		$ectype_ID = GetEctypeID(-1,559)
		$reng = GetEctypeVar($ectype_ID,5)
		
		//??????????
		$ceng = GetPlayerVar(-1,3419)
		if $ceng > 0
			SetEctypeVar($ectype_ID,1,$ceng)
		else
			BC( "screen" , "player" , -1, "Unknown error" )
		endif
		
		$ectype_ceng = GetEctypeVar($ectype_ID, 1)
		//???????? $a?????????? $b?????????
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		SetEctypeVar($ectype_ID,2,1)
		if $ectype_ceng == 1
			$a = RandomNumber(1,3)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)			
		endif
		
		//?????
		if $ectype_ceng == 2
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			SetEctypeVar($ectype_ID,12,9)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 3
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 4
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 5
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 6
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			SetEctypeVar($ectype_ID,12,9)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 7
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif	
		
		//?????
		if $ectype_ceng == 8
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		$x1 = $x + 1
		$x2 = $x - 1
		//?????
		if $ectype_ceng == 9
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 10
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			SetEctypeVar($ectype_ID,12,9)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//??????
		if $ectype_ceng == 11
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif	
		
		//??????
		if $ectype_ceng == 12
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
	}
	
		function OnOption1(){
		
		$ectype_ID = GetEctypeID(-1,559)
		$reng = GetEctypeVar($ectype_ID,5)
		
		//??????????
		$ceng = GetPlayerVar(-1,3419)
		if $ceng > 0
			SetEctypeVar($ectype_ID,1,$ceng)
		else
			BC( "screen" , "player" , -1, "Unknown error" )
		endif
		
		$ectype_ceng = GetEctypeVar($ectype_ID, 1)
		//???????? $a?????????? $b?????????
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		SetEctypeVar($ectype_ID,2,2)
		if $ectype_ceng == 1
			$a = RandomNumber(1,3)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)			
		endif
		
		//?????
		if $ectype_ceng == 2
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			SetEctypeVar($ectype_ID,12,9)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 3
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 4
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 5
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 6
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			SetEctypeVar($ectype_ID,12,9)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 7
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif	
		
		//?????
		if $ectype_ceng == 8
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		$x1 = $x + 1
		$x2 = $x - 1
		//?????
		if $ectype_ceng == 9
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 10
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			SetEctypeVar($ectype_ID,12,9)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//??????
		if $ectype_ceng == 11
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif	
		
		//??????
		if $ectype_ceng == 12
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
	}
	
		function OnOption2(){
		
		$ectype_ID = GetEctypeID(-1,559)
		$reng = GetEctypeVar($ectype_ID,5)
		
		//??????????
		$ceng = GetPlayerVar(-1,3419)
		if $ceng > 0
			SetEctypeVar($ectype_ID,1,$ceng)
		else
			BC( "screen" , "player" , -1, "Unknown error" )
		endif
		
		$ectype_ceng = GetEctypeVar($ectype_ID, 1)
		//???????? $a?????????? $b?????????
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		SetEctypeVar($ectype_ID,2,3)
		if $ectype_ceng == 1
			$a = RandomNumber(1,3)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)			
		endif
		
		//?????
		if $ectype_ceng == 2
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			SetEctypeVar($ectype_ID,12,9)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 3
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 4
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 5
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 6
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			SetEctypeVar($ectype_ID,12,9)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 7
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif	
		
		//?????
		if $ectype_ceng == 8
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		$x1 = $x + 1
		$x2 = $x - 1
		//?????
		if $ectype_ceng == 9
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 10
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			SetEctypeVar($ectype_ID,12,9)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//??????
		if $ectype_ceng == 11
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif	
		
		//??????
		if $ectype_ceng == 12
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
	}
	
		function OnOption3(){
		
		$ectype_ID = GetEctypeID(-1,559)
		$reng = GetEctypeVar($ectype_ID,5)
		
		//??????????
		$ceng = GetPlayerVar(-1,3419)
		if $ceng > 0
			SetEctypeVar($ectype_ID,1,$ceng)
		else
			BC( "screen" , "player" , -1, "Unknown error" )
		endif
		
		$ectype_ceng = GetEctypeVar($ectype_ID, 1)
		//???????? $a?????????? $b?????????
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		SetEctypeVar($ectype_ID,2,4)
		if $ectype_ceng == 1
			$a = RandomNumber(1,3)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)			
		endif
		
		//?????
		if $ectype_ceng == 2
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			SetEctypeVar($ectype_ID,12,9)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 3
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 4
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 5
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 6
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			SetEctypeVar($ectype_ID,12,9)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 7
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif	
		
		//?????
		if $ectype_ceng == 8
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		$x1 = $x + 1
		$x2 = $x - 1
		//?????
		if $ectype_ceng == 9
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 10
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			SetEctypeVar($ectype_ID,12,9)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//??????
		if $ectype_ceng == 11
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif	
		
		//??????
		if $ectype_ceng == 12
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
	}
	
		function OnOption4(){
		
		$ectype_ID = GetEctypeID(-1,559)
		$reng = GetEctypeVar($ectype_ID,5)
		
		//??????????
		$ceng = GetPlayerVar(-1,3419)
		if $ceng > 0
			SetEctypeVar($ectype_ID,1,$ceng)
		else
			BC( "screen" , "player" , -1, "Unknown error" )
		endif
		
		$ectype_ceng = GetEctypeVar($ectype_ID, 1)
		//???????? $a?????????? $b?????????
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		SetEctypeVar($ectype_ID,2,5)
		if $ectype_ceng == 1
			$a = RandomNumber(1,3)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)			
		endif
		
		//?????
		if $ectype_ceng == 2
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			SetEctypeVar($ectype_ID,12,9)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 3
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 4
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 5
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 6
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			SetEctypeVar($ectype_ID,12,9)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 7
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif	
		
		//?????
		if $ectype_ceng == 8
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		$x1 = $x + 1
		$x2 = $x - 1
		//?????
		if $ectype_ceng == 9
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 10
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			SetEctypeVar($ectype_ID,12,9)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//??????
		if $ectype_ceng == 11
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif	
		
		//??????
		if $ectype_ceng == 12
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
	}
	
		function OnOption5(){
		
		$ectype_ID = GetEctypeID(-1,559)
		$reng = GetEctypeVar($ectype_ID,5)
		
		//??????????
		$ceng = GetPlayerVar(-1,3419)
		if $ceng > 0
			SetEctypeVar($ectype_ID,1,$ceng)
		else
			BC( "screen" , "player" , -1, "Unknown error" )
		endif
		
		$ectype_ceng = GetEctypeVar($ectype_ID, 1)
		//???????? $a?????????? $b?????????
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		SetEctypeVar($ectype_ID,2,6)
		if $ectype_ceng == 1
			$a = RandomNumber(1,3)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)			
		endif
		
		//?????
		if $ectype_ceng == 2
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			SetEctypeVar($ectype_ID,12,9)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 3
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 4
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 5
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 6
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			SetEctypeVar($ectype_ID,12,9)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 7
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif	
		
		//?????
		if $ectype_ceng == 8
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		$x1 = $x + 1
		$x2 = $x - 1
		//?????
		if $ectype_ceng == 9
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//?????
		if $ectype_ceng == 10
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			SetEctypeVar($ectype_ID,12,9)
			StartEctypeTimer($ectype_ID,3)
		endif
		
		//??????
		if $ectype_ceng == 11
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif	
		
		//??????
		if $ectype_ceng == 12
			$a = RandomNumber(1,6)
			//?????
			if $a == 1
				AddMonsterByFloat(52301,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 2
				AddMonsterByFloat(52302,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 3
				AddMonsterByFloat(52303,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 4
				AddMonsterByFloat(52304,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 5
				AddMonsterByFloat(52305,1,$ectype_ID,$x,$y,0)
			endif
			if $a == 6
				AddMonsterByFloat(52306,1,$ectype_ID,$x,$y,0)
			endif 
			SetEctypeVar($ectype_ID,3,$a)
			SetEctypeVar($ectype_ID,5,1)
			StartEctypeTimer($ectype_ID,3)
		endif
		
	}
	
	
	function OnOption6(){
		
		$ectype_ID = GetEctypeID(-1,559)
		$ceng = GetPlayerVar(-1,3419)
		$pass = GetEctypeVar($ectype_ID,10)

		//????
		$level = GetPlayerInfo(-1,"level")		
		$exp = $level * 4
		$exp = $exp - 76
		$exp = $exp * 6
		$exp = $exp * $level
		$exp = $exp * $level
		$exp = $exp / 5
		$exp1 = 400 * $level
		$exp1 = $exp1 * $level
		$exp = $exp + $exp1
		$exp = $exp / 49
		$exp = $exp * $ceng
		
		//??????
		$fieldlevel = GetFieldLevel(-1)
		$fieldexp1 = $fieldlevel * $fieldlevel
		$fieldexp2 = 6 * $fieldlevel
		$fieldexp2 = $fieldexp2 / 10
		$fieldexp = $fieldexp1 + $fieldexp2
		$fieldexp = $fieldexp + 1000
		$fieldexp = $fieldexp * 2
		$fieldexp = $fieldexp / 10
		
		
		if $pass == 1
		
			if $ceng == 1
				$fly = FlyToMap(-1,$ectype_ID,50,33)
				if $fly > 0
					$ceng = $ceng + 1
					SetPlayerVar(-1,3419,$ceng)
					SetEctypeTimer($ectype_ID,1,$ceng)
					SetEctypeVar($ectype_ID,5,0)
					SetEctypeVar($ectype_ID,10,0)
					SetEctypeVar($ectype_ID,7,0)
					SetEctypeVar($ectype_ID,8,0)
					SetEctypeVar($ectype_ID,9,0)
					SetEctypeVar($ectype_ID,11,0)
					SetEctypeVar($ectype_ID,12,0)
					DeleteNPC(854,-1)
					AddPlayerInfo(-1,"exp",$exp)
					AddFieldExp(-1,$fieldexp)
					AddNpcByPos(854,$ectype_ID,130,83,180000,0)
					AddNpcByPos(905,$ectype_ID,89,78,180000,0)
					return
				endif
			endif
			
			if $ceng == 2
				$fly = FlyToMap(-1,$ectype_ID,68,33)
				if $fly > 0
					$ceng = $ceng + 1
					SetPlayerVar(-1,3419,$ceng)
					SetEctypeTimer($ectype_ID,1,$ceng)
					SetEctypeVar($ectype_ID,5,0)
					SetEctypeVar($ectype_ID,10,0)
					SetEctypeVar($ectype_ID,7,0)
					SetEctypeVar($ectype_ID,8,0)
					SetEctypeVar($ectype_ID,9,0)
					SetEctypeVar($ectype_ID,11,0)
					SetEctypeVar($ectype_ID,12,0)
					DeleteMonster($ectype_ID,53002)
					DeleteMonster($ectype_ID,53003)
					DeleteMonster($ectype_ID,53004)
					DeleteNPC(854,-1)
					AddPlayerInfo(-1,"exp",$exp)
					AddFieldExp(-1,$fieldexp)
					AddNpcByPos(854,$ectype_ID,174,83,180000,0)
					return
				endif	
			endif
			
			if $ceng == 3
				$fly = FlyToMap(-1,$ectype_ID,87,33)
				if $fly > 0
					$ceng = $ceng + 1
					SetPlayerVar(-1,3419,$ceng)
					SetEctypeTimer($ectype_ID,1,$ceng)
					SetEctypeVar($ectype_ID,5,0)
					SetEctypeVar($ectype_ID,10,0)
					SetEctypeVar($ectype_ID,7,0)
					SetEctypeVar($ectype_ID,8,0)
					SetEctypeVar($ectype_ID,9,0)
					SetEctypeVar($ectype_ID,11,0)
					SetEctypeVar($ectype_ID,12,0)
					DeleteNPC(854,-1)
					AddPlayerInfo(-1,"exp",$exp)
					AddFieldExp(-1,$fieldexp)
					AddNpcByPos(854,$ectype_ID,222,83,180000,0)
					return
				endif	
			endif
			
			if $ceng == 4
				$fly = FlyToMap(-1,$ectype_ID,33,51)
				if $fly > 0
					$ceng = $ceng + 1
					SetPlayerVar(-1,3419,$ceng)
					SetEctypeTimer($ectype_ID,1,$ceng)
					SetEctypeVar($ectype_ID,5,0)
					SetEctypeVar($ectype_ID,10,0)
					SetEctypeVar($ectype_ID,7,0)
					SetEctypeVar($ectype_ID,8,0)
					SetEctypeVar($ectype_ID,9,0)
					SetEctypeVar($ectype_ID,11,0)
					SetEctypeVar($ectype_ID,12,0)
					DeleteNPC(854,-1)
					AddPlayerInfo(-1,"exp",$exp)
					AddFieldExp(-1,$fieldexp)
					AddNpcByPos(854,$ectype_ID,84,129,180000,0)
					return
				endif	
			endif
			
			if $ceng == 5
				$fly = FlyToMap(-1,$ectype_ID,50,51)
				if $fly > 0
					$ceng = $ceng + 1
					SetPlayerVar(-1,3419,$ceng)
					SetEctypeTimer($ectype_ID,1,$ceng)
					SetEctypeVar($ectype_ID,5,0)
					SetEctypeVar($ectype_ID,10,0)
					SetEctypeVar($ectype_ID,7,0)
					SetEctypeVar($ectype_ID,8,0)
					SetEctypeVar($ectype_ID,9,0)
					SetEctypeVar($ectype_ID,11,0)
					SetEctypeVar($ectype_ID,12,0)
					DeleteNPC(854,-1)
					AddPlayerInfo(-1,"exp",$exp)
					AddFieldExp(-1,$fieldexp)
					AddNpcByPos(854,$ectype_ID,130,129,180000,0)
					return
				endif	
			endif
			
			if $ceng == 6
				$fly = FlyToMap(-1,$ectype_ID,68,51)
				if $fly > 0
					$ceng = $ceng + 1
					SetPlayerVar(-1,3419,$ceng)
					SetEctypeTimer($ectype_ID,1,$ceng)
					SetEctypeVar($ectype_ID,5,0)
					SetEctypeVar($ectype_ID,10,0)
					SetEctypeVar($ectype_ID,7,0)
					SetEctypeVar($ectype_ID,8,0)
					SetEctypeVar($ectype_ID,9,0)
					SetEctypeVar($ectype_ID,11,0)
					SetEctypeVar($ectype_ID,12,0)
					DeleteMonster($ectype_ID,53002)
					DeleteMonster($ectype_ID,53003)
					DeleteMonster($ectype_ID,53004)
					DeleteNPC(854,-1)
					AddPlayerInfo(-1,"exp",$exp)
					AddFieldExp(-1,$fieldexp)
					AddNpcByPos(854,$ectype_ID,176,129,180000,0)
					return
				endif	
			endif
			
			if $ceng == 7
				$fly = FlyToMap(-1,$ectype_ID,87,51)
				if $fly > 0
					$ceng = $ceng + 1
					SetPlayerVar(-1,3419,$ceng)
					SetEctypeTimer($ectype_ID,1,$ceng)
					SetEctypeVar($ectype_ID,5,0)
					SetEctypeVar($ectype_ID,10,0)
					SetEctypeVar($ectype_ID,7,0)
					SetEctypeVar($ectype_ID,8,0)
					SetEctypeVar($ectype_ID,9,0)
					SetEctypeVar($ectype_ID,11,0)
					SetEctypeVar($ectype_ID,12,0)
					DeleteNPC(854,-1)
					AddPlayerInfo(-1,"exp",$exp)
					AddFieldExp(-1,$fieldexp)
					AddNpcByPos(854,$ectype_ID,222,129,180000,0)
					return
				endif	
			endif
			
			if $ceng == 8
				$fly = FlyToMap(-1,$ectype_ID,32,68)
				if $fly > 0
					$ceng = $ceng + 1
					SetPlayerVar(-1,3419,$ceng)
					SetEctypeTimer($ectype_ID,1,$ceng)
					SetEctypeVar($ectype_ID,5,0)
					SetEctypeVar($ectype_ID,10,0)
					SetEctypeVar($ectype_ID,7,0)
					SetEctypeVar($ectype_ID,8,0)
					SetEctypeVar($ectype_ID,9,0)
					SetEctypeVar($ectype_ID,11,0)
					SetEctypeVar($ectype_ID,12,0)
					DeleteNPC(854,-1)
					AddPlayerInfo(-1,"exp",$exp)
					AddFieldExp(-1,$fieldexp)
					AddNpcByPos(854,$ectype_ID,84,172,180000,0)
					return
				endif	
			endif
			
			if $ceng == 9
				$fly = FlyToMap(-1,$ectype_ID,50,68)
				if $fly > 0
					$ceng = $ceng + 1
					SetPlayerVar(-1,3419,$ceng)
					SetEctypeTimer($ectype_ID,1,$ceng)
					SetEctypeVar($ectype_ID,5,0)
					SetEctypeVar($ectype_ID,10,0)
					SetEctypeVar($ectype_ID,7,0)
					SetEctypeVar($ectype_ID,8,0)
					SetEctypeVar($ectype_ID,9,0)
					SetEctypeVar($ectype_ID,11,0)
					SetEctypeVar($ectype_ID,12,0)
					DeleteNPC(854,-1)
					AddPlayerInfo(-1,"exp",$exp)
					AddFieldExp(-1,$fieldexp)
					AddNpcByPos(854,$ectype_ID,130,172,180000,0)
					return
				endif	
			endif
			
			if $ceng == 10
				$fly = FlyToMap(-1,$ectype_ID,68,68)
				if $fly > 0
					$ceng = $ceng + 1
					SetPlayerVar(-1,3419,$ceng)
					SetEctypeTimer($ectype_ID,1,$ceng)
					SetEctypeVar($ectype_ID,5,0)
					SetEctypeVar($ectype_ID,10,0)
					SetEctypeVar($ectype_ID,7,0)
					SetEctypeVar($ectype_ID,8,0)
					SetEctypeVar($ectype_ID,9,0)
					SetEctypeVar($ectype_ID,11,0)
					SetEctypeVar($ectype_ID,12,0)
					DeleteMonster($ectype_ID,53002)
					DeleteMonster($ectype_ID,53003)
					DeleteMonster($ectype_ID,53004)
					DeleteNPC(854,-1)
					AddPlayerInfo(-1,"exp",$exp)
					AddFieldExp(-1,$fieldexp)
					AddNpcByPos(854,$ectype_ID,174,172,180000,0)
					return
				endif	
			endif
			
			if $ceng == 11
				$fly = FlyToMap(-1,$ectype_ID,87,68)
				if $fly > 0
					$ceng = $ceng + 1
					SetPlayerVar(-1,3419,$ceng)
					SetEctypeTimer($ectype_ID,1,$ceng)
					SetEctypeVar($ectype_ID,5,0)
					SetEctypeVar($ectype_ID,10,0)
					SetEctypeVar($ectype_ID,7,0)
					SetEctypeVar($ectype_ID,8,0)
					SetEctypeVar($ectype_ID,9,0)
					SetEctypeVar($ectype_ID,11,0)
					SetEctypeVar($ectype_ID,12,0)
					DeleteNPC(854,-1)
					AddPlayerInfo(-1,"exp",$exp)
					AddFieldExp(-1,$fieldexp)
					AddNpcByPos(854,$ectype_ID,221,174,180000,0)
					return
				endif	
			endif
			
			if $ceng == 12
				$fly = FlyToMap(-1,$ectype_ID,88,91)
				if $fly > 0
					$ceng = $ceng + 1
					SetPlayerVar(-1,3419,$ceng)
					SetEctypeTimer($ectype_ID,1,$ceng)
					SetEctypeVar($ectype_ID,5,0)
					SetEctypeVar($ectype_ID,10,0)
					SetEctypeVar($ectype_ID,7,0)
					SetEctypeVar($ectype_ID,8,0)
					SetEctypeVar($ectype_ID,9,0)
					SetEctypeVar($ectype_ID,11,0)
					SetEctypeVar($ectype_ID,12,0)
					AddPlayerInfo(-1,"exp",$exp)
					AddFieldExp(-1,$fieldexp)
					AddMonsterByFloat(53016,1,$ectype_ID,225,232,0,-1)
					AddNpcByPos(854,$ectype_ID,219,232,180000,0)
					return
				endif	
			endif
		else
			BC("screen","player",-1,"You haven't passed the test yet, you can't enter the next level!")
		endif
		
	}
	
	function OnOption7(){
		
		$fly = FlyToMap(-1,475,72,50,0)
			BC("screen","player",-1,"You have left the Gate of Fate!")
			return
		endif
		
	}