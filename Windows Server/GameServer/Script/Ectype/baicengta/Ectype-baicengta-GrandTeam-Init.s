	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/11/11
	//		Author��������
	//		TaskName��Ectype-baicengta-GrandTeam-Init.s
	//		TaskID��
	//
	//****************************************
	
	// ��¼��������ұ�����3327
	// ��¼ɱС�������ĸ���������1
	// ��¼ɱ��������ĸ���������2
	// �ж�С���Ƿ�ȫ�������ı�����3(ɱ��Ϊ1������Ϊ0)
	// �жϴ���Ƿ�ȫ�������ı�����4(ɱ��Ϊ1������Ϊ0)
	// ��¼С�������ı�����5
	// ��¼ͷ�������ı�����6
	// �ھ�С�ӵ������м�����11
	// �ھ�С�ӵ�������������Щ��12-32
	// ��ʱ�䣺33���룩
	// �������������34
	// �Ҵ�������������35
	// �����ػ��Ƿ񼤻36
	// ���Ǽ�����37
	// �������Ӽ�¼���˺�����110
	
	function OnCreate(){
		
	}
	
	function InitTimer(){
		
		$ectype_ID = GetCurEctypeID()
		$result = SetEctypeTimer( 1 , 1 , "EctypeTime1" )
		StartEctypeTimer ($ectype_ID,1)
		
	}
			
	function EctypeTime1(){
		
		$ectype_ID = GetCurEctypeID()
		$SpNum = 0
		$Spmin = 0
		$Spmax = 0
		$MonNum = 0
		$kuangbaotime = 0
		$Xo = 0
		$Yo = 0
		$Xi = 0
		$Yi = 0
		$Ri = 0
		$Monid = $ectype_ID - 15101
		$Monid = $Monid / 200
		$Monid = $Monid + 55531
		//10������
		if $ectype_ID > 15100
			if $ectype_ID <= 16100
				//������������
				$SpNum = 1
				//���Գ�ȡ��Χ
				$Spmin = 11
				$Spmax = 20
				//���ù�������
				$MonNum = 3
				//���ÿ�ʱ��
				$kuangbaotime = 150
				//NPC��ʼXY
				$Xo = 72
				$Yo = 70
				//С�ӹ���id
				$Monid = $Monid - 0
				//������ʼXY
				$Xi = 72
				$Yi = 70
				$Ri = 1
			endif
		endif
		//20������
		if $ectype_ID > 16100
			if $ectype_ID <= 17100
				//������������
				$SpNum = 1
				//���Գ�ȡ��Χ
				$Spmin = 11
				$Spmax = 20
				//���ù�������
				$MonNum = 3
				//���ÿ�ʱ��
				$kuangbaotime = 150
				//NPC��ʼXY
				$Xo = 152
				$Yo = 193
				//С�ӹ���id
				$Monid = $Monid - 1
				//������ʼXY
				$Xi = 152
				$Yi = 193
				$Ri = 1
			endif
		endif
		//30������
		if $ectype_ID > 17100
			if $ectype_ID <= 18100
				//������������
				$SpNum = 2
				//���Գ�ȡ��Χ
				$Spmin = 10
				$Spmax = 28
				//���ù�������
				$MonNum = 3
				//���ÿ�ʱ��
				$kuangbaotime = 150
				//NPC��ʼXY
				$Xo = 154
				$Yo = 151
				//С�ӹ���id
				$Monid = $Monid - 2
				//������ʼXY
				$Xi = 154
				$Yi = 151
				$Ri = 1
			endif
		endif
		//40������
		if $ectype_ID > 18100
			if $ectype_ID <= 19100
				//������������
				$SpNum = 3
				//���Գ�ȡ��Χ
				$Spmin = 10
				$Spmax = 29
				//���ù�������
				$MonNum = 3
				//���ÿ�ʱ��
				$kuangbaotime = 150
				//NPC��ʼXY
				$Xo = 69
				$Yo = 70
				//С�ӹ���id
				$Monid = $Monid - 3
				//������ʼXY
				$Xi = 69
				$Yi = 70
				$Ri = 1
			endif
		endif
		//50������
		if $ectype_ID > 19100
			if $ectype_ID <= 20100
				//������������
				$SpNum = 2
				//���Գ�ȡ��Χ
				$Spmin = 10
				$Spmax = 29
				//���ù�������
				$MonNum = 4
				//���ÿ�ʱ��
				$kuangbaotime = 150
				//NPC��ʼXY
				$Xo = 152
				$Yo = 151
				//С�ӹ���id
				$Monid = $Monid - 4
				//������ʼXY
				$Xi = 152
				$Yi = 151
				$Ri = 1
			endif
		endif
		//60������
		if $ectype_ID > 20100
			if $ectype_ID <= 21100
				//������������
				$SpNum = 3
				//���Գ�ȡ��Χ
				$Spmin = 10
				$Spmax = 30
				//���ù�������
				$MonNum = 4
				//���ÿ�ʱ��
				$kuangbaotime = 200
				//NPC��ʼXY
				$Xo = 154
				$Yo = 154
				//С�ӹ���id
				$Monid = $Monid - 5
				//������ʼXY
				$Xi = 154
				$Yi = 154
				$Ri = 1
			endif
		endif
		//70������
		if $ectype_ID > 21100
			if $ectype_ID <= 22100
				//������������
				$SpNum = 4
				//���Գ�ȡ��Χ
				$Spmin = 10
				$Spmax = 30
				//���ù�������
				$MonNum = 4
				//���ÿ�ʱ��
				$kuangbaotime = 250
				//NPC��ʼXY
				$Xo = 147
				$Yo = 136
				//С�ӹ���id
				$Monid = $Monid - 6
				//������ʼXY
				$Xi = 174
				$Yi = 136
				$Ri = 1
			endif
		endif
		//80������
		if $ectype_ID > 22100
			if $ectype_ID <= 23100
				//������������
				$SpNum = 5
				//���Գ�ȡ��Χ
				$Spmin = 10
				$Spmax = 31
				//���ù�������
				$MonNum = 4
				//���ÿ�ʱ��
				$kuangbaotime = 300
				//NPC��ʼXY
				$Xo = 147
				$Yo = 136
				//С�ӹ���id
				$Monid = $Monid - 7
				//������ʼXY
				$Xi = 174
				$Yi = 136
				$Ri = 1
			endif
		endif
		//90������
		if $ectype_ID > 23100
			if $ectype_ID <= 24100
				//������������
				$SpNum = 4
				//���Գ�ȡ��Χ
				$Spmin = 10
				$Spmax = 31
				//���ù�������
				$MonNum = 5
				//���ÿ�ʱ��
				$kuangbaotime = 300
				//NPC��ʼXY
				$Xo = 255
				$Yo = 155
				//С�ӹ���id
				$Monid = $Monid - 8
				//������ʼXY
				$Xi = 197
				$Yi = 155
				$Ri = 1
			endif
		endif
		//100������
		if $ectype_ID > 24100
			if $ectype_ID <= 25100
				//������������
				$SpNum = 5
				//���Գ�ȡ��Χ
				$Spmin = 10
				$Spmax = 31
				//���ù�������
				$MonNum = 5
				//���ÿ�ʱ��
				$kuangbaotime = 300
				//NPC��ʼXY
				$Xo =	249
				$Yo = 156
				//С�ӹ���id
				$Monid = $Monid - 9
				//������ʼXY
				$Xi = 197
				$Yi = 155
				$Ri = 1
			endif
		endif
		
		$league = 0
		SetEctypeVar($ectype_ID,11,$SpNum)
		$special = 0
		$i = 0
		while $i < $SpNum
			$w = 0
			while $w <= $i
				if $w == 0
					$special = RandomNumber( $Spmin , $Spmax )
				endif
				$SpID = 12 + $w
				$SpList = GetEctypeVar($ectype_ID,$SpID)
				if $special == $SpList
					$w = 0
				else
					$w = $w + 1
				endif
			endwhile
			$SpSID = 12 + $i
			SetEctypeVar($ectype_ID,$SpSID,$special)
			if $special == 20
				$league = 1
			endif
			$i = $i + 1
		endwhile
		
		//�ٻ�NPC
		AddNpcByPos( 2467, $ectype_ID, $Xo, $Yo, 180000, 0 )
		
		if $league == 1
			$MonNum = $MonNum + 1
		endif
		AddMonsterByFloat( $Monid, $MonNum, $ectype_ID, $Xi, $Yi, $Ri)
		
		SetEctypeVar($ectype_ID,33,120)
		SetEctypeVar($ectype_ID,34,$MonNum)
		
		//����С�ֺ�ͷ������
		SetEctypeVar(-1,5,0)
		SetEctypeVar(-1,6,$MonNum)
		
	}