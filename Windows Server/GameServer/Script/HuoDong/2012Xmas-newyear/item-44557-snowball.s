 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName:  
 //****************************  
	function OnUseItem(){ 
		
		$servar286 = GetServerVar(286)
		if $servar286 == 0
			BC("screen","player",-1,"Please use this item during the event period.")
			return
		endif
		$mapid = GetPlayerInfo(-1,"mapid")
		if $mapid != 475
			BC("screen","player",-1,"Please use this item around the Snow Bear in Atlantis.")
			return
		endif
		if $servar286 == 1
			BC("screen","player",-1,"Unfortunately, you came late. The fierce Snow Bear has been killed already.")
			return
		endif
		
		$posx = GetPlayerInfo(-1,"mapposx")
		$posy = GetPlayerInfo(-1,"mapposy")
		$servar286 = GetServerVar(286)
		$sysposx = $servar286 / 1000
		$subposx = $sysposx * 1000
		$sysposy = $servar286 - $subposx
		if $sysposx < $posx
			$subx = $posx - $sysposx
		else
			$subx = $posx - $sysposx
		endif
		if $sysposy < $posy
			$suby = $posy - $sysposy
		else
			$suby = $posy - $sysposy
		endif
		$subx *= $subx
		$suby *= $suby
		$len = $subx + $suby
//		BC("chat","player",-1," | sysposx= ",$sysposx," | sysposy= ",$sysposy)
//		BC("chat","player",-1," | servar286= ",$servar286," | posx= ",$posx," | posy= ",$posy)
//		BC("chat","player",-1," | subx= ",$subx," | suby= ",$suby," | len= ",$len)
		if $len > 121
			BC("screen","player",-1,"You are too far away from the Snow Bear!")
			return
		endif
		
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("screen","player",-1,"Insufficient bag slots!")
			return
		endif
		
		$res = SubPlayerInfo(-1,"item",44557,1)
		if $res == 0
//		44559	????
			AddPlayerInfo(-1,"item",44559,1)
			$servar287 = GetServerVar(287)
			$servar287 += 1
			$mapid = GetPlayerInfo(-1,"mapid")
			#name = GetPlayerInfo(-1,"name")
			BC("screen","map",$mapid,"Player ",#name," threw a Snowball and dealt great damage to the Snow Bear!")
		endif
		


	} 
