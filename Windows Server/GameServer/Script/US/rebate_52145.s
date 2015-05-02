//    卢鑫   北美    充值返利卡包

function OnUseItem(){


		//删除道具
		$del = SubPlayerInfo ( -1 , "item" , 52145, 1 )

		if  $del != 0
			return
		endif

		AddPlayerInfo( -1, "item", 63704, 10 )


	}
