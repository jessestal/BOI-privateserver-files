//    ¬��   ����    ��ֵ��������

function OnUseItem(){


		//ɾ������
		$del = SubPlayerInfo ( -1 , "item" , 52147, 1 )

		if  $del != 0
			return
		endif

		AddPlayerInfo( -1, "item", 63704, 100 )


	}
