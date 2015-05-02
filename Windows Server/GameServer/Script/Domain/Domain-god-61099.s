	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/28
	//		Author:??
	//		TaskName:Domain-god-61099.s
	//		TaskID:???????
	//
	//****************************************
	

	function OnUseItem(){


	$result = SubPlayerInfo(-1 , "item" , 61099 , 1)
	$id = GetPlayerID()
	$guildid = GetPlayerInfo($id,"guildid")
	#name = GetPlayerInfo( -1 , "name")
	$random = RandomNumber(1,100)
	$bag = GetPlayerInfo( -1 , "nullitem" , 0)
	
	
	if $bag < 1 
		BC( "chat" , "player" , -1 , "Your bag is full. Cannot pray to the Oracle Light" )
		BC( "screen" , "player" , -1 , "Your bag is full. Cannot pray to the Oracle Light" )
		return
	endif
		
	
	if $result == 0
		if $random == 1 
			AddPlayerInfo( -1 , "item" , 59257 ,1)
			BC( "chat", "guild", $guildid , "(" , #name , ") When praying to the Oracle Light, you get blessed by Poseidon and receive Poseidon's Force." )
		endif
		
		if $random > 1
			if $random <= 90	
				AddPlayerInfo( -1 , "item" , 59256 ,1)
				BC( "chat", "guild", $guildid , "(" , #name , ") When praying to the Oracle Light, you receive a Castle Spirit" )
			endif
		endif
		
		if $random > 90		
			AddPlayerInfo( -1 , "item" , 59255 ,1)	
			BC( "chat", "guild", $guildid , "(" , #name , ") When praying to the Oracle Light, you receive a Glacier Soul" )
		endif
	endif	
				
	}																	