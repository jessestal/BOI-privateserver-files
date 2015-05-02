	
	
	
	
	//??????
//6362	1??	
//6362	2????	
//6372	1??	
//6372	2????	 
	
	function EnterArea(){
		
		AddStatus(-1,6362,1)
		AddStatus(-1,6372,1)
//		BC("chat","player",-1,"GUID:03846000000")
		
	}
	
	function LeaveArea(){
	
		AddStatus(-1,6362,2)
		AddStatus(-1,6372,2)
//		BC("chat","player",-1,"GUID:03846000001")
	
	}