	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��
	//		Author��
	//		TaskName��
	//		TaskID��
	//
	//****************************************
	
	
	
	function OnTaskDone(){
		
		//��������������Ƿ��Ѵﵽ���ޣ�10��
		$popularity = GetPlayerInfo( -1 , "guildmemberpopularity" )
		if $popularity < 10
			if $popularity == 9
				AddPlayerInfo( -1 , "guildmemberpopularity" , 1 )
				AddPlayerInfo( -1 , "guildpopularity" , 1 )
			else					
				AddPlayerInfo( -1 , "guildmemberpopularity" , 2 )
				AddPlayerInfo( -1 , "guildpopularity" , 2 )
			endif
		endif
		
		
		//���Ӿ���
		$level = GetPlayerInfo( -1 , "level" )
		if $level <= 44
			$exp = $level * $level
			$exp = $exp * 80
			
			//Ʒ��
			$exp = $exp * 3
			$exp = $exp / 2
			
			AddPlayerInfo( -1 , "exp" , $exp )
			
		else
			//����44��
			//�ȼ�*�ȼ�*80*(�ȼ�*0.04 - 0.76)
			$exp = $level * $level
			$exp = $exp * 80
			$a = $level * 4
			$a = $a - 76
			$exp = $exp * $a
			$exp = $exp * 3
			$exp = $exp / 200
			
			AddPlayerInfo( -1 , "exp" , $exp )
			
		endif
		
		
		
		//���ӹ����ʽ�
		//AddPlayerInfo( -1 , "guildmoney" , 22500 )
		
		
		//���ӹ��ᷱ�ٶ�
		AddPlayerInfo( -1 , "guildprosperity" , 750 )
		
		
		//���Ӹ��˹���
		//��ĩ˫��
		$week = GetSystemTime( "week" )
		if $week == 0
			AddPlayerInfo( -1 , "guildoffer" , 40 )
		else
			if $week == 6
				AddPlayerInfo( -1 , "guildoffer" , 40 )
			else
				AddPlayerInfo( -1 , "guildoffer" , 20 )
			endif
		endif
		
		//�������ֵ
		//��׼���ֵ = ����ȼ�^2+0.6*����ȼ�+1000
		//������ֵ = ��׼���ֵ * 140

		$fieldlevel = GetFieldLevel(-1)
		$godexp = $fieldlevel * $fieldlevel
		$b = $fieldlevel * 6
		$b = $b / 10
		$godexp = $godexp + $b
		$godexp = $godexp + 1000
		$godexp = $godexp * 140
		$godexp = $godexp * 9
		$godexp = $godexp / 10
		
		if $fieldlevel > 0
			AddFieldExp( -1 , $godexp )
		endif
		
	}
