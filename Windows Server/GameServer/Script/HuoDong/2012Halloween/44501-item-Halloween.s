	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012-10-15
	//		Author���ܳ��`
	//		TaskName����ʥ�ڻitem-��ʥ���ǹ�
	//		TaskID��44501-item-Halloween.s
	//
	//****************************************
	
	
//********�򿪻�þ���***********************
function OnUseItem(){
	
		$result = SubPlayerInfo( -1, "item", 44501, 1 )
		//ɾ���ɹ��Ļ�
		
		if $result != 0
		  return
			
		endif
		//�Ӿ���
		$lv = GetPlayerInfo ( -1 , "level" )
		$lv2 = $lv * $lv
		$a = $lv2 * 10
		$b = $lv * 4
		$c = $b - 76
		$d = $a * $c
		$exp = $d / 100
    $Exp = $exp * 3 
	
		
		//�������ֵ
		//��׼���ֵ = ����ȼ�^2+0.6*����ȼ�+1000
		//������ֵ = ��׼���ֵ * 0.333
		$fieldlevel = GetFieldLevel(-1)
		$godexp = $fieldlevel * $fieldlevel
		$b = $fieldlevel * 6
		$b = $b / 10
		$godexp = $godexp + $b
		$godexp = $godexp + 1000
		$godexp = $godexp / 3
		$Godexp = $godexp * 3
	
		
				if $lv > 10
					AddPlayerInfo( -1 , "exp" , $Exp )
				else
					AddPlayerInfo( -1 , "exp" , 100 )
				endif
				
				if $fieldlevel > 0
					AddFieldExp( -1 , $Godexp )
				endif
				
      PlayEffect(-1,"common\Yanhua\tx_aixin\tx_aixin.ini")
      
				
	}
	
	