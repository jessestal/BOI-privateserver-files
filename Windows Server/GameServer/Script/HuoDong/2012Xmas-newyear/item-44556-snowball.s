 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName:  
 //****************************  
	function OnUseItem(){ 
		
		$servar286 = GetServerVar(286)
		if $servar286 == 0
			BC("dialogbox","player",-1,"Please use this item during the event period.")
			return
		endif
		$mapid = GetPlayerInfo(-1,"mapid")
		if $mapid != 21
			BC("dialogbox","player",-1,"Please use this item around the Snow Bear in the Nordic Lands.")
			return
		endif
		if $servar286 == 1
			BC("screen","player",-1,"Unfortunately, you came late. The fierce Snow Bear has been killed already.")
			return
		endif
		
		$sysposx = $servar286 / 1000
		$sysposy = $servar286 - $sysposx
		$posx = GetPlayerInfo(-1,"mapposx")
		$posy = GetPlayerInfo(-1,"mapposy")
		$subx = 0
		$suby = 0
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
		$len = $subx * $suby
		if $len > 100
			BC("screen","player",-1,"You are too far away from the Snow Bear!")
			return
		endif
		
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("screen","player",-1,"Insufficient bag slots!")
			return
		endif
		
		$res = SubPlayerInfo(-1,"item",44556,1)
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
