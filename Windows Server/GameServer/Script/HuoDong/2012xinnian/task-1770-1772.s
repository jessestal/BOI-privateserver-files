		//****************************************
		//
		//		Copyright��PERFECT WORLD
		//		Modified��2011-12
		//		Author��������
		//		TaskName��Ԫ������
		//		TaskID��
		//
		//****************************************

	function OnTaskDone(){

//44145	ħ����
//39 64414	��֮��ʵLv4
//52 59312	����֮�飨�󶨣�
//44144	������
//76 63691	�¶�����֮��*5
//84 44093	����˫������ʯ��30��
//44143	�ƽ�
//96 1			ǿ��ˮ��
//100 6390	Ů��֮��

		$playerid = GetPlayerID()
		$randombuff = RandomNumber(0,99)
//BC("chat","player",-1,"randombuff = ",$randombuff)
		if $randombuff < 39
			AddPlayerInfo($playerid,"item",44145,1)
		else
			if $randombuff < 52
				AddPlayerInfo($playerid,"item",44145,3)
			else
				if $randombuff < 76
					AddPlayerInfo($playerid,"item",44144,1)
				else
					if $randombuff < 84
						AddPlayerInfo($playerid,"item",44144,3)
					else
						if $randombuff < 96
							AddPlayerInfo($playerid,"item",44143,1)
						else
							AddPlayerInfo($playerid,"item",44143,3)
						endif
					endif
				endif
			endif
		endif


//(lvl+35)^3*2
		$lvl = GetPlayerInfo($playerid,"level")
		$exp0 = $lvl + 35
		$exp1 = $exp0 * $exp0
		$exp1 = $exp1 * $exp0
		$exp1 = $exp1 * 2
//(lvl+60)^2*35
		$lvlf = GetFieldLevel($playerid)
		$exp2 = $lvlf + 60
		$exp2 = $exp2 * $exp2
		$exp2 = $exp2 * 35
		AddPlayerInfo($playerid,"exp",$exp1)
		if $lvlf > 0
			AddFieldExp($playerid,$exp2)
		endif

	}

	function OnTaskAccept(){

		$playerid = GetPlayerID()

	}