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
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count1 < 1
			BC( "screen", "player", -1, "You do not have enough bag space." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 44430, 1 )
		//??????????
		
		if $del_count == 0
//tttttttttttttttttttttttttttttttttttttttttttttttt----------??????
			$randombuff = RandomNumber(1,10000)
			$giftbuffpre = 0
			//??:$giftbuffpre??????????0??,???????????????
			//??:$giftbuff??????,??????????,????,?????
//??????	5	2000 2
			$giftbuff = $giftbuffpre + 2000
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",5,2)
				endif
			endif
			$giftbuffpre = $giftbuff
//13??????	60099	20 1
			$giftbuff = $giftbuffpre + 20
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",60099,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"The hero ",#name," used a Wish Scepter, and was lucky enough to receive a LV13 Chalice Exchange Ticket!")
					BC("chat","servergroup",-1,"The hero ",#name," used a Wish Scepter, and was lucky enough to receive a LV13 Chalice Exchange Ticket!")
				endif
			endif
			$giftbuffpre = $giftbuff
//?? 10w???	59323	2000 5
			$giftbuff = $giftbuffpre + 2000
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",59323,5)
				endif
			endif
			$giftbuffpre = $giftbuff
//????	5635	20 1
			$giftbuff = $giftbuffpre + 20
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",5635,1)
				endif
			endif
			$giftbuffpre = $giftbuff
//???????+7???	44378	2000 1
			$giftbuff = $giftbuffpre + 2000
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",44378,1)
				endif
			endif
			$giftbuffpre = $giftbuff
//???????+10???	44381	75 1
			$giftbuff = $giftbuffpre + 75
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",44381,1)
				endif
			endif
			$giftbuffpre = $giftbuff
//????????	6672	1500 2 
//??? 2314	1500 2
			$giftbuff = $giftbuffpre + 1500
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",2314,2)
				endif
			endif
			$giftbuffpre = $giftbuff
//10??????	44149	1552 1
			$giftbuff = $giftbuffpre + 155
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",44149,1)
				endif
			endif
			$giftbuffpre = $giftbuff
//???????? 	6674	821 2
			$giftbuff = $giftbuffpre + 821
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",6674,2)
				endif
			endif
			$giftbuffpre = $giftbuff
			
//---------------------------------????
			$giftbuff = $giftbuffpre + 9
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					$randombuff_PLUS = RandomNumber(1,90)
					$giftbuffpre_PLUS = 0
					//????????	64181	3.0
					$giftbuff_PLUS = $giftbuffpre_PLUS + 30
					if $randombuff_PLUS > $giftbuffpre_PLUS
						if $randombuff_PLUS <= $giftbuff_PLUS
							AddPlayerInfo($playerid,"item",64181,1)
							#name = GetPlayerInfo(-1,"name")
							BC("screen","servergroup",-1,"The hero ",#name," used a Wish Scepter, and was lucky enough to receive a Pet Skill Removal Charm!")
							BC("chat","servergroup",-1,"The hero ",#name," used a Wish Scepter, and was lucky enough to receive a Pet Skill Removal Charm!")
						endif
					endif
					$giftbuffpre_PLUS = $giftbuff_PLUS
					//???????+12???	44383	3.2
					$giftbuff_PLUS = $giftbuffpre_PLUS + 32
					if $randombuff_PLUS > $giftbuffpre_PLUS
						if $randombuff_PLUS <= $giftbuff_PLUS
							AddPlayerInfo($playerid,"item",44383,1)
							#name = GetPlayerInfo(-1,"name")
							BC("screen","servergroup",-1,"The hero ",#name," used a Wish Scepter, and was lucky enough to receive a Pet Skill Removal Charm!")
							BC("chat","servergroup",-1,"The hero ",#name," used a Wish Scepter, and was lucky enough to receive a Pet Skill Removal Charm!")
						endif
					endif
					$giftbuffpre_PLUS = $giftbuff_PLUS
					//10???????	44158	2.0
					$giftbuff_PLUS = $giftbuffpre_PLUS + 20
					if $randombuff_PLUS > $giftbuffpre_PLUS
						if $randombuff_PLUS <= $giftbuff_PLUS
							AddPlayerInfo($playerid,"item",44158,1)
							#name = GetPlayerInfo(-1,"name")
							BC("screen","servergroup",-1,"The hero ",#name," used a Wish Scepter, and was lucky enough to receive a LV10 Odin's Soul Jade!")
							BC("chat","servergroup",-1,"The hero ",#name," used a Wish Scepter, and was lucky enough to receive a LV10 Odin's Soul Jade!")
						endif
					endif
					$giftbuffpre_PLUS = $giftbuff_PLUS
					//????????	59823	0.1
					$giftbuff_PLUS = $giftbuffpre_PLUS + 1
					if $randombuff_PLUS > $giftbuffpre_PLUS
						if $randombuff_PLUS <= $giftbuff_PLUS
							AddPlayerInfo($playerid,"item",59823,1)
							#name = GetPlayerInfo(-1,"name")
							BC("screen","servergroup",-1,"The hero ",#name," used a Wish Scepter, and was lucky enough to receive a White Tiger Might!")
							BC("chat","servergroup",-1,"The hero ",#name," used a Wish Scepter, and was lucky enough to receive a White Tiger Might!")
						endif
					endif
					$giftbuffpre_PLUS = $giftbuff_PLUS
					//????????	59805	0.1
					$giftbuff_PLUS = $giftbuffpre_PLUS + 1
					if $randombuff_PLUS > $giftbuffpre_PLUS
						if $randombuff_PLUS <= $giftbuff_PLUS
							AddPlayerInfo($playerid,"item",59805,1)
							#name = GetPlayerInfo(-1,"name")
							BC("screen","servergroup",-1,"The hero ",#name," used a Wish Scepter, and was lucky enough to receive an Emerald Dragon Soul!")
							BC("chat","servergroup",-1,"The hero ",#name," used a Wish Scepter, and was lucky enough to receive an Emerald Dragon Soul!")
						endif
					endif
					$giftbuffpre_PLUS = $giftbuff_PLUS
					//????????	59833	0.1
					$giftbuff_PLUS = $giftbuffpre_PLUS + 1
					if $randombuff_PLUS > $giftbuffpre_PLUS
						if $randombuff_PLUS <= $giftbuff_PLUS
							AddPlayerInfo($playerid,"item",59833,1)
							#name = GetPlayerInfo(-1,"name")
							BC("screen","servergroup",-1,"The hero ",#name," used a Wish Scepter, and was lucky enough to receive an Obsidian Turtle Soul!")
							BC("chat","servergroup",-1,"The hero ",#name," used a Wish Scepter, and was lucky enough to receive an Obsidian Turtle Soul!")
						endif
					endif
					$giftbuffpre_PLUS = $giftbuff_PLUS
					//????????	59783	0.1
					$giftbuff_PLUS = $giftbuffpre_PLUS + 1
					if $randombuff_PLUS > $giftbuffpre_PLUS
						if $randombuff_PLUS <= $giftbuff_PLUS
							AddPlayerInfo($playerid,"item",59783,1)
							#name = GetPlayerInfo(-1,"name")
							BC("screen","servergroup",-1,"The hero ",#name," used a Wish Scepter, and was lucky enough to receive a Scarlet Phoenix Heart!")
							BC("chat","servergroup",-1,"The hero ",#name," used a Wish Scepter, and was lucky enough to receive a Scarlet Phoenix Heart!")
						endif
					endif
					$giftbuffpre_PLUS = $giftbuff_PLUS
					//???????????	62567	0.2
					$giftbuff_PLUS = $giftbuffpre_PLUS + 2
					if $randombuff_PLUS > $giftbuffpre_PLUS
						if $randombuff_PLUS <= $giftbuff_PLUS
							AddPlayerInfo($playerid,"item",62567,1)
							#name = GetPlayerInfo(-1,"name")
							BC("screen","servergroup",-1,"The hero ",#name," used a Wish Scepter, and was lucky enough to receive Fierce Athena Egg!")
							BC("chat","servergroup",-1,"The hero ",#name," used a Wish Scepter, and was lucky enough to receive Fierce Athena Egg!")
						endif
					endif
					$giftbuffpre_PLUS = $giftbuff_PLUS
					//???????????	62594	0.2
					$giftbuff_PLUS = $giftbuffpre_PLUS + 2
					if $randombuff_PLUS > $giftbuffpre_PLUS
						if $randombuff_PLUS <= $giftbuff_PLUS
							AddPlayerInfo($playerid,"item",62594,1)
							#name = GetPlayerInfo(-1,"name")
							BC("screen","servergroup",-1,"The hero ",#name," used a Wish Scepter, and was lucky enough to receive a Mystic Athena Egg!")
							BC("chat","servergroup",-1,"The hero ",#name," used a Wish Scepter, and was lucky enough to receive a Mystic Athena Egg!")
						endif
					endif
					$giftbuffpre_PLUS = $giftbuff_PLUS
				endif
			endif
			$giftbuffpre = $giftbuff
//---------------------------------????
			
//?????	63422	800 3
			$giftbuff = $giftbuffpre + 800
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",63422,3)
				endif
			endif
			$giftbuffpre = $giftbuff
//??????	4994	600 1
			$giftbuff = $giftbuffpre + 600
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",4994,1)
				endif
			endif
			$giftbuffpre = $giftbuff


//			BC("screen","player",-1,"randombuff = ",$randombuff," | giftbuff = ",$giftbuff)
//			BC("screen","player",-1,"randombuff_PLUS = ",$randombuff_PLUS," | giftbuff_PLUS = ",$giftbuff_PLUS)

			//tttttttttttttttttttttttttttttttttttttttttttttttt----------??????
		endif
		
	}
