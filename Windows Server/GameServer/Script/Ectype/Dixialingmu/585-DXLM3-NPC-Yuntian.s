	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479NPC??
	//		TaskID:DXLM2-NPC-Yuntian-585.s
	//
	//****************************************



	
	function OnRequest(){		

	//???? ??id 479,????40--0?1? ?? ????44058 var3-??10?? ?????? 28
	$ectype_id = GetEctypeID(-1, 479)
	$is_got = GetEctypeVar(-1, 40)
	$is_44058	= GetEctypeVar(-1, 3)
	$count = GetEctypeVar(-1, 28)
	
	//???????,????0
	if $is_44058 == 10
		DisableNpcOption(0)
	endif

	//??????????,????1	??
	if $is_got == 1
		DisableNpcOption(1)
	endif
	
	if $count == 72
		DisableNpcOption(1)
	endif 

		
}

	function OnOption0(){

	//???? ??ID 479,??9???????13--?????,????0???????,????id44058var3-??10??
	$ectype_id = GetEctypeID(-1, 479)
	$is_open = GetEctypeVar(-1, 13)
	$is_44058 = GetEctypeVar(-1, 3)
	
	if $is_44058 == 10
		BC( "screen", "player", -1, "Pledge your oath to fulfill the imperial creed.")
		return
	endif

	if $is_open > 0
		BC( "screen", "player", -1, "Pledge your oath to fulfill the imperial creed.")
		return
	endif	

	//????NPC??9?	
	AddNPC(598 ,$ectype_id )
	AddNPC(599 ,$ectype_id )
	AddNPC(600 ,$ectype_id )
	AddNPC(601 ,$ectype_id )
	AddNPC(602 ,$ectype_id )
	AddNPC(603 ,$ectype_id )
	AddNPC(604 ,$ectype_id )
	AddNPC(605 ,$ectype_id )
	AddNPC(606 ,$ectype_id )			

	BC( "screen", "map", $ectype_id, "Pledge your oath to fulfill the imperial creed.")
	
}

	function OnOption1(){
	
	//???? ??id 479 ???? 14,???? 53 ???? 40 ??ID ?????? 28
	$ectype_id = GetEctypeID(-1, 479)
	$is_open = GetEctypeVar(-1, 14)
	$is_call = GetEctypeVar(-1, 53)
	$is_done = GetEctypeVar(-1, 40)
	$count = GetEctypeVar(-1, 28)
	$mst = 51778
	
	if $is_open != 1
		BC( "dialogbox", "player", -1, "It is not yet the time to prove your worth.")
		return
	endif

	if $count >= 72
		BC( "dialogbox", "player", -1, "Thanks for getting back my ancestor's soul!")
		return
	endif	

	if $is_done == 1
		BC( "dialogbox", "player", -1, "Thanks for getting back my ancestor's soul!")
		return
	endif

	if $is_call == 1
		BC( "dialogbox", "player", -1, "Destroy these wraiths to prove your ability and worth to the empire.")
		return
	endif 
	

	
	AddMonsterByFloat(51778, 1, $ectype_id, 288, 180, 0)
	AddMonsterByFloat(51778, 1, $ectype_id, 290, 180, 0)
	AddMonsterByFloat(51778, 1, $ectype_id, 292, 180, 0)
	AddMonsterByFloat(51778, 1, $ectype_id, 296, 180, 0)
	AddMonsterByFloat(51778, 1, $ectype_id, 288, 184, 0)
	AddMonsterByFloat(51778, 1, $ectype_id, 290, 184, 0)
	AddMonsterByFloat(51778, 1, $ectype_id, 292, 184, 0)
	AddMonsterByFloat(51778, 1, $ectype_id, 294, 184, 0)
	AddMonsterByFloat(51778, 1, $ectype_id, 289, 188, 0)
	AddMonsterByFloat(51778, 1, $ectype_id, 291, 188, 0)
	AddMonsterByFloat(51778, 1, $ectype_id, 293, 188, 0)
	AddMonsterByFloat(51778, 1, $ectype_id, 295, 188, 0)
	AddMonsterByFloat(51778, 1, $ectype_id, 297, 192, 0)
	AddMonsterByFloat(51778, 1, $ectype_id, 297, 192, 0)
	AddMonsterByFloat(51778, 1, $ectype_id, 297, 192, 0)
	AddMonsterByFloat(51778, 1, $ectype_id, 297, 192, 0)
	AddMonsterByFloat(51778, 1, $ectype_id, 299, 193, 0)
	AddMonsterByFloat(51778, 1, $ectype_id, 296, 193, 0)



	
	SetEctypeVar(-1,53, 1)
	

}



	function OnOption2(){

	//???? ??id 479,????14--0?1?,??????20--0?1?,?????21--0?1?,????40--0?1?,????44049
	$ectype_id = GetEctypeID(-1, 479)
	$is_done = GetEctypeVar(-1, 14)
	$is_done1 = GetEctypeVar(-1, 20)
	$is_done2 = GetEctypeVar(-1, 21)
	$is_got = GetEctypeVar(-1, 40)
	$null = GetPlayerInfo(-1, "nullitem", 0)
	$item = GetPlayerInfo(-1, "item", 44049)

	//????????,????????	
	if $is_done != 1
		BC( "screen", "map", $ectype_id, "You have yet to fulfill the imperial creed.")
		return
	endif

	//?????????,???????????
	if $is_done1 != 1
		BC( "screen", "map", $ectype_id, "You have yet to fulfill the imperial creed.")	
		return
	endif

	//?????????,?????????	
	if $is_done2 != 1
		BC( "screen", "map", $ectype_id, "You have yet to fulfill the imperial creed.")
		return
	endif
	
	//??????
	if $null < 1
		BC( "screen", "player", -1, "Your bag is full. No space for the Tiger Talisman")
		return
	endif
	
	//??????
	if $item >= 1
		BC( "screen", "player", -1, "Here is the Tiger Talisman. Thanks for your help!")
		return
	endif
	
	$revaluet = AddPlayerInfo(-1, "item", 44049, 1)
	if $revaluet == 0
		BC( "screen", "player", -1, "The Tiger Talisman can control thousands of armies. All the world will be under your control.")
		BC( "screen", "player", -1, "Take the Tiger Talisman and find the Pangaea Sword. Only it can bring us peace...")
		SetEctypeVar(-1, 40, 1)
		PlayEffect(0,"common\story\seelbreak1\fire\tx_seelbreak1_fire.ini")
	endif
	
	
}