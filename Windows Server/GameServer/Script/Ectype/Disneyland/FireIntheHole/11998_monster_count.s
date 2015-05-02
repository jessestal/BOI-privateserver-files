	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11
	//		Author:???(??,??,??)
	//		TaskName:?????????????
	//		TaskID:11998_monster_count.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 541

		$ectype_id = GetEctypeID(-1, 569)

		$count = GetEctypeVar(-1,3)
		$count = $count + 1
		SetEctypeVar($ectype_id,3,$count)
		
		if $count == 10
			StartEctypeTimer($ectype_id,3)
			BC("screen","map",$ectype_id,"The next batch of Sarcophagus will appear in 10 seconds.")
		endif
		
		if $count == 20
			StartEctypeTimer($ectype_id,3)
			BC("screen","map",$ectype_id,"The next batch of Sarcophagus will appear in 10 seconds.")
		endif

		if $count == 30
			StartEctypeTimer($ectype_id,3)
			BC("screen","map",$ectype_id,"The next batch of Sarcophagus will appear in 10 seconds.")
		endif
		
		if $count == 50
			StartEctypeTimer($ectype_id,3)
			BC("screen","map",$ectype_id,"The next batch of Sarcophagus will appear in 10 seconds.")
		endif				
		
		

		
	}