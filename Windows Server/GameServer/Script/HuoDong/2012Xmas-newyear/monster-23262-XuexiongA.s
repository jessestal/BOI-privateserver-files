 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName:  
 //****************************  
 
	function OnDead(){ 
		
		#name = GetPlayerInfo(-1,"name")
		BC("screen","servergroup",-1,"Player ",#name," has defeated the Snow Bear! Congratulations!")
		BC("chat","servergroup",-1,"Player ",#name," has defeated the Snow Bear! Congratulations!")
		SendMail(-1,"From: Snow Bear","What a fun day! Thank you and your friends! We'll see again soon!",0,54278)
//54278	????-????(?)

	} 