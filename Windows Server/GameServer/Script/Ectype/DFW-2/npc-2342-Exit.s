	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2012-12
	//		Author:???
	//		TaskName:????2?
	//		TaskID:mapid = 568
	//****************************************

	function OnRequest(){

	}


	function OnOption0(){
		
		$mapid = GetPlayerInfo(-1,"mapid")
		$stage = GetEctypeVar($mapid,4)
		if $stage == 1
			BC("screen","player",-1,"Good luck!")
		endif
		if $stage <= 46
			if $stage > 1
				call getpos()
				FlyToMap(-1,$mapid,$posx,$posy)
//				BC("chat","player",-1,"|stage=",$stage,"|mapid=",$mapid,"|posx=",$posx,"|posy=",$posy)
				#name = GetPlayerInfo(-1,"name")
				BC("screen","map",$mapid,#name,"Return to the platform that is under progress.")
			endif
		endif
		
	}


	function OnOption1(){
		
		FlyToMap(-1, 475, 75, 37)
		
	}
	
	function getpos(){
		
		if $stage == 1	
		$posx = 16	
		$posy = 111	
		endif
		if $stage == 2	
		$posx = 14	
		$posy = 91	
		endif
		if $stage == 3	
		$posx = 4	
		$posy = 65	
		endif
		if $stage == 4	
		$posx = 14	
		$posy = 36	
		endif
		if $stage == 5	
		$posx = 13	
		$posy = 13	
		endif
		if $stage == 6	
		$posx = 36	
		$posy = 12	
		endif
		if $stage == 7	
		$posx = 63	
		$posy = 5	
		endif
		if $stage == 8	
		$posx = 91	
		$posy = 13	
		endif
		if $stage == 9	
		$posx = 116	
		$posy = 16	
		endif
		if $stage == 10	
		$posx = 114	
		$posy = 37	
		endif
		if $stage == 11	
		$posx = 121	
		$posy = 64	
		endif
		if $stage == 12	
		$posx = 113	
		$posy = 91	
		endif
		if $stage == 13	
		$posx = 110	
		$posy = 116	
		endif
		if $stage == 14	
		$posx = 92	
		$posy = 111	
		endif
		if $stage == 15	
		$posx = 63	
		$posy = 123	
		endif
		if $stage == 16	
		$posx = 34	
		$posy = 111	
		endif
		if $stage == 17	
		$posx = 30	
		$posy = 98	
		endif
		if $stage == 18	
		$posx = 23	
		$posy = 80	
		endif
		if $stage == 19	
		$posx = 28	
		$posy = 65	
		endif
		if $stage == 20	
		$posx = 23	
		$posy = 48	
		endif
		if $stage == 21	
		$posx = 30	
		$posy = 30	
		endif
		if $stage == 22	
		$posx = 47	
		$posy = 23	
		endif
		if $stage == 23	
		$posx = 62	
		$posy = 29	
		endif
		if $stage == 24	
		$posx = 81	
		$posy = 23	
		endif
		if $stage == 25	
		$posx = 98	
		$posy = 30	
		endif
		if $stage == 26	
		$posx = 104	
		$posy = 47	
		endif
		if $stage == 27	
		$posx = 97	
		$posy = 65	
		endif
		if $stage == 28	
		$posx = 104	
		$posy = 80	
		endif
		if $stage == 29	
		$posx = 99	
		$posy = 98	
		endif
		if $stage == 30	
		$posx = 81	
		$posy = 104	
		endif
		if $stage == 31	
		$posx = 63	
		$posy = 106	
		endif
		if $stage == 32	
		$posx = 47	
		$posy = 104	
		endif
		if $stage == 33	
		$posx = 42	
		$posy = 88	
		endif
		if $stage == 34	
		$posx = 39	
		$posy = 37	
		endif
		if $stage == 35	
		$posx = 89	
		$posy = 37	
		endif
		if $stage == 36	
		$posx = 85	
		$posy = 87	
		endif
		if $stage == 37	
		$posx = 63	
		$posy = 92	
		endif
		if $stage == 38	
		$posx = 46	
		$posy = 77	
		endif
		if $stage == 39	
		$posx = 50	
		$posy = 64	
		endif
		if $stage == 40	
		$posx = 49	
		$posy = 52	
		endif
		if $stage == 41	
		$posx = 64	
		$posy = 52	
		endif
		if $stage == 42	
		$posx = 78	
		$posy = 51	
		endif
		if $stage == 43	
		$posx = 78	
		$posy = 64	
		endif
		if $stage == 44	
		$posx = 75	
		$posy = 76	
		endif
		if $stage == 45	
		$posx = 63	
		$posy = 78	
		endif
		if $stage == 46	
		$posx = 64	
		$posy = 69	
		endif

	}