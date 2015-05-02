	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-10-16
	//		Author:???
	//		TaskName:?????NPC-????
	//		TaskID:NPC931.s
	//
	//****************************************
function OnRequest(){
	
	}
//?????888
	function OnOption0(){
	//??????
	$TaskVar = GetPlayerVar( -1, 254 )
	if $TaskVar >= 1
				BC( "dialogbox", "player", -1, "You've already obtained this reward!" )
				return
			endif

		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You bag is full. How could you receive my gifts?" )
			return
		endif
	
		AddPlayerInfo( -1, "item", 59557, 1 )
		SetPlayerVar( -1, 254, 1 )
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
	
		BC( "screen", "player", -1, "Happy Halloween! Try to find if there are any gifts senders in Atlantis!" )
		BC( "dialogbox", "player", -1, "Hey, listen. There are 8 gifts senders in Atlantis. If you haven't found them all, go and check in the Magic Academy!" )
		return
		endif
		if $TaskVar == 7
	
		BC( "screen", "player", -1, "Congratulations! You've found all the gifts senders in Atlantis! We all wish you a happy Halloween!!!" )
			PlayEffect(-1,"common\transmit\colorfulring\fire\colorfulring_fire.ini")
		return
		endif
	}