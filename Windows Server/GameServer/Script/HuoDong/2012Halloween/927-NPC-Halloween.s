	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-10-15
	//		Author:???
	//		TaskName:?????NPC-??????
	//		TaskID:NPC927.s
	//
	//****************************************
	function OnRequest(){
		//???????? ????
		$today_time = GetSystemTime( "yday" )
		if $today_time != 306
		DisableNpcOption(4)
		return
			endif
	}
	
//********??????***********************
function OnOption0(){
	
		//????
	$count = GetPlayerInfo( -1, "item", 44502)
		if $count < 1
			BC( "screen", "player", -1, "You do not have the Incomplete Pumpkin in your bag. You can obtain it by joining the Halloween Parade on Oct. 31st and Nov. 1st!" )
			return
		endif	
		//????
		 $TaskVar = GetPlayerVar( -1, 3354 )
	    if $TaskVar >= 2
				BC( "dialogbox", "player", -1, "You've exchanged this twice! Why not try other rewards?" )
				return
			endif
			
			$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 44502, 1 )
		//??????
		
		if $result != 0
		  return
			
		endif
		$TaskVar = $TaskVar + 1
		SetPlayerVar( -1, 3354 , $TaskVar )
		//???
		AddPlayerInfo( -1, "item", 44500, 1 )
		
		BC( "screen", "player", -1, "You've received a Halloween Gift Pack!" )
		
	}
	
	//********1????????44120***********************
	function OnOption1(){
	

		//????
	$count = GetPlayerInfo( -1, "item", 44502)
		if $count < 1
			BC( "screen", "player", -1, "You don't have enough Incomplete Pumpkins in your bag. You can obtain it by joining the Halloween Parade on Oct. 31st and Nov. 1st!" )
			return
		endif	
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
		
		$result = SubPlayerInfo( -1, "item", 44502, 1 )
		//??????
		
		if $result != 0
		  return
			
		endif
		AddPlayerInfo( -1, "item", 44120, 1 )
		
		BC( "screen", "player", -1, "You've received a Halloween Hairstyle!" )
	}
		//********10?????9***********************
	function OnOption2(){
	

		//????
	$count = GetPlayerInfo( -1, "item", 44502)
		if $count < 10
			BC( "screen", "player", -1, "You don't have 10 Incomplete Pumpkins in your bag. You can obtain more by joining the Halloween Parade on Oct. 31st and Nov. 1st!" )
			return
		endif	
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//????????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		
		$result = SubPlayerInfo( -1, "item", 44502, 10 )
		//??????
		
		if $result != 0
		  return
			
		endif
		AddPlayerInfo( -1, "item", 9, 1 )
		
		BC( "screen", "player", -1, "You've received a Major Fortify Crystal!" )
	}
		//********200???????***********************
	function OnOption3(){
	
		//????
	$count = GetPlayerInfo( -1, "item", 44502)
		if $count < 200
			BC( "screen", "player", -1, "You don't have 200 Incomplete Pumpkins in your bag. You can obtain more by joining the Halloween Parade on Oct. 31st and Nov. 1st!" )
			return
		endif	
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
		
		$result = SubPlayerInfo( -1, "item", 44502, 200 )
		//??????
		
		if $result != 0
		  return
			
		endif
		AddPlayerInfo( -1, "item", 36816, 1 )
		BC( "screen", "player", -1, "You've received a Back Fashion: Halloween Dragon's Wings!" )
	}
	//????????,??*2
	function OnOption4(){
	//??????
	$TaskVar = GetPlayerVar( -1, 262 )
	if $TaskVar >= 1
				BC( "dialogbox", "player", -1, "You've already obtained this reward!" )
				return
			endif

		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
			$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You bag is full. How could you receive my gifts?" )
			return
		endif
		if $bag_count1 < 1
			BC( "screen", "player", -1, "You material bag is full. How could you receive my gifts?" )
			return
		endif
	 $r = RandomNumber(1,3)

           	if $r == 1 
           		PlayEffect(-1,"common\transmit\colorfulring\fire\colorfulring_fire.ini")
           
           	endif
           	if $r == 2 
           		PlayEffect(-1,"common\Yanhua\tx_ptyanhua\tx_hhyanhua_03.ini")
           	
           	endif
           	if $r == 3 
           		PlayEffect(-1,"common\Yanhua\tx_ptyanhua\tx_hhyanhua_01.ini")
           
           	endif
		AddPlayerInfo( -1, "item", 9, 2 )
	  AddPlayerInfo( -1, "item", 44120, 1 )
		SetPlayerVar( -1, 262, 1 )
		$TaskVar1 = GetPlayerVar( -1, 251)
		$TaskVar2 = GetPlayerVar( -1, 252)
		$TaskVar3 = GetPlayerVar( -1, 253)
		$TaskVar4 = GetPlayerVar( -1, 254)
		$TaskVar5 = GetPlayerVar( -1, 255)
		$TaskVar6 = GetPlayerVar( -1, 256)
		$TaskVar7 = GetPlayerVar( -1, 257)
    $TaskVar = $TaskVar1 + $TaskVar2   
    $TaskVar = $TaskVar + $TaskVar3 
    $TaskVar = $TaskVar + $TaskVar4
    $TaskVar = $TaskVar + $TaskVar5
    $TaskVar = $TaskVar + $TaskVar6
    $TaskVar = $TaskVar + $TaskVar7
	 if $TaskVar < 7
	
		BC( "screen", "player", -1, "Happy Halloween! Many of my friends are sending gifts in Atlantis. Go and find them to get a gift!" )
		BC( "dialogbox", "player", -1, "One of my brothers likes to talk with the Stash Keeper. You may find him there!" )
		return
		endif
		if $TaskVar == 7
	
		BC( "screen", "player", -1, "Congratulations! You've found all the gifts senders in Atlantis! We all wish you a happy Halloween!!!" )
			PlayEffect(-1,"common\transmit\colorfulring\fire\colorfulring_fire.ini")
		return
		endif
	}