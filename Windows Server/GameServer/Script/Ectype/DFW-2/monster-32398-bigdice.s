 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName: ????? 
 //****************************  
 
function OnDead(){ 
	
	$ectype_id = GetCurEctypeID()
	$mposx = GetEctypeVar($ectype_id,23)
	$mposy = GetEctypeVar($ectype_id,24)
	$fposx = GetEctypeVar($ectype_id,21)
	$fposy = GetEctypeVar($ectype_id,22)
	
	$event = GetEctypeVar($ectype_id,6)
	if $event == 3
		$mposx = $fposx
		$mposy = $fposy
	endif
	
	$getvar = GetEctypeVar($ectype_id,6)
//	if $getvar >= 1
//		if $getvar <= 5
			call dice()
			$monsterID = 32400 + $dice
			AddMonsterByFloat($monsterID,1,$ectype_id,$mposx,$mposy,0)
			SetEctypeVar($ectype_id,12,$dice)
			StartEctypeTimer($ectype_id,3)
			BC("screen","map",$ectype_id,"The dice will determine your path.")
//		endif
//	endif

	if $event != 5
		$playerID = GetPlayerID()
		$dropitemD = 90254
		$Cid = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
				$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 9999
  				DropMonsterItems($teamplayer_id,$dropitemD)
//  				BC("chat","player",-1,"|dropitemD=",$dropitemD)
					//--------------------------------------
//					$expstage = GetEctypeVar($ectype_id,25)
//					SetEctypeVar($ectype_id,25,$stage)
//					$exptime = $stage - $expstage
					$exptime = $dice
					if $exptime > 0
						$level = GetEctypeVar($ectype_id,2)
						$fieldlevel = GetEctypeVar($ectype_id,3)
						call expclac()
						$randomexprate = RandomNumber(95,105)
			//		$expori:4000  $fexpori:2300
						$Expadd = $expori * $exptime
						$allexp = 40 * 80
						$Expadd *= $allexp
						$Expadd /= 45
						$Expadd *= 100
						$Expadd /= $randomexprate
						AddPlayerInfo($teamplayer_id,"exp",$Expadd)
						if $fieldlevel > 0
							$FExpadd = $fexpori * $exptime
							$allFexp = 23 * 80
							$FExpadd *= $allFexp
							$FExpadd /= 45
							$FExpadd *= 100
							$FExpadd /= $randomexprate
							AddFieldExp($teamplayer_id,$FExpadd)
						endif
					endif
					//--------------------------------------
  			endif
			endif
			$Cid = $Cid + 1
		endwhile
	endif


		
		
	
} 


	function expclac(){
		
		$level = GetEctypeVar($ectype_id,2)
		$fieldlevel = GetEctypeVar($ectype_id,3)

//(1*X*X		55*X		+0		)	*320		/1000
//(1*X*X		600*X		+0		)	*13		/1000
//(1*X*X		13*X		+0		)	*85		/1000
//(1*X*X		-15*X		+0		)	*110		/1000
		$levelvv = $level * $level
		$Xmod90 = $level / 90
		$Xmod100 = $level / 100
		$Xmod111 = $level / 111
		$expX1 = $level * 55
		$expX2 = $level * 600
		$expX3 = $level * 13
		$expX4 = $level * 15
		$expn1 = $levelvv + $expX1
		$expn2 = $levelvv + $expX2
		$expn3 = $levelvv + $expX3
		$expn4 = $levelvv - $expX4
		$expn1 *= 320
		$expn2 *= 13
		$expn3 *= 85
		$expn4 *= 110
		$expn1 /= 1000
		$expn2 /= 1000
		$expn3 /= 1000
		$expn4 /= 1000
		$expn2 *= $Xmod90
		$expn3 *= $Xmod100
		$expn4 *= $Xmod111
		$expori = $expn1
		$expori += $expn2
		$expori += $expn3
		$expori += $expn4
//		BC("chat","player",-1,"level=",$level," | expori=",$expori)
		
//X^2*23+X*950+40000
		$fieldlevelvv = $fieldlevel * $fieldlevel
		$fexpn1 = $fieldlevelvv * 23
		$fexpn2 = $fieldlevel * 950
		$fexpori = $fexpn1 + $fexpn2
		$fexpori += 40000
		$fexpori /= 100
//		BC("chat","player",-1,"fieldlevel=",$fieldlevel," | fexpori=",$fexpori)
		
		
		
	}
	
	
function dice(){
		
	
	$randombuff = RandomNumber(1,100)
	$giftbuffpre = 0
//1	15
	$giftbuff = $giftbuffpre + 15
	if $randombuff > $giftbuffpre
		if $randombuff <= $giftbuff
			$dice = 1
		endif
	endif
	$giftbuffpre = $giftbuff
//2	25
	$giftbuff = $giftbuffpre + 25
	if $randombuff > $giftbuffpre
		if $randombuff <= $giftbuff
			$dice = 2
		endif
	endif
	$giftbuffpre = $giftbuff
//3	25
	$giftbuff = $giftbuffpre + 25
	if $randombuff > $giftbuffpre
		if $randombuff <= $giftbuff
			$dice = 3
		endif
	endif
	$giftbuffpre = $giftbuff
//4	18
	$giftbuff = $giftbuffpre + 18
	if $randombuff > $giftbuffpre
		if $randombuff <= $giftbuff
			$dice = 4
		endif
	endif
	$giftbuffpre = $giftbuff
//5	12
	$giftbuff = $giftbuffpre + 12
	if $randombuff > $giftbuffpre
		if $randombuff <= $giftbuff
			$dice = 5
		endif
	endif
	$giftbuffpre = $giftbuff
//6	5
	$giftbuff = $giftbuffpre + 5
	if $randombuff > $giftbuffpre
		if $randombuff <= $giftbuff
			$dice = 6
		endif
	endif
	$giftbuffpre = $giftbuff
	
	$stage = GetEctypeVar($ectype_id,4)
	if $stage >= 38
		if $dice > 3
			$dice -= 3
		endif
	endif
	
	if $stage == 44
		if $dice == 3
			$dice -= 1
		endif
	endif
//	BC("chat","player",-1,"dice=",$dice,"giftbuff=",$giftbuff)
//	$dice = 3
		
	}
