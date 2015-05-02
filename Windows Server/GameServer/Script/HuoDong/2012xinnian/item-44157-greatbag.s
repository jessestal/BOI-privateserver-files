	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011-12-6
	//		Author:???
	//		TaskName:?-????-?
	//		TaskID:
	//
	//****************************************
	function OnUseItem(){

		$playerid = GetPlayerID()
		$level = GetPlayerInfo($playerid,"level")
		#name = GetPlayerInfo($playerid,"name")
		
		if $level < 60
			BC("screen","player",-1,"Must be at least LV60 to open.")
			return
		endif
		$nullitem = GetPlayerInfo($playerid,"nullitem",0)
		if $nullitem < 1
			BC("dialogbox","player",-1,"Insufficient bag slots!")
			return
		endif
		$subitem = SubPlayerInfo($playerid,"item",44157,1)
		if $subitem == 0
		else
			BC("dialogbox","player",-1,"Something strange happens.")
			return
		endif
		
//??????????		61	??2
//??????????		62	??4
		
		$randombuff = RandomNumber(1,10000)
		$giftbuffpre = 0
		$petdrop = GetGlobalVar(61)
		$ridedrop = GetGlobalVar(62)
		
//62553	???-??-???			1
		$giftbuff = $giftbuffpre + 1
		if $randombuff >= $giftbuffpre
			if $randombuff <= $giftbuff
				if $petdrop < 2
					AddPlayerInfo($playerid,"item",62553,1)
					$petdrop = $petdrop + 1
					SetGlobalVar(61,$petdrop)
					BC("screen","servergroup",-1,"The hero ",#name," opened the New Year's Beast pack and found a Flame Kirin Pet Egg. ")
					BC("chat","servergroup",-1,"The hero ",#name," opened the New Year's Beast pack and found a Flame Kirin Pet Egg. ")
				else
					AddPlayerInfo($playerid,"item",63709,1)
				endif
			endif
		endif
		$giftbuffpre = $giftbuff
//62108	????			3
		$giftbuff = $giftbuffpre + 3
		if $randombuff >= $giftbuffpre
			if $randombuff <= $giftbuff
				if $ridedrop < 4
					AddPlayerInfo($playerid,"item",62108,1)
					$ridedrop = $ridedrop + 1
					SetGlobalVar(62,$ridedrop)
					BC("screen","servergroup",-1,"The hero ",#name," opened the New Year's Beast pack and found a New Year's Beast Mount.")
					BC("chat","servergroup",-1,"The hero ",#name," opened the New Year's Beast pack and found a New Year's Beast Mount.")
				else
					AddPlayerInfo($playerid,"item",63709,1)
				endif
			endif
		endif
		$giftbuffpre = $giftbuff
//59840	?????			5
		$giftbuff = $giftbuffpre + 5
		if $randombuff >= $giftbuffpre
			if $randombuff <= $giftbuff
			AddPlayerInfo($playerid,"item",59840,1)
			endif
		endif
		$giftbuffpre = $giftbuff
//59839	?????			50
		$giftbuff = $giftbuffpre + 50
		if $randombuff >= $giftbuffpre
			if $randombuff <= $giftbuff
			AddPlayerInfo($playerid,"item",59839,1)
			endif
		endif
		$giftbuffpre = $giftbuff
//59795	?????????			450
		$giftbuff = $giftbuffpre + 450
		if $randombuff >= $giftbuffpre
			if $randombuff <= $giftbuff
			AddPlayerInfo($playerid,"item",59795,1)
			endif
		endif
		$giftbuffpre = $giftbuff
//36953	????(?)			750
		$giftbuff = $giftbuffpre + 750
		if $randombuff >= $giftbuffpre
			if $randombuff <= $giftbuff
			AddPlayerInfo($playerid,"item",36953,1)
			endif
		endif
		$giftbuffpre = $giftbuff
//36954	????(?)			750
		$giftbuff = $giftbuffpre + 750
		if $randombuff >= $giftbuffpre
			if $randombuff <= $giftbuff
			AddPlayerInfo($playerid,"item",36954,1)
			endif
		endif
		$giftbuffpre = $giftbuff
//59838	?????			900
		$giftbuff = $giftbuffpre + 900
		if $randombuff >= $giftbuffpre
			if $randombuff <= $giftbuff
			AddPlayerInfo($playerid,"item",59838,1)
			endif
		endif
		$giftbuffpre = $giftbuff
//44093	???????(30??)			1200
		$giftbuff = $giftbuffpre + 1200
		if $randombuff >= $giftbuffpre
			if $randombuff <= $giftbuff
			AddPlayerInfo($playerid,"item",44093,1)
			endif
		endif
		$giftbuffpre = $giftbuff
//44156	????			1500
		$giftbuff = $giftbuffpre + 1500
		if $randombuff >= $giftbuffpre
			if $randombuff <= $giftbuff
			AddPlayerInfo($playerid,"item",44156,1)
			endif
		endif
		$giftbuffpre = $giftbuff
//59312	????(??)			2000
		$giftbuff = $giftbuffpre + 2000
		if $randombuff >= $giftbuffpre
			if $randombuff <= $giftbuff
			AddPlayerInfo($playerid,"item",59312,1)
			endif
		endif
		$giftbuffpre = $giftbuff
//63709	?????			2391
		$giftbuff = $giftbuffpre + 2391
		if $randombuff >= $giftbuffpre
			if $randombuff <= $giftbuff
			AddPlayerInfo($playerid,"item",63709,1)
			endif
		endif
		$giftbuffpre = $giftbuff
		
	}