 //****************************  
 //  Copyright��PERFECT WORLD  
 //  Modified��2012  
 //  Author��������  
 //  TaskName�� ������һع����� 
 //****************************  
 
 
	function OnUseItem(){ 
		
		$playerid = GetPlayerID()
		$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count != 0
			return
		endif
		AddPlayerInfo(-1,"money",100)

	} 