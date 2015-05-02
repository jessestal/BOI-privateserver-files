	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8/24
	//		Author:???
	//		TaskName:
	//		TaskID:
	//
	//****************************************
	
	function OnUseItem(){
		
		$playerid = GetPlayerID
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count1 < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 44609, 1 )
		//??????????
		
		if $del_count == 0
//tttttttttttttttttttttttttttttttttttttttttttttttt----------??????
			$randombuff = RandomNumber(1,10000)
			$giftbuffpre = 0
			//??:$giftbuffpre??????????0??,???????????????
			//??:$giftbuff??????,??????????,????,?????
//1	??????	2	5	2815
			$giftbuff = $giftbuffpre + 2815
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",2,2)
				endif
			endif
			$giftbuffpre = $giftbuff
//14.15	?????	1	62620	2
			$giftbuff = $giftbuffpre + 2
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",62620,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player",#name,"  has used the Celestial Blessing and luckily acquired the Athena Soul!")
					BC("chat","servergroup",-1,"Player",#name,"  has used the Celestial Blessing and luckily acquired the Athena Soul!")
				endif
			endif
			$giftbuffpre = $giftbuff
//16	??????????	1	44467	1
			$giftbuff = $giftbuffpre + 1
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",44467,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player",#name,"  has used the Celestial Blessing and luckily acquired a Holy Fortification Stone Fragment!")
					BC("chat","servergroup",-1,"Player",#name,"  has used the Celestial Blessing and luckily acquired a Holy Fortification Stone Fragment!")
				endif
			endif
			$giftbuffpre = $giftbuff
//2	???????+7???	2	44378	2300
			$giftbuff = $giftbuffpre + 2300
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",44378,2)
				endif
			endif
			$giftbuffpre = $giftbuff
//13	??????????	1	62137	1
			$giftbuff = $giftbuffpre + 1
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",62137,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player",#name,"  has used the Celestial Blessing and luckily acquired a Combat Mount Hel's Fury!")
					BC("chat","servergroup",-1,"Player",#name,"  has used the Celestial Blessing and luckily acquired a Combat Mount Hel's Fury!")
				endif
			endif
			$giftbuffpre = $giftbuff
//3	??	2	2314	2200
			$giftbuff = $giftbuffpre + 2200
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",2312,2)
				endif
			endif
			$giftbuffpre = $giftbuff
//12	????????	1	64181	1
			$giftbuff = $giftbuffpre + 1
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",64181,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player",#name,"  used the Celestial Blessing, and was lucky enough to receive a Pet Skill Removal Charm!")
					BC("chat","servergroup",-1,"Player",#name,"  used the Celestial Blessing, and was lucky enough to receive a Pet Skill Removal Charm!")
				endif
			endif
			$giftbuffpre = $giftbuff
//4	????(5?)	1	4994	1300
			$giftbuff = $giftbuffpre + 1300
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",4966,1)
				endif
			endif
			$giftbuffpre = $giftbuff
//11	????????	1	54275	2
			$giftbuff = $giftbuffpre + 2
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",54275,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player",#name,"  used the Celestial Blessing, and was lucky enough to receive a Gold Celestial Lord Card!")
					BC("chat","servergroup",-1,"Player",#name,"  used the Celestial Blessing, and was lucky enough to receive a Gold Celestial Lord Card!")
				endif
			endif
			$giftbuffpre = $giftbuff
//5	?? 10w???	5	59323	1300
			$giftbuff = $giftbuffpre + 1300
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",44610,5)
				endif
			endif
			$giftbuffpre = $giftbuff
//9	????????	1	54274	5
			$giftbuff = $giftbuffpre + 5
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",54274,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player",#name,"  used the Celestial Blessing, and was lucky enough to receive a Silver Celestial Lord Card!")
					BC("chat","servergroup",-1,"Player",#name,"  used the Celestial Blessing, and was lucky enough to receive a Silver Celestial Lord Card!")
				endif
			endif
			$giftbuffpre = $giftbuff
//6	???????+10???	1	44381	35
			$giftbuff = $giftbuffpre + 35
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",44381,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player",#name,"  used the Celestial Blessing, and was lucky enough to receive a Hephaestus' Hammer +10 Scroll!")
					BC("chat","servergroup",-1,"Player",#name,"  used the Celestial Blessing, and was lucky enough to receive a Hephaestus' Hammer +10 Scroll!")
				endif
			endif
			$giftbuffpre = $giftbuff
//8	?????	1	59310	25
			$giftbuff = $giftbuffpre + 25
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",64248,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player",#name,"  has used the Celestial Blessing and luckily acquired the LV5 Gem Chest!")
					BC("chat","servergroup",-1,"Player",#name,"  has used the Celestial Blessing and luckily acquired the LV5 Gem Chest!")
				endif
			endif
			$giftbuffpre = $giftbuff
//7	13??????	1	60099	10
			$giftbuff = $giftbuffpre + 10
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",60099,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player",#name,"  used the Celestial Blessing, and was lucky enough to receive a LV13 Chalice Coupon!")
					BC("chat","servergroup",-1,"Player",#name,"  used the Celestial Blessing, and was lucky enough to receive a LV13 Chalice Coupon!")
				endif
			endif
			$giftbuffpre = $giftbuff
//10	???????+12???	1	44383	3
			$giftbuff = $giftbuffpre + 3
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",44383,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player",#name,"  used the Celestial Blessing, and was lucky enough to receive a Hephaestus' Hammer +12 Scroll!")
					BC("chat","servergroup",-1,"Player",#name,"  used the Celestial Blessing, and was lucky enough to receive a Hephaestus' Hammer +12 Scroll!")
				endif
			endif
			$giftbuffpre = $giftbuff




//			BC("screen","player",-1,"randombuff = ",$randombuff," | giftbuff = ",$giftbuff)
//			BC("screen","player",-1,"randombuff_PLUS = ",$randombuff_PLUS," | giftbuff_PLUS = ",$giftbuff_PLUS)

			//tttttttttttttttttttttttttttttttttttttttttttttttt----------??????
		endif
		
	}
