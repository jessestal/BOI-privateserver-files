	//****************************************
	//		Copyright��PERFECT WORLD
	//		Modified��2012-12
	//		Author��������
	//		TaskID��
	//****************************************
	
	
	function EnterArea(){
		
		$indexW = 362
		while $indexW <= 366
			$serverid = GetServerVar($indexW)
			if $serverid == 0
				$playerid = GetPlayerID()
				SetServerVar($indexW,$playerid)
				$indexW = 999
			else
				$indexW += 1
			endif
		endwhile
		
	}
	
	function LeaveArea(){
	
	}