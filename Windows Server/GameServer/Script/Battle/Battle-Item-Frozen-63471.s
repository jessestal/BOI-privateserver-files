function OnUseItem(){
   			
		$gid = GetPlayerInfo( -1 , "guildid" )
	  if $gid == 0
	  	BC( "dialogbox", "player", -1, "You have not joined any guild! Unable to use this item!")
	  	return
	  endif
	  
			//????
			
			$r = SubPlayerInfo( -1, "item", 63471, 1 )
			if $r != 0
				return
			endif
			
			//????
			$level = GetPlayerInfo( -1, "level" )
			
			//??????:(??*50)*(6+??/15*2)*??*(??/10+7)/100/20*50
			$a = $level * 50
			$b = $level / 15
			$c = $b * 2
			$d = $c + 6
			$e = $a * $d
			$f = $e * $level
			$g = $level / 10
			$h = $g + 7
			$i = $f * $h
			$j = $i / 2000
			$exp = $j * 50
			
			AddPlayerInfo( -1, "exp", $exp )
			AddPlayerInfo( -1, "money", 150000 )
			AddPlayerInfo( -1, "item", 63475, 1 )
		
}