    //****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2008/09/09
	//		Author���
	//		TaskName��HD-aodingdeenci-32011.s
	//		TaskID���¶��Ķ���-������-32011�ű���
	//
	//****************************************
	function OnDead(){
	
		//		����		��Ǯ
		//1��30��		1000		360
		//31��45��		4250		1278
		//46��60��		7400		1960
		//61��75��		11450		2656
		//76��90��		16400		3300
		//���
		//�ͳ��-START
			$TJ_join_number = GetGlobalVar(940)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(940 , $TJ_join_number)
		//�ͳ��-END
		$base_exp = 1000
		$base_money = 360
		//�����ҵȼ�>����ȼ� ��ô���鲻��				
		//���� Exp=����* 30/������ȼ�-��ҵȼ�+30��				

		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		
		
		if $teamplayer1_id != -1
			
			$level = GetPlayerInfo($teamplayer1_id,"level")
			
			if $level < 30
				$a = 30 - $level
				$b = $a + 30
				$c = $base_exp * 30
				$d = $base_money * 30
				$add_exp = $c / $b
				$add_money = $d / $b
			else
				$add_exp = $base_exp
				$add_money = $base_money
			endif
			$len = GetPlayerDistance( -1 , $teamplayer1_id )
			//�ھ��鷶Χ�ڵĲ��ܻ�ý���
			if $len <= 30
				AddPlayerInfo( $teamplayer1_id, "exp", $add_exp)
				AddPlayerInfo( $teamplayer1_id, "money", $add_money)
				DropMonsterItems($teamplayer1_id, 60001 )
				//������
				//����Ǯ
				//���õ����
			endif
		endif
		if $teamplayer2_id != -1
			$level = GetPlayerInfo($teamplayer2_id,"level")
			if $level < 30
				$a = 30 - $level
				$b = $a + 30
				$c = $base_exp * 30
				$d = $base_money * 30
				$add_exp = $c / $b
				$add_money = $d / $b
			else
				$add_exp = $base_exp
				$add_money = $base_money
			endif
			$len = GetPlayerDistance( -1 , $teamplayer2_id )
			if $len <= 30
				AddPlayerInfo( $teamplayer2_id, "exp", $add_exp)
				AddPlayerInfo( $teamplayer2_id, "money", $add_money)
				DropMonsterItems($teamplayer2_id, 60001 )
				//������
				//����Ǯ
				//���õ����
			endif
		endif
		if $teamplayer3_id != -1
			$level = GetPlayerInfo($teamplayer3_id,"level")
			if $level < 30
				$a = 30 - $level
				$b = $a + 30
				$c = $base_exp * 30
				$d = $base_money * 30
				$add_exp = $c / $b
				$add_money = $d / $b
			else
				$add_exp = $base_exp
				$add_money = $base_money
			endif
			$len = GetPlayerDistance( -1 , $teamplayer3_id )
			if $len <= 30
				AddPlayerInfo( $teamplayer3_id, "exp", $add_exp)
				AddPlayerInfo( $teamplayer3_id, "money", $add_money)
				DropMonsterItems($teamplayer3_id, 60001 )
				//������
				//����Ǯ
				//���õ����
			endif
		endif
		if $teamplayer4_id != -1
			$level = GetPlayerInfo($teamplayer4_id,"level")
			if $level < 30
				$a = 30 - $level
				$b = $a + 30
				$c = $base_exp * 30
				$d = $base_money * 30
				$add_exp = $c / $b
				$add_money = $d / $b
			else
				$add_exp = $base_exp
				$add_money = $base_money
			endif
			$len = GetPlayerDistance( -1 , $teamplayer4_id )
			if $len <= 30
				AddPlayerInfo( $teamplayer4_id, "exp", $add_exp)
				AddPlayerInfo( $teamplayer4_id, "money", $add_money)
				DropMonsterItems($teamplayer4_id, 60001 )
				//������
				//����Ǯ
				//���õ����
			endif
		endif
		if $teamplayer5_id != -1
			$level = GetPlayerInfo($teamplayer5_id,"level")
			if $level < 30
				$a = 30 - $level
				$b = $a + 30
				$c = $base_exp * 30
				$d = $base_money * 30
				$add_exp = $c / $b
				$add_money = $d / $b
			else
				$add_exp = $base_exp
				$add_money = $base_money
			endif
			$len = GetPlayerDistance( -1 , $teamplayer5_id )
			if $len <= 30
				AddPlayerInfo( $teamplayer5_id, "exp", $add_exp)
				AddPlayerInfo( $teamplayer5_id, "money", $add_money)
				DropMonsterItems($teamplayer5_id, 60001 )
				//������
				//����Ǯ
				//���õ����
			endif
		endif
		if $teamplayer6_id != -1
			$level = GetPlayerInfo($teamplayer6_id,"level")
			if $level < 30
				$a = 30 - $level
				$b = $a + 30
				$c = $base_exp * 30
				$d = $base_money * 30
				$add_exp = $c / $b
				$add_money = $d / $b
			else
				$add_exp = $base_exp
				$add_money = $base_money
			endif
			$len = GetPlayerDistance( -1 , $teamplayer6_id )
			if $len <= 30
				AddPlayerInfo( $teamplayer6_id, "exp", $add_exp)
				AddPlayerInfo( $teamplayer6_id, "money", $add_money)
				DropMonsterItems($teamplayer6_id, 60001 )
				//������
				//����Ǯ
				//���õ����
			endif
		endif
	}