		//****************************************
		//
		//		Copyright：PERFECT WORLD
		//		Modified：2011-08-25
		//		Author：胡斌涛
		//		TaskName：单人陵墓系列
		//		TaskID：宝箱479

		//
		//****************************************

	function OnRequest(){
		

	}


	function OnOption0(){
		//开启宝箱

		$ectype_id = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		$dropid = 51825
		DropMonsterItems($playerid,$dropid)
		DeleteNPC(672,-1)
		SetEctypeVar($ectype_id,73,2)
//		AddNPC(684,-1)
		

	}



